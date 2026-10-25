# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Logging.Variantcc4037f97c2e601e47a25e589d305920d51eefa559316d29e764b10c63b20b15

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e1b5147372004f009eae1a1b34dd396561dd8a4c` · SHA-256 `31b4f6608c595128594622860fdc49d760fec185e7f1fd82fda35aa9665edbe5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LogConfig.Variantc5ff19260d8ff95fb5c677cc6c5e91bd15853c4106e0d895cb7f4ae57416d692","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c5ff19260d8ff95fb5c677cc6c5e91bd15853c4106e0d895cb7f4ae57416d692","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.LogConfig.Variantc5ff19260d8ff95fb5c677cc6c5e91bd15853c4106e0d895cb7f4ae57416d692","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c5ff19260d8ff95fb5c677cc6c5e91bd15853c4106e0d895cb7f4ae57416d692","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Server/Logging.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.

Author: Marc Huisinga
-/
module

prelude
import Std.Time
public import Lean.Data.Lsp.InitShutdown


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LogConfig.Variantc5ff19260d8ff95fb5c677cc6c5e91bd15853c4106e0d895cb7f4ae57416d692

namespace Lean.Server.Logging

public structure LogConfig where
  isEnabled : Bool
  logFile : System.FilePath
  allowedMethods? : Option (Std.HashSet String)
  disallowedMethods? : Option (Std.HashSet String)

public def LogConfig.ofLspLogConfig (lspCfg? : Option Lsp.LogConfig) : IO LogConfig := do
  let time ← Std.Time.DateTime.now
  let time := time.format "yyyy-MM-dd-HH-mm-ss-SSSSXX"
  let logFileName := s!"LSP_{time}.log"
  let defaultLogFile : System.FilePath := System.FilePath.join "." logFileName
  let some lspCfg := lspCfg?
    | return {
      isEnabled := false
      logFile := defaultLogFile
      allowedMethods? := none
      disallowedMethods? := none
    }
  return {
    isEnabled := true
    logFile := lspCfg.logDir?.map (System.FilePath.join · logFileName) |>.getD defaultLogFile
    allowedMethods? := lspCfg.allowedMethods?
    disallowedMethods? := lspCfg.disallowedMethods?
  }

open Lean

public inductive MessageMethod where
  | request (method : String)
  | rpcRequest (method : String)
  | notification (method : String)
  deriving Inhabited

def MessageMethod.all : MessageMethod → Array String
  | .request method
  | .notification method =>
    #[method]
  | .rpcRequest method =>
    #["$/lean/rpc/call", method]

public def messageMethod? : JsonRpc.Message → Option MessageMethod
  | .request _ method params? => do
    if method == "$/lean/rpc/call" then
      let params := toJson params?
      if let .ok (callParams : Lsp.RpcCallParams) := fromJson? params then
        return .rpcRequest callParams.method.toString
    return .request method
  | .notification method _ =>
    some <| .notification method
  | _ =>
    none

def messageId? : JsonRpc.Message → Option JsonRpc.RequestID
  | .request id .. => some id
  | .response id .. => some id
  | .responseError id .. => some id
  | _ => none

def isMsgAllowed (cfg : LogConfig)
    (pending : Std.HashMap JsonRpc.RequestID MessageMethod)
    (msg : JsonRpc.Message) : Bool := Id.run do
  if ! cfg.isEnabled then
    return false
  let some method := method?
    | return false
  let allMethods := method.all
  if let some allowedMethods := cfg.allowedMethods? then
    if allMethods.any (! allowedMethods.contains ·) then
      return false
  if let some disallowedMethods := cfg.disallowedMethods? then
    if allMethods.any (disallowedMethods.contains ·) then
      return false
  return true
where
  method? : Option MessageMethod :=
    messageMethod? msg <|> (do pending.get? (← messageId? msg))

local instance : ToJson Std.Time.DateTime where
  toJson dt := dt.toISO8601String

local instance : FromJson Std.Time.DateTime where
  fromJson?
    | .str s => Std.Time.DateTime.fromISO8601String s
    | _ => throw "Expected string when converting JSON to Std.Time.DateTime"

structure LogEntry where
  time : Std.Time.DateTime
  direction : JsonRpc.MessageDirection
  kind : JsonRpc.MessageKind
  msg : JsonRpc.Message
  deriving FromJson, ToJson

public def writeLogEntry (cfg : LogConfig) (pending : Std.HashMap JsonRpc.RequestID MessageMethod)
    (log : IO.FS.Handle) (direction : JsonRpc.MessageDirection) (msg : JsonRpc.Message) : IO Unit := do
  if ! isMsgAllowed cfg pending msg then
    return
  let entry : LogEntry := {
    time := ← Std.Time.DateTime.now
    direction
    kind := .ofMessage msg
    msg
  }
  let entry := toJson entry |>.compress
  log.putStrLn entry
  log.flush
```

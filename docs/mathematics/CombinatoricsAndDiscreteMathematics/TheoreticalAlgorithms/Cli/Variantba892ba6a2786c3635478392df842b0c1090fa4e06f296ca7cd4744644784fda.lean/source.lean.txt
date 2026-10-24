-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.KnownNamedOpts.Variant6c82ba3314cf2dcc1b3eae34a95db2c2476152c4efb707dff80ea0a6ff3684fb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6c82ba3314cf2dcc1b3eae34a95db2c2476152c4efb707dff80ea0a6ff3684fb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.KnownNamedOpts.Variant6c82ba3314cf2dcc1b3eae34a95db2c2476152c4efb707dff80ea0a6ff3684fb","mathematical_subject":"Computation.DataStructures","original_sha256":"6c82ba3314cf2dcc1b3eae34a95db2c2476152c4efb707dff80ea0a6ff3684fb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Cache/Cli.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Marcelo Lynch. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Marcelo Lynch
-/

/-!
# Cache CLI option parsing

Pure helpers for the cache binary's option parsing. They live apart from
`Cache.Main` so the test binary can import them directly: `Cache.Main` holds
a top-level `main`, which collides with the test entrypoint.

The cache binary partitions its arguments into named options (`--name=value`),
boolean flags (`--name`), and positional arguments before dispatch. These
helpers implement that partitioning and the validation of known option names.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.KnownNamedOpts.Variant6c82ba3314cf2dcc1b3eae34a95db2c2476152c4efb707dff80ea0a6ff3684fb

namespace Cache.Cli

/-- The named options supported by the CLI. -/
def knownNamedOpts : List String :=
  ["repo", "staging-dir", "cache-from", "container", "scope", "unsafe-window", "backend"]

/-- The flag options supported by the CLI. -/
def knownFlagOpts : List String := ["help", "unsafe"]

/-- Parses an optional `--foo=bar` option. Returns the value for the
last-mentioned occurrence (so a later `--foo=` overrides an earlier one). -/
def parseNamedOpt (opt : String) (args : List String) : IO (Option String) := do
  let pref := s!"--{opt}="
  if let some a := args.findRev? (fun a => a.startsWith pref) then
    let val := a.drop pref.length
    return some val.toString
  return none

/-- Parses a boolean `--foo` flag. True iff the bare token `--foo` appears
anywhere in `args`. -/
def parseFlagOpt (opt : String) (args : List String) : Bool :=
  args.elem s!"--{opt}"

/-- Check whether `opt` (e.g. `"--repo=foo"` or `"--help"`) is a recognized
option. The caller rejects unknown `--`-prefixed tokens with an error, so a
typo like `--scoop=` does not pass silently. -/
def isKnownOpt (opt : String) : Bool :=
  knownNamedOpts.any (opt.startsWith s!"--{·}=") ||
  knownFlagOpts.any (opt == s!"--{·}")

end Cache.Cli

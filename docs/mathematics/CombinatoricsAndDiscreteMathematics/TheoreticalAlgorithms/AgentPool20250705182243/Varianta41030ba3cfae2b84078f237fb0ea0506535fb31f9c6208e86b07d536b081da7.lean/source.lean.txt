-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.GptAgent.Variantc7697dabca26568a0cd295801dc4de36b1a075ebfb393eeaedc8cda07030e248","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c7697dabca26568a0cd295801dc4de36b1a075ebfb393eeaedc8cda07030e248","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.GptAgent.Variantc7697dabca26568a0cd295801dc4de36b1a075ebfb393eeaedc8cda07030e248","mathematical_subject":"Computation.DataStructures","original_sha256":"c7697dabca26568a0cd295801dc4de36b1a075ebfb393eeaedc8cda07030e248","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/passthrough-server/.history/lean/cognition/Agents/AgentPool_20250705182243.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["delimiter_open_at_eof","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
-- lean/cognition/Agents/AgentPool.lean
import cognition.Agents.CognitiveAgent
import cognition.Agents.FlowProfile
import cognition.Core.UserInputEvent
import cognition.Dialogue.DialogueContext
import cognition.Log.GraffitiEntry
import cognition.Log.GraffitiLog


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.GptAgent.Variantc7697dabca26568a0cd295801dc4de36b1a075ebfb393eeaedc8cda07030e248

open Cognition

namespace Cognition.Agents

/--
A `GptAgent` is a named cognitive agent with a persona and internal state.

In practice, these are implemented elsewhere and satisfy `CognitiveAgent`.
In Lean, we model them abstractly via their `name` and behavior.
-/
structure GptAgent where
  name : String
  persona : String
  agent : CognitiveAgent

/--
The `AgentPool` is a finite registry of named agents,
together with a shared append-only `GraffitiLog` and a vector memory store.
-/
structure AgentPool where
  agents : List GptAgent
  log : GraffitiLog
  -- The vector store is abstracted as label → vector embedding
  memory : List (String × List Float)

/--
Register a new agent by name. If one with the same name exists, it is replaced.
Returns the updated pool.
-/
def AgentPool.register (pool : AgentPool) (agent : GptAgent) : AgentPool :=
  let updated := pool.agents.filter (·.name ≠ agent.name)
  { pool with agents := agent :: updated }

/--
Send a `UserInputEvent` to all agents in the pool for observation.
Returns the updated pool with potentially changed agents (e.g. internal state).
-/
def AgentPool.observeAll (pool : AgentPool) (evt : UserInputEvent) : AgentPool :=
  let updated := pool.agents.map fun a =>
    let a' := a.agent.perceive evt
    { a with agent := a' }
  { pool with agen

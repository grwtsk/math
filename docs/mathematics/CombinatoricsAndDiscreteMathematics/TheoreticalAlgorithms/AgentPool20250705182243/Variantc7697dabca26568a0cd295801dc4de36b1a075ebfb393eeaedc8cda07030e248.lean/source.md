# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AgentPool20250705182243.Variantc7697dabca26568a0cd295801dc4de36b1a075ebfb393eeaedc8cda07030e248

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dc589ffad9ddeb7d1e0b9fdaacddbe941e5152e2` · SHA-256 `c7697dabca26568a0cd295801dc4de36b1a075ebfb393eeaedc8cda07030e248`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- lean/cognition/Agents/AgentPool.lean
import cognition.Agents.CognitiveAgent
import cognition.Agents.FlowProfile
import cognition.Core.UserInputEvent
import cognition.Dialogue.DialogueContext
import cognition.Log.GraffitiEntry
import cognition.Log.GraffitiLog

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
```

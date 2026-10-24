# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AgentPool20250705182256.Variantb5e1aa38c6cdd73473c02f0f80248923c031b80a142810ef7cec925ef4811473

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `71e3f94f1bcc7662cfa8b046bd1f62c58bfe9039` · SHA-256 `b5e1aa38c6cdd73473c02f0f80248923c031b80a142810ef7cec925ef4811473`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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
  { pool with agents := updated }

/--
Broadcast a prompt to all agents and return their planned responses.
-/
def AgentPool.brainstorm
  (pool : AgentPool)
  (prompt : String)
  (ctx : Option DialogueContext := none)
  (thread : Option String := none)
  : List (String × Option String) :=
  pool.agents.map fun a =>
    let reply := a.agent.plan prompt ctx thread
    (a.name, reply)

/--
Evaluate the current dialogue context against a `FlowProfile` for alignment.
Returns an optional (summary, similarity) if misaligned.
-/
def AgentPool.evaluateFlow
  (pool : AgentPool)
  (ctx : DialogueContext)
  (target : FlowProfile)
  (thread : Option String := none)
  : Option (DialogueContext × Float) :=
  -- We leave this abstract for now
  none

end Cognition.Agents
```

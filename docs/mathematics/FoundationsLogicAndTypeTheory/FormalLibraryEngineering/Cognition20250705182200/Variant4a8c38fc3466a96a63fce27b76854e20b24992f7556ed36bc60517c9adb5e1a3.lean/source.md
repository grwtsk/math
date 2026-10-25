# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cognition20250705182200.Variant4a8c38fc3466a96a63fce27b76854e20b24992f7556ed36bc60517c9adb5e1a3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fbbc72abddb200a8bc5186b1d9e2a172bca066fd` · SHA-256 `4a8c38fc3466a96a63fce27b76854e20b24992f7556ed36bc60517c9adb5e1a3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- lean/Cognition.lean
import cognition.Core.CognitiveMode
import cognition.Core.FlowRegion
import cognition.Core.CognitiveState
import cognition.Core.UserInputEvent
import cognition.Core.PerceptionEvent

import cognition.State.Transition
import cognition.State.StateMachine

import cognition.Dialogue.TurnAuthor
import cognition.Dialogue.DialogueTurn
import cognition.Dialogue.DialogueContext
import cognition.Dialogue.PromptFormat

import cognition.Agents.CognitiveAgent
import cognition.Agents.AgentPool
import cognition.Agents.FlowProfile

import cognition.Log.GraffitiKind
import cognition.Log.GraffitiEntry
import cognition.Log.GraffitiLog

import cognition.Runtime.RuntimeLoop

namespace Cognition

/-!
  # Cognition System (Verified Core)

  This module re-exports all core components of the cognitive-semantic runtime:
  - `Core`: finite state and event types
  - `State`: pure transition semantics
  - `Dialogue`: memory and bounded conversational context
  - `Agents`: composable GPT-like agents
  - `Log`: append-only trace log
  - `Runtime`: orchestrated cognition via event flow

  All definitions are formal, compositional, and verifiable in Lean.
-/

end Cognition
```

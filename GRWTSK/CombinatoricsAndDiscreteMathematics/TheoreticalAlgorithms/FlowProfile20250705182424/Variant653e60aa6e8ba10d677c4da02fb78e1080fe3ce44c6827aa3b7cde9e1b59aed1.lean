-- lean/cognition/Agents/FlowProfile.lean
import cognition.Dialogue.DialogueContext

namespace Cognition.Agents

/--
A `FlowProfile` represents a target conversational vector:
- a label for identification,
- a signature vector (e.g. a normalized embedding),
- and a similarity tolerance for alignment.

This structure is used in flow evaluation and summarization.
-/
structure FlowProfile where
  label     : String
  signature : List Float
  tolerance : Float
  deriving Repr, DecidableEq

/--
Given a `DialogueContext` and a `FlowProfile`, a similarity score can be computed.

We leave the semantics of the similarity function abstract (e.g. cosine, Euclidean).
-/
def FlowProfile.similarity
  (profile : FlowProfile)
  (ctx : DialogueContext)
  : Float :=
  -- Abstract placeholder for alignment score (e.g. cosine similarity)
  -- In the mechanized version, we will implement this over a context embedding
  1.0

/--
Determine whether a dialogue context is aligned to a flow profile.
Returns `true` iff the similarity is at least the tolerance.
-/
def FlowProfile.isAligned
  (profile : FlowProfile)
  (ctx : DialogueContext)
  : Bool :=
  profile.similarity ctx ≥ profile.tolerance

end Cognition.Agents

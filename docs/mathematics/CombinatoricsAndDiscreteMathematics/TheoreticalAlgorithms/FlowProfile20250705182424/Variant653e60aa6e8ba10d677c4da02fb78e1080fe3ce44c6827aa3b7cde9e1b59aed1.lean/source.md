# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FlowProfile20250705182424.Variant653e60aa6e8ba10d677c4da02fb78e1080fe3ce44c6827aa3b7cde9e1b59aed1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d7cd9b76fcd43e8071ef153fd2734070c6861e34` · SHA-256 `653e60aa6e8ba10d677c4da02fb78e1080fe3ce44c6827aa3b7cde9e1b59aed1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```

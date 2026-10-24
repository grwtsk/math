# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ReflexiveTransitiveRelations.Variant2d8d79bbdb7ee988.CategoryObjectPreorder

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0356a750d9dcc582b7f008b2ccc39e7e7d02eb2e` · SHA-256 `3329a00ea59e005a3754d2300ef7da553daca3e1113ae4825ed3a1734041c525`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Reflexive and transitive Prop-valued relations on a supplied category object type
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 2d8d79bbdb7ee988d102ca05541aa46b0aa655664ced2bcc2d4e2bde27e03372
Organized SHA-256: 5d1d36028bb5f6b0b46dbf2c5fe11f4b2f646865334eeab7e2a36cc292931b10
PMD: 510.7.070 order and lattice theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

import Think.Logic.Core

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ReflexiveTransitiveRelations.Variant2d8d79bbdb7ee988
open Think.Logic

/-! Structural layer receipts for the lightweight Think category schema. -/

structure ProofRelevantPreorder (C : Category) where
  justified : C.Obj → C.Obj → Prop
  reflexive : ∀ A : C.Obj, justified A A
  transitive : ∀ {A B D : C.Obj}, justified A B → justified B D → justified A D

end GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ReflexiveTransitiveRelations.Variant2d8d79bbdb7ee988
```

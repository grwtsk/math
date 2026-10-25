# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofEvidence.IndependentConsumers.Checks.Positive.OccurrenceEncodingAndPublicationChecks

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e4f8a3b07a4986899d760bfb58751cff8d053ce3` · SHA-256 `4177d273d2361d2cc40ff0ff9cbaa2942c7230be64628b7bb4258d3098dfe9bc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Words.IndexedOccurrenceEncoding
import GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FiniteOccurrenceMaps
import GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SnapshotPublicationTransitions

/- Independent consumer signatures freeze the intended premises and conclusions. -/
open GRWTSK

example {K P D : Type} [DecidableEq P] (route : K → D) (width : Nat)
    (entries : List (K × P)) :
    Logic.FiniteSequences.IndexedDictionary.unpack
      (PipelineContracts.encode route width entries) = some entries :=
  PipelineContracts.decode_encode route width entries

example {K P D : Type} [DecidableEq P] (route : K → D) (width : Nat)
    (entries decoded : List (K × P)) (predicate : List (K × P) → Prop)
    (evidence : predicate entries)
    (readback : Logic.FiniteSequences.IndexedDictionary.unpack
      (PipelineContracts.encode route width entries) = some decoded) : predicate decoded :=
  PipelineContracts.evidence_applicability route width entries decoded predicate evidence readback

example {K P D : Type} (route : K → Option D) (entries : List (K × P))
    (output : List (TaxonomyProjection.Placement K P D))
    (accepted : TaxonomyProjection.projectPartial route entries = some output) :
    output.map TaxonomyProjection.Placement.original = entries :=
  TaxonomyProjection.forget_projectPartial route entries output accepted

example {K D : Type} (folder : TaxonomyProjection.Folder K D) :
    TaxonomyProjection.planGitkeep folder = true ↔ folder.directLean = [] :=
  TaxonomyProjection.planGitkeep_iff folder

example {I P V : Type} [DecidableEq P] [DecidableEq V]
    (n m : Nat) (outputs : List (OccurrencePlans.Output P V))
    (entries : List (OccurrencePlans.Occurrence I P V))
    (woven : OccurrencePlans.Woven I P V)
    (accepted : OccurrencePlans.weave n m outputs entries = some woven) :
    OccurrencePlans.decode woven.outputs woven.references = some entries :=
  OccurrencePlans.weave_preserves_every_occurrence accepted

example {I P V : Type} [DecidableEq P] [DecidableEq V] (r n m : Nat)
    (expected actual : List (Nat × Nat)) (stale : expected ≠ actual)
    (outputs : List (OccurrencePlans.Output P V))
    (entries : List (OccurrencePlans.Occurrence I P V)) :
    OccurrencePlans.transition r n m expected actual outputs entries = none :=
  OccurrencePlans.stale_readset_blocks_transition r n m stale outputs entries

namespace TransactionConsumer
open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.GovernedTransactions.Retirement

example (grant : Operation → Prop) (context : Context) (s t : State)
    (retirement : Step grant context .retire s t) : grant .retire :=
  retire_requires_external_grant retirement

example (grant : Operation → Prop) (context : Context) (s : State)
    (reachable : Reachable grant context s) (absent : s.source = none) :
    ∃ before after, Reachable grant context before ∧ Step grant context .readback before after :=
  reachable_source_absence_requires_prior_readback reachable absent

end TransactionConsumer
```

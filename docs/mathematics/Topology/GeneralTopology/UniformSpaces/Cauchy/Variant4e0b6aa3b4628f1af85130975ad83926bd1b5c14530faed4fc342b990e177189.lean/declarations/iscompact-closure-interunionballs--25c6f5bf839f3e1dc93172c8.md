# isCompact_closure_interUnionBalls

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "662eabc97c2bdea7893341296de0a9465bc6d2c6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 669,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4e/4e0b6aa3b4628f1af85130975ad83926bd1b5c14530faed4fc342b990e177189.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e8e6b877-db36-7a74-4475-e1e8d568cd77",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e1783476-04d1-7f90-d632-77414ada39a6",
  "kind": "theorem",
  "lexical_name": "isCompact_closure_interUnionBalls",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "iscompact-closure-interunionballs--25c6f5bf839f3e1dc93172c8",
  "source": {
    "blob": "662eabc97c2bdea7893341296de0a9465bc6d2c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 698,
    "line": 669,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant4e0b6aa3b4628f1af85130975ad83926bd1b5c14530faed4fc342b990e177189.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25c6f5bf839f3e1dc93172c8f979ea39d83c8df4467d79ddd2957472f60c94fc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant4e0b6aa3b4628f1af85130975ad83926bd1b5c14530faed4fc342b990e177189.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1783476-04d1-7f90-d632-77414ada39a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 669–698.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCompact_closure_interUnionBalls {p : ℕ → Prop} {U : ℕ → Set (α × α)}
    (H : (uniformity α).HasBasis p U) [CompleteSpace α] (xs : ℕ → α) (u : ℕ → ℕ) :
    IsCompact (closure (interUnionBalls xs u U)) := by
  rw [isCompact_iff_totallyBounded_isComplete]
  refine ⟨TotallyBounded.closure ?_, isClosed_closure.isComplete⟩
  exact totallyBounded_interUnionBalls H xs u

/-!
### Sequentially complete space

In this section we prove that a uniform space is complete provided that it is sequentially complete
(i.e., any Cauchy sequence converges) and its uniformity filter admits a countable generating set.
In particular, this applies to (e)metric spaces, see the files `Topology/MetricSpace/EmetricSpace`
and `Topology/MetricSpace/Basic`.

More precisely, we assume that there is a sequence of entourages `U_n` such that any other
entourage includes one of `U_n`. Then any Cauchy filter `f` generates a decreasing sequence of
sets `s_n ∈ f` such that `s_n × s_n ⊆ U_n`. Choose a sequence `x_n∈s_n`. It is easy to show
that this is a Cauchy sequence. If this sequence converges to some `a`, then `f ≤ 𝓝 a`. -/


namespace SequentiallyComplete

variable {f : Filter α} (hf : Cauchy f) {U : ℕ → Set (α × α)} (U_mem : ∀ n, U n ∈ 𝓤 α)

open Set Finset

noncomputable section

/-- An auxiliary sequence of sets approximating a Cauchy filter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant4e0b6aa3b4628f1af85130975ad83926bd1b5c14530faed4fc342b990e177189.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant4e0b6aa3b4628f1af85130975ad83926bd1b5c14530faed4fc342b990e177189.lean#L669).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `662eabc97c2bdea7893341296de0a9465bc6d2c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

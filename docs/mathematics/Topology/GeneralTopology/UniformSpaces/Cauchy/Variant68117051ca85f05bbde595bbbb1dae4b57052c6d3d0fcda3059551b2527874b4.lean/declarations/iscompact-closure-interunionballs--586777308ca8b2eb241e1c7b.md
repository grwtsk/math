# isCompact_closure_interUnionBalls

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "86640c96b74c3a4161ecae8151f0cdec46f6d64c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 801,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/68117051ca85f05bbde595bbbb1dae4b57052c6d3d0fcda3059551b2527874b4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9ce7ac64-93b3-0ba4-dd8d-4c106a4af48a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6f96e31b-d897-a2ac-a2cd-adf7677e4949",
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
  "slug": "iscompact-closure-interunionballs--586777308ca8b2eb241e1c7b",
  "source": {
    "blob": "86640c96b74c3a4161ecae8151f0cdec46f6d64c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 830,
    "line": 801,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant68117051ca85f05bbde595bbbb1dae4b57052c6d3d0fcda3059551b2527874b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:586777308ca8b2eb241e1c7b6e01971333a84fed7989bdd726da627bd7e00100",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant68117051ca85f05bbde595bbbb1dae4b57052c6d3d0fcda3059551b2527874b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f96e31b-d897-a2ac-a2cd-adf7677e4949`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 801–830.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCompact_closure_interUnionBalls {p : ℕ → Prop} {U : ℕ → SetRel α α}
    (H : (uniformity α).HasBasis p U) [CompleteSpace α] (xs : ℕ → α) (u : ℕ → ℕ) :
    IsCompact (closure (interUnionBalls xs u U)) := by
  rw [isCompact_iff_totallyBounded_isComplete]
  refine ⟨TotallyBounded.closure ?_, isClosed_closure.isComplete⟩
  exact totallyBounded_interUnionBalls H xs u

/-!
### Sequentially complete space

In this section we prove that a uniform space is complete provided that it is sequentially complete
(i.e., any Cauchy sequence converges) and its uniformity filter admits a countable generating set.
In particular, this applies to (e)metric spaces, see the files
`Mathlib/Topology/EMetricSpace/Basic.lean` and `Mathlib/Topology/MetricSpace/Basic.lean`.

More precisely, we assume that there is a sequence of entourages `U_n` such that any other
entourage includes one of `U_n`. Then any Cauchy filter `f` generates a decreasing sequence of
sets `s_n ∈ f` such that `s_n × s_n ⊆ U_n`. Choose a sequence `x_n∈s_n`. It is easy to show
that this is a Cauchy sequence. If this sequence converges to some `a`, then `f ≤ 𝓝 a`. -/


namespace SequentiallyComplete

variable {f : Filter α} (hf : Cauchy f) {U : ℕ → SetRel α α} (U_mem : ∀ n, U n ∈ 𝓤 α)

open Set

noncomputable section

/-- An auxiliary sequence of sets approximating a Cauchy filter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant68117051ca85f05bbde595bbbb1dae4b57052c6d3d0fcda3059551b2527874b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant68117051ca85f05bbde595bbbb1dae4b57052c6d3d0fcda3059551b2527874b4.lean#L801).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86640c96b74c3a4161ecae8151f0cdec46f6d64c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

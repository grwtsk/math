# dirac

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:04942f9a2fa4923f7dd736d095b82abbcf6808aaa3050ae3f578ba305872270b",
  "kind": "def",
  "lexical_name": "dirac",
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
  "slug": "dirac--7cbda2f799a6afa3739599da",
  "source": {
    "blob": "e0cdae00254e0ab3c85de7152bd6d615385e39ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 406,
    "line": 389,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variantcf2b08f5a806629d1c5a40c7b7fee806083a24682772321b3bbced1863f6f9e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7cbda2f799a6afa3739599da8524ba2ffc32e3f7a3962757fbbf53c0974ac7c9",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variantcf2b08f5a806629d1c5a40c7b7fee806083a24682772321b3bbced1863f6f9e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:04942f9a2fa4923f7dd736d095b82abbcf6808aaa3050ae3f578ba305872270b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 389–406.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def dirac (x : β) (v : M) : VectorMeasure β M where
  measureOf' s := if MeasurableSet s ∧ x ∈ s then v else 0
  empty' := by simp
  not_measurable' := by simp +contextual
  m_iUnion' f f_meas f_disj := by
    by_cases hx : x ∈ ⋃ i, f i; swap
    · simp only [mem_iUnion, not_exists] at hx
      simp [hx, hasSum_zero]
    have : MeasurableSet (⋃ i, f i) := by
      apply MeasurableSet.iUnion f_meas
    simp only [f_meas, true_and, MeasurableSet.iUnion f_meas, hx, and_self, ↓reduceIte]
    obtain ⟨j, hj⟩ : ∃ j, x ∈ f j := by simpa using hx
    nth_rewrite 2 [show v = if x ∈ f j then v else 0 by simp [hj]]
    apply hasSum_single
    intro i hi
    have : Disjoint (f i) (f j) := f_disj hi
    grind

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variantcf2b08f5a806629d1c5a40c7b7fee806083a24682772321b3bbced1863f6f9e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variantcf2b08f5a806629d1c5a40c7b7fee806083a24682772321b3bbced1863f6f9e9.lean#L389).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0cdae00254e0ab3c85de7152bd6d615385e39ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

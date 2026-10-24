# mertensTwoPointQuarticCollisionFreeUpper_eq_parallelogram

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:03709e5a-7886-02d9-9a01-6c6a85cc8282",
  "kind": "theorem",
  "lexical_name": "mertensTwoPointQuarticCollisionFreeUpper_eq_parallelogram",
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
  "slug": "mertenstwopointquarticcollisionfreeupper-eq-parallelogram--00e660b28b308563c7cace9b",
  "source": {
    "blob": "d48c06b81e46edcaacc587e62a67694762b20499",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 62,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticParallelogram.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00e660b28b308563c7cace9bce148c18c06611f81c2119588a1a62c1374e5702",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftQuarticParallelogram.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03709e5a-7886-02d9-9a01-6c6a85cc8282`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertensTwoPointQuarticCollisionFreeUpper_eq_parallelogram
    (h N : ℕ) :
    mertensTwoPointQuarticCollisionFreeUpper h N =
      mertensTwoPointQuarticParallelogramUpper h N := by
  classical
  unfold mertensTwoPointQuarticCollisionFreeUpper
    mertensTwoPointQuarticParallelogramUpper
    mertensTwoPointQuarticParallelogramSlice
    mertensTwoPointQuarticParallelogramSeparationSet
  rw [Finset.sum_sigma', Finset.sum_sigma']
  apply Finset.sum_bij
    (fun p _hp => ⟨p.1 - p.2, p.2⟩)
  · intro p hp
    rcases p with ⟨b, a⟩
    simp only [Finset.mem_sigma, Finset.mem_range,
      Finset.mem_filter, Finset.mem_Ico] at hp ⊢
    rcases hp with ⟨hbN, hab, hfree⟩
    constructor
    · constructor <;> omega
    constructor
    · omega
    · omega
  · intro p₁ hp₁ p₂ hp₂ heq
    rcases p₁ with ⟨b₁, a₁⟩
    rcases p₂ with ⟨b₂, a₂⟩
    simp only [Finset.mem_sigma, Finset.mem_range,
      Finset.mem_filter] at hp₁ hp₂
    simp only [Sigma.mk.inj_iff] at heq
    rcases heq with ⟨hd, ha⟩
    subst a₂
    have hb : b₁ = b₂ := by omega
    subst b₂
    rfl
  · intro p hp
    rcases p with ⟨d, a⟩
    simp only [Finset.mem_sigma, Finset.mem_range,
      Finset.mem_filter, Finset.mem_Ico] at hp
    rcases hp with ⟨⟨hdpos, hdN⟩, hdne, haN⟩
    refine ⟨⟨a + d, a⟩, ?_, ?_⟩
    · simp only [Finset.mem_sigma, Finset.mem_range,
        Finset.mem_filter]
      constructor
      · omega
      constructor
      · omega
      · omega
    · simp only [Sigma.mk.inj_iff]
      constructor <;> omega
  · intro p hp
    rcases p with ⟨b, a⟩
    simp only [Finset.mem_sigma, Finset.mem_range,
      Finset.mem_filter] at hp
    rcases hp with ⟨_hbN, hab, _hfree⟩
    have hb : b = a + (b - a) := by omega
    rw [hb]
    exact mertensTwoPointQuarticCell_eq_parallelogram
      h (b - a) a

/-- The excluded separation diagonal `d=h` is exactly the repeated-middle
collision cell. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftQuarticParallelogram.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticParallelogram.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d48c06b81e46edcaacc587e62a67694762b20499` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

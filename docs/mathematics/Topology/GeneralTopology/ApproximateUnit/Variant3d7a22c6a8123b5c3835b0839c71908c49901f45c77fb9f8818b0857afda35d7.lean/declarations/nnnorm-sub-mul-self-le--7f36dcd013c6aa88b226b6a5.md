# nnnorm_sub_mul_self_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24d0ef3e-79e5-af7d-ed7e-5cf14148650b",
  "kind": "lemma",
  "lexical_name": "nnnorm_sub_mul_self_le",
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
  "slug": "nnnorm-sub-mul-self-le--7f36dcd013c6aa88b226b6a5",
  "source": {
    "blob": "ea918994fce91465b3822c97a0f2af0e641f63cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 236,
    "path": "GRWTSK/Topology/GeneralTopology/ApproximateUnit/Variant3d7a22c6a8123b5c3835b0839c71908c49901f45c77fb9f8818b0857afda35d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f36dcd013c6aa88b226b6a5cc12790770cf1a4114dc889709689fe54eeec195",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ApproximateUnit/Variant3d7a22c6a8123b5c3835b0839c71908c49901f45c77fb9f8818b0857afda35d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24d0ef3e-79e5-af7d-ed7e-5cf14148650b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nnnorm_sub_mul_self_le {A : Type*} [CStarAlgebra A] [PartialOrder A] [StarOrderedRing A]
    {x y : A} (z : A) (hx₀ : 0 ≤ x) (hy : y ∈ Set.Icc x 1) {c : ℝ≥0}
    (h : ‖star z * (1 - x) * z‖₊ ≤ c ^ 2) :
    ‖z - y * z‖₊ ≤ c := by
  nth_rw 1 [← one_mul z]
  rw [← sqrt_sq c, le_sqrt_iff_sq_le, ← sub_mul, sq, ← CStarRing.nnnorm_star_mul_self]
  simp only [star_mul, star_sub, star_one]
  have hy₀ : y ∈ Set.Icc 0 1 := ⟨hx₀.trans hy.1, hy.2⟩
  have hy' : 1 - y ∈ Set.Icc 0 1 := Set.sub_mem_Icc_zero_iff_right.mpr hy₀
  rw [hy₀.1.star_eq, ← mul_assoc, mul_assoc (star _), ← sq]
  refine nnnorm_le_nnnorm_of_le_of_nonneg ?_ (star_left_conjugate_nonneg (pow_nonneg (1 - y) 2) _)
    |>.trans h
  refine star_left_conjugate_le_conjugate ?_ _
  trans (1 - y)
  · simpa using pow_antitone hy'.2 hy'.1 one_le_two
  · gcongr
    exact hy.1

/-- A variant of `nnnorm_sub_mul_self_le` which uses `‖·‖` instead of `‖·‖₊`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ApproximateUnit/Variant3d7a22c6a8123b5c3835b0839c71908c49901f45c77fb9f8818b0857afda35d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ApproximateUnit/Variant3d7a22c6a8123b5c3835b0839c71908c49901f45c77fb9f8818b0857afda35d7.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea918994fce91465b3822c97a0f2af0e641f63cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

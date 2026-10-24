# isUnit_iff_isUnit_val

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:deeb56ce-e025-2a08-9b27-ae42e3a74fe3",
  "kind": "theorem",
  "lexical_name": "isUnit_iff_isUnit_val",
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
  "slug": "isunit-iff-isunit-val--c0d4d5b49a513268ad604425",
  "source": {
    "blob": "1db610140c3810aa209c8759b3fdf996ecd5a3b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 595,
    "line": 580,
    "path": "GRWTSK/Algebra/HomogeneousLocalization/Variant9bea75484798b16faf9bf8817eaf54ca441bf7617809f5c37421905d2c0cf78d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0d4d5b49a513268ad6044259767f7a6823c65c5996b1aafc96c648047363a6f",
  "verification": {
    "reference": "docs/verification/Algebra/HomogeneousLocalization/Variant9bea75484798b16faf9bf8817eaf54ca441bf7617809f5c37421905d2c0cf78d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:deeb56ce-e025-2a08-9b27-ae42e3a74fe3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 580–595.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isUnit_iff_isUnit_val (f : HomogeneousLocalization.AtPrime 𝒜 𝔭) :
    IsUnit f.val ↔ IsUnit f := by
  refine ⟨fun h1 ↦ ?_, IsUnit.map (algebraMap _ _)⟩
  rcases h1 with ⟨⟨a, b, eq0, eq1⟩, rfl : a = f.val⟩
  obtain ⟨f, rfl⟩ := mk_surjective f
  obtain ⟨b, s, rfl⟩ := IsLocalization.exists_mk'_eq 𝔭.primeCompl b
  rw [val_mk, Localization.mk_eq_mk', ← IsLocalization.mk'_mul, IsLocalization.mk'_eq_iff_eq_mul,
    one_mul, IsLocalization.eq_iff_exists (M := 𝔭.primeCompl)] at eq0
  obtain ⟨c, hc : _ = c.1 * (f.den.1 * s.1)⟩ := eq0
  have : f.num.1 ∉ 𝔭 := by
    exact fun h ↦ mul_mem c.2 (mul_mem f.den_mem s.2)
      (hc ▸ Ideal.mul_mem_left _ c.1 (Ideal.mul_mem_right b _ h))
  refine .of_mul_eq_one (Quotient.mk'' ⟨f.1, f.3, f.2, this⟩) ?_
  rw [← mk_mul, ext_iff_val, val_mk]
  simp [mul_comm f.den.1]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/HomogeneousLocalization/Variant9bea75484798b16faf9bf8817eaf54ca441bf7617809f5c37421905d2c0cf78d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/HomogeneousLocalization/Variant9bea75484798b16faf9bf8817eaf54ca441bf7617809f5c37421905d2c0cf78d.lean#L580).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1db610140c3810aa209c8759b3fdf996ecd5a3b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

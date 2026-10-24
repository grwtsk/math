# arg_mul_cos_add_sin_mul_I_eq_toIocMod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7cd62701-f15c-ede0-a227-0eed3f2e11fe",
  "kind": "theorem",
  "lexical_name": "arg_mul_cos_add_sin_mul_I_eq_toIocMod",
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
  "slug": "arg-mul-cos-add-sin-mul-i-eq-toiocmod--b176d0b6e83b2d0b45011201",
  "source": {
    "blob": "1f9e672310ec215bc88829f9bc6d87bd38f58b37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 463,
    "line": 456,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variantf91623cecf81ce46b20a1df4a873a648dffd38ac9a0729119dd56554caf6263b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b176d0b6e83b2d0b450112015f490ee00a930667aea9957ce70cde9a028f1617",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variantf91623cecf81ce46b20a1df4a873a648dffd38ac9a0729119dd56554caf6263b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7cd62701-f15c-ede0-a227-0eed3f2e11fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 456–463.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem arg_mul_cos_add_sin_mul_I_eq_toIocMod {r : ℝ} (hr : 0 < r) (θ : ℝ) :
    arg (r * (cos θ + sin θ * I)) = toIocMod Real.two_pi_pos (-π) θ := by
  have hi : toIocMod Real.two_pi_pos (-π) θ ∈ Set.Ioc (-π) π := by
    convert toIocMod_mem_Ioc _ _ θ
    ring
  convert arg_mul_cos_add_sin_mul_I hr hi using 3
  simp [toIocMod, cos_sub_int_mul_two_pi, sin_sub_int_mul_two_pi]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variantf91623cecf81ce46b20a1df4a873a648dffd38ac9a0729119dd56554caf6263b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variantf91623cecf81ce46b20a1df4a873a648dffd38ac9a0729119dd56554caf6263b.lean#L456).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f9e672310ec215bc88829f9bc6d87bd38f58b37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

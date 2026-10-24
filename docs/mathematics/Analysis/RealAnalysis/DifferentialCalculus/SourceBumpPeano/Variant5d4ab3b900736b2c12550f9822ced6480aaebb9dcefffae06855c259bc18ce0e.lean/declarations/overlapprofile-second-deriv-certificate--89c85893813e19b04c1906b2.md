# overlapProfile_second_deriv_certificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:827c862f-3479-a79f-8ed1-44dd675f32e4",
  "kind": "theorem",
  "lexical_name": "overlapProfile_second_deriv_certificate",
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
  "slug": "overlapprofile-second-deriv-certificate--89c85893813e19b04c1906b2",
  "source": {
    "blob": "c110d3be0f9c3490c486272c3c9c6d0d92e14a37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 52,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpPeano/Variant5d4ab3b900736b2c12550f9822ced6480aaebb9dcefffae06855c259bc18ce0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89c85893813e19b04c1906b22db42e4cbea9bbb36a1ea82921226bbd5a3912e6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpPeano/Variant5d4ab3b900736b2c12550f9822ced6480aaebb9dcefffae06855c259bc18ce0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:827c862f-3479-a79f-8ed1-44dd675f32e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem overlapProfile_second_deriv_certificate (u : ℝ) :
    deriv (deriv overlapProfile) u + (34 / 7) * overlapProfile u =
      u ^ 2 * (2 - u) ^ 7 * overlapP2 u / 315315 := by
  rw [overlapProfile_deriv_eq]
  unfold overlapP1 overlapProfile overlapP0
  simp (disch := fun_prop) only [deriv.fun_neg, deriv_div_const, deriv_fun_mul,
    deriv_fun_add, deriv_const_mul_id, deriv_fun_pow, deriv_const_sub_id,
    deriv_id'', deriv_const]
  dsimp [overlapP2]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpPeano/Variant5d4ab3b900736b2c12550f9822ced6480aaebb9dcefffae06855c259bc18ce0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpPeano/Variant5d4ab3b900736b2c12550f9822ced6480aaebb9dcefffae06855c259bc18ce0e.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c110d3be0f9c3490c486272c3c9c6d0d92e14a37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

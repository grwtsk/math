# hasDerivAt_S5

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c9a2253-50c8-8f5d-04e2-1e31dcb4e395",
  "kind": "lemma",
  "lexical_name": "hasDerivAt_S5",
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
  "slug": "hasderivat-s5--cc73873e29e52a8ffffef13c",
  "source": {
    "blob": "96412d1ff7921d8348f589fce58fc9abd41397e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 361,
    "line": 346,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant13318ed7369122d67b7527abd125f40dcb9ad2078310279224ea1cd6af5ee91d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc73873e29e52a8ffffef13c82ef8fd07b8d7c04145cffc5367b11e3e47d39ad",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant13318ed7369122d67b7527abd125f40dcb9ad2078310279224ea1cd6af5ee91d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c9a2253-50c8-8f5d-04e2-1e31dcb4e395`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 346–361.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma hasDerivAt_S5 (y : ℝ) : HasDerivAt S5
    (1 - 2 * y^2 + 4/3 * y^4 - 8/15 * y^6 + 16/105 * y^8 - 32/945 * y^10) y := by
  unfold S5
  have d1 : HasDerivAt (fun x ↦ x) 1 y := hasDerivAt_id y
  have d2 : HasDerivAt (fun x ↦ 2/3 * x^3) (2 * y^2) y :=
    ((hasDerivAt_pow 3 y).const_mul (2/3)).congr_deriv (by norm_cast; ring)
  have d3 : HasDerivAt (fun x ↦ 4/15 * x^5) (4/3 * y^4) y :=
    ((hasDerivAt_pow 5 y).const_mul (4/15)).congr_deriv (by norm_cast; ring)
  have d4 : HasDerivAt (fun x ↦ 8/105 * x^7) (8/15 * y^6) y :=
    ((hasDerivAt_pow 7 y).const_mul (8/105)).congr_deriv (by norm_cast; ring)
  have d5 : HasDerivAt (fun x ↦ 16/945 * x^9) (16/105 * y^8) y :=
    ((hasDerivAt_pow 9 y).const_mul (16/945)).congr_deriv (by norm_cast; ring)
  have d6 : HasDerivAt (fun x ↦ 32/10395 * x^11) (32/945 * y^10) y :=
    ((hasDerivAt_pow 11 y).const_mul (32/10395)).congr_deriv (by norm_cast; ring)
  exact ((((d1.sub d2).add d3).sub d4).add d5).sub d6

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant13318ed7369122d67b7527abd125f40dcb9ad2078310279224ea1cd6af5ee91d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant13318ed7369122d67b7527abd125f40dcb9ad2078310279224ea1cd6af5ee91d.lean#L346).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96412d1ff7921d8348f589fce58fc9abd41397e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

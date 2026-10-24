# isUnit_dblZ_of_Y_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:76c4817e-fa96-eb39-0589-53df1081839e",
  "kind": "lemma",
  "lexical_name": "isUnit_dblZ_of_Y_ne",
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
  "slug": "isunit-dblz-of-y-ne--469012ec80febc6d2e483ca6",
  "source": {
    "blob": "22353e1a62c13f7052c3a717229e5d367ec1dd3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 221,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Formula/Variante6c0076c95f3b45fca713ea0420bd6d77080890bece3cf8e261564b24d39f733.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:469012ec80febc6d2e483ca68451a4657a6afc2bc1670525cecaae9e4e697481",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Formula/Variante6c0076c95f3b45fca713ea0420bd6d77080890bece3cf8e261564b24d39f733.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76c4817e-fa96-eb39-0589-53df1081839e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isUnit_dblZ_of_Y_ne {P Q : Fin 3 → F} (hP : W.Equation P) (hQ : W.Equation Q) (hPz : P z ≠ 0)
    (hQz : Q z ≠ 0) (hx : P x * Q z = Q x * P z) (hy : P y * Q z ≠ Q y * P z) : IsUnit (W.dblZ P) :=
  (dblZ_ne_zero_of_Y_ne hP hQ hPz hQz hx hy).isUnit

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Formula/Variante6c0076c95f3b45fca713ea0420bd6d77080890bece3cf8e261564b24d39f733.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Formula/Variante6c0076c95f3b45fca713ea0420bd6d77080890bece3cf8e261564b24d39f733.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22353e1a62c13f7052c3a717229e5d367ec1dd3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

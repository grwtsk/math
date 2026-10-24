# toAffine_addX_of_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7d33f5f0-0166-ed55-c50b-5ec5d7d03e54",
  "kind": "lemma",
  "lexical_name": "toAffine_addX_of_ne",
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
  "slug": "toaffine-addx-of-ne--bd8df3a90b9b8164a85a2ea5",
  "source": {
    "blob": "22353e1a62c13f7052c3a717229e5d367ec1dd3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 625,
    "line": 619,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Formula/Variante6c0076c95f3b45fca713ea0420bd6d77080890bece3cf8e261564b24d39f733.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd8df3a90b9b8164a85a2ea5aa35efc3f135007ec1c06c914047628a11c94ffb",
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

Occurrence: `result:7d33f5f0-0166-ed55-c50b-5ec5d7d03e54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 619–625.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma toAffine_addX_of_ne {P Q : Fin 3 → F} (hPz : P z ≠ 0) (hQz : Q z ≠ 0) {n d : F}
    (hd : d ≠ 0) : W.toAffine.addX (P x / P z) (Q x / Q z) (n / d) =
      (n ^ 2 * P z * Q z + W.a₁ * n * P z * Q z * d - W.a₂ * P z * Q z * d ^ 2 - P x * Q z * d ^ 2
        - Q x * P z * d ^ 2) * d / (P z * Q z) ^ 2 / (d ^ 3 / (P z * Q z)) := by
  field_simp [hd]
  ring1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Formula/Variante6c0076c95f3b45fca713ea0420bd6d77080890bece3cf8e261564b24d39f733.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Formula/Variante6c0076c95f3b45fca713ea0420bd6d77080890bece3cf8e261564b24d39f733.lean#L619).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22353e1a62c13f7052c3a717229e5d367ec1dd3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# PrimitiveAdditiveTriple.freyT0Translate_nonsingular

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a7aa41e6-718a-b04f-9ec4-9bca35347d74",
  "kind": "theorem",
  "lexical_name": "PrimitiveAdditiveTriple.freyT0Translate_nonsingular",
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
  "slug": "primitiveadditivetriple-freyt0translate-nonsingular--d21961a07443311e07e2eb6b",
  "source": {
    "blob": "858cb2612b185c54c12e89cae33c5ba85f52d3b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 105,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTranslation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d21961a07443311e07e2eb6b990f6478e9075dfe4b9cac3a799c7c789ec403db",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTranslation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7aa41e6-718a-b04f-9ec4-9bca35347d74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PrimitiveAdditiveTriple.freyT0Translate_nonsingular (t : PrimitiveAdditiveTriple)
    (x y : ℚ) (hx : x ≠ 0) (hP : t.freyCurve.toAffine.Nonsingular x y) :
    t.freyCurve.toAffine.Nonsingular
      (freyT0TranslateX (t.a : ℚ) (t.b : ℚ) x)
      (freyT0TranslateY (t.a : ℚ) (t.b : ℚ) x y) := by
  apply WeierstrassCurve.Affine.equation_iff_nonsingular.mp
  apply (freyWeierstrass_equation_iff _ _ _ _).mpr
  exact freyT0Translate_equation _ _ _ _ hx
    ((freyWeierstrass_equation_iff _ _ _ _).mp hP.1)

/-- The affine formula is the restriction of the SAME total point translation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTranslation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTranslation.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `858cb2612b185c54c12e89cae33c5ba85f52d3b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

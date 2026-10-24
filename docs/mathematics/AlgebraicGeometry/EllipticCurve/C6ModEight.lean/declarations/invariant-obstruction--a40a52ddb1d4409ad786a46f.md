# invariant_obstruction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3152d698-ca8b-6fcf-c70e-394c4060f292",
  "kind": "theorem",
  "lexical_name": "invariant_obstruction",
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
  "slug": "invariant-obstruction--a40a52ddb1d4409ad786a46f",
  "source": {
    "blob": "fc2fb352a57fd2cc8e05d192cacec872731e6ceb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 86,
    "path": "GRWTSK/AlgebraicGeometry/EllipticCurve/C6ModEight.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a40a52ddb1d4409ad786a46f3d66d76e90796a121221161fa5f91354a2d56c85",
  "verification": {
    "reference": "docs/verification/AlgebraicGeometry/EllipticCurve/C6ModEight.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3152d698-ca8b-6fcf-c70e-394c4060f292`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem invariant_obstruction {R : Type*} [CommRing R] (φ : R →+* ZMod 8)
    (W : WeierstrassCurve R) (h4 : IsUnit W.c₄) (ε : Rˣ) (F : R)
    (hF : F = -2*(ε : R)^6*W.c₆) : φ F=2 := by
  have hunit : IsUnit (W.map φ).c₄ := by
    simpa only [WeierstrassCurve.map_c₄] using h4.map φ
  have h6 := twice_c6_of_unit_c4 (W.map φ) hunit
  simp only [WeierstrassCurve.map_c₆] at h6
  have he := unit_sixth (φ (ε : R)) (ε.isUnit.map φ)
  rw [hF,map_mul,map_mul,map_neg,map_ofNat,map_pow,he,mul_one]
  calc
    -(2 : ZMod 8)*φ W.c₆=-(2*φ W.c₆) := by ring
    _= -6 := by rw [h6]
    _=2 := by norm_num

/-- In an injective characteristic-zero realization, the weight-six law can
be cancelled BEFORE reducing modulo eight. Cancelling 32 modulo eight is invalid. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/AlgebraicGeometry/EllipticCurve/C6ModEight.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/EllipticCurve/C6ModEight.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc2fb352a57fd2cc8e05d192cacec872731e6ceb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

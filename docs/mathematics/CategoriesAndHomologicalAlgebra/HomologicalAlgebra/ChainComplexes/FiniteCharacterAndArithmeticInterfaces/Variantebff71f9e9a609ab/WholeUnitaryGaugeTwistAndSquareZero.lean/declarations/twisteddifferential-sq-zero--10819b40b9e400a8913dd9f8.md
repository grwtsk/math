# twistedDifferential_sq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2fc27dd2-c3d5-c211-81a0-64fce2fa6dec",
  "kind": "theorem",
  "lexical_name": "twistedDifferential_sq_zero",
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
  "slug": "twisteddifferential-sq-zero--10819b40b9e400a8913dd9f8",
  "source": {
    "blob": "5731a1ec8252f784a2baf0ea31a01ddd5a975c82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 65,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ChainComplexes/FiniteCharacterAndArithmeticInterfaces/Variantebff71f9e9a609ab/WholeUnitaryGaugeTwistAndSquareZero.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10819b40b9e400a8913dd9f8f2669822f589c9c4acc32279bb986160427b40a7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ChainComplexes/FiniteCharacterAndArithmeticInterfaces/Variantebff71f9e9a609ab/WholeUnitaryGaugeTwistAndSquareZero.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2fc27dd2-c3d5-c211-81a0-64fce2fa6dec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem twistedDifferential_sq_zero (twist : CharacterTwist Index chi) :
    twist.twistedDifferential * twist.twistedDifferential = 0 := by
  calc
    twist.twistedDifferential * twist.twistedDifferential =
        twist.gauge.conjTranspose * twist.base.differential *
          (twist.gauge * twist.gauge.conjTranspose) *
          twist.base.differential * twist.gauge := by
            simp only [twistedDifferential]
            noncomm_ring
    _ = twist.gauge.conjTranspose *
          (twist.base.differential * twist.base.differential) *
          twist.gauge := by
            rw [twist.gauge_unitary_right]
            simp [mul_assoc]
    _ = 0 := by
      rw [twist.base.differential_square_zero]
      simp

/-- The twisted differential is itself an exact finite complex. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ChainComplexes/FiniteCharacterAndArithmeticInterfaces/Variantebff71f9e9a609ab/WholeUnitaryGaugeTwistAndSquareZero.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ChainComplexes/FiniteCharacterAndArithmeticInterfaces/Variantebff71f9e9a609ab/WholeUnitaryGaugeTwistAndSquareZero.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5731a1ec8252f784a2baf0ea31a01ddd5a975c82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

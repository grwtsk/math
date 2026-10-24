# exp_units_conj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b434ade6-f410-1492-6d6c-68b6cad40759",
  "kind": "theorem",
  "lexical_name": "exp_units_conj",
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
  "slug": "exp-units-conj--f890f2482c753b86ef3f1c68",
  "source": {
    "blob": "f8663de3891d055b5a5f5252d8d2a9d1bda33580",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 166,
    "path": "GRWTSK/Algebra/LinearAlgebra/MatrixExponential/Variantba6530a72b4597e6c4e00c6186f6a38774bcf633db4baf3ab08cc727874ef25e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f890f2482c753b86ef3f1c68d299da9e59fdf5c85c67d759eb2a7e9fa769b47f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixExponential/Variantba6530a72b4597e6c4e00c6186f6a38774bcf633db4baf3ab08cc727874ef25e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b434ade6-f410-1492-6d6c-68b6cad40759`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec theorem exp_units_conj (U : (Matrix m m 𝔸)ˣ) (A : Matrix m m 𝔸) :
    exp 𝕂 (U.val * A * (U⁻¹).val) = U.val * exp 𝕂 A * (U⁻¹).val := by
  letI : SeminormedRing (Matrix m m 𝔸) := Matrix.linftyOpSemiNormedRing
  letI : NormedRing (Matrix m m 𝔸) := Matrix.linftyOpNormedRing
  letI : NormedAlgebra 𝕂 (Matrix m m 𝔸) := Matrix.linftyOpNormedAlgebra
  exact exp_units_conj _ U A
#align matrix.exp_units_conj Matrix.exp_units_conj

-- TODO(mathlib4#6607): fix elaboration so `val` isn't needed
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixExponential/Variantba6530a72b4597e6c4e00c6186f6a38774bcf633db4baf3ab08cc727874ef25e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/MatrixExponential/Variantba6530a72b4597e6c4e00c6186f6a38774bcf633db4baf3ab08cc727874ef25e.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8663de3891d055b5a5f5252d8d2a9d1bda33580` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

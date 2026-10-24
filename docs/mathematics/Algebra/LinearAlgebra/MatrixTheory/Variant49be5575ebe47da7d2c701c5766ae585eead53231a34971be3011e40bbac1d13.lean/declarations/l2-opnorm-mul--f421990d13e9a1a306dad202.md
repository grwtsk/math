# l2_opNorm_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:136957fe-4d42-b476-642c-6100a3f7fa21",
  "kind": "lemma",
  "lexical_name": "l2_opNorm_mul",
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
  "slug": "l2-opnorm-mul--f421990d13e9a1a306dad202",
  "source": {
    "blob": "d429f61bc7c296bd85ba94fbda9ca2395031d93f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 238,
    "path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variant49be5575ebe47da7d2c701c5766ae585eead53231a34971be3011e40bbac1d13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f421990d13e9a1a306dad202dec298ecf0450377c32ffc731b1c926b39ec6431",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixTheory/Variant49be5575ebe47da7d2c701c5766ae585eead53231a34971be3011e40bbac1d13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:136957fe-4d42-b476-642c-6100a3f7fa21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma l2_opNorm_mul (A : Matrix m n 𝕜) (B : Matrix n l 𝕜) :
    ‖A * B‖ ≤ ‖A‖ * ‖B‖ := by
  simp only [l2_opNorm_def]
  have := (toEuclideanLin (n := n) (m := m) (𝕜 := 𝕜) ≪≫ₗ toContinuousLinearMap) A
    |>.opNorm_comp_le <| (toEuclideanLin (n := l) (m := n) (𝕜 := 𝕜) ≪≫ₗ toContinuousLinearMap) B
  convert! this
  ext1 x
  exact congr(toLp 2 ($(Matrix.toLin'_mul A B) x))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixTheory/Variant49be5575ebe47da7d2c701c5766ae585eead53231a34971be3011e40bbac1d13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Matrix/Variant49be5575ebe47da7d2c701c5766ae585eead53231a34971be3011e40bbac1d13.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d429f61bc7c296bd85ba94fbda9ca2395031d93f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

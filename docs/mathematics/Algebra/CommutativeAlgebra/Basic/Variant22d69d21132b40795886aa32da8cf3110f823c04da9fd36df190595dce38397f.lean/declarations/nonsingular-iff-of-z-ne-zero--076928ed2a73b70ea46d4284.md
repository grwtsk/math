# nonsingular_iff_of_Z_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e3a74f37-e953-7f50-36a0-d42b75889ad6",
  "kind": "lemma",
  "lexical_name": "nonsingular_iff_of_Z_ne_zero",
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
  "slug": "nonsingular-iff-of-z-ne-zero--076928ed2a73b70ea46d4284",
  "source": {
    "blob": "0a9f7c020c3bfaf5727e352af190868157558fc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 433,
    "line": 428,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant22d69d21132b40795886aa32da8cf3110f823c04da9fd36df190595dce38397f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:076928ed2a73b70ea46d4284c9608d6f6ef545ab696221b63e38be5bc0af6c45",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant22d69d21132b40795886aa32da8cf3110f823c04da9fd36df190595dce38397f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3a74f37-e953-7f50-36a0-d42b75889ad6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 428–433.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nonsingular_iff_of_Z_ne_zero {P : Fin 3 → F} (hPz : P z ≠ 0) :
    W.Nonsingular P ↔ W.Equation P ∧ (eval P W.polynomialX ≠ 0 ∨ eval P W.polynomialY ≠ 0) := by
  rw [nonsingular_of_Z_ne_zero hPz, Affine.Nonsingular, ← equation_of_Z_ne_zero hPz,
    ← eval_polynomialX_of_Z_ne_zero hPz, div_ne_zero_iff, and_iff_left <| pow_ne_zero 4 hPz,
    ← eval_polynomialY_of_Z_ne_zero hPz, div_ne_zero_iff, and_iff_left <| pow_ne_zero 3 hPz]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant22d69d21132b40795886aa32da8cf3110f823c04da9fd36df190595dce38397f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant22d69d21132b40795886aa32da8cf3110f823c04da9fd36df190595dce38397f.lean#L428).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a9f7c020c3bfaf5727e352af190868157558fc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

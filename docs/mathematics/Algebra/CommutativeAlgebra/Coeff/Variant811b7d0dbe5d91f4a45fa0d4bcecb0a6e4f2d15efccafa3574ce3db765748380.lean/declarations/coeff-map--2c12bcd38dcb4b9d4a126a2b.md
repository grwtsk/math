# coeff_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5895868b-18f1-e46d-2ed8-979d57d7393c",
  "kind": "theorem",
  "lexical_name": "coeff_map",
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
  "slug": "coeff-map--2c12bcd38dcb4b9d4a126a2b",
  "source": {
    "blob": "82ecc4c1e95a78687dcab344f3b356db2347aa22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 80,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Coeff/Variant811b7d0dbe5d91f4a45fa0d4bcecb0a6e4f2d15efccafa3574ce3db765748380.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c12bcd38dcb4b9d4a126a2bcc1942d7b50e41cc630d690d876b796d3452757c",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Coeff/Variant811b7d0dbe5d91f4a45fa0d4bcecb0a6e4f2d15efccafa3574ce3db765748380.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5895868b-18f1-e46d-2ed8-979d57d7393c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_map (n : ℕ) : coeff (p.map f) n = f (coeff p n) := by
  rw [map, eval₂_def, coeff_sum, sum]
  conv_rhs => rw [← sum_C_mul_X_pow_eq p, coeff_sum, sum, map_sum]
  refine Finset.sum_congr rfl fun x _hx => ?_
  simp only [RingHom.coe_comp, Function.comp, coeff_C_mul_X_pow]
  split_ifs <;> simp [f.map_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Coeff/Variant811b7d0dbe5d91f4a45fa0d4bcecb0a6e4f2d15efccafa3574ce3db765748380.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Coeff/Variant811b7d0dbe5d91f4a45fa0d4bcecb0a6e4f2d15efccafa3574ce3db765748380.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82ecc4c1e95a78687dcab344f3b356db2347aa22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

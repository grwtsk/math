# mulOneClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4f0dce139f6afb0fc905ac812e91f321793f2c1213045a4c1f487c2dfa28b9b3",
  "kind": "instance",
  "lexical_name": "mulOneClass",
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
  "slug": "muloneclass--6e5f872ffd94ead16339719e",
  "source": {
    "blob": "3dfb3e0b366461e3fd40c78759b8b62bccc466b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 71,
    "path": "GRWTSK/Algebra/GroupTheory/Pointwise/Variantf7b603eed626ab956b0636ca4932cbc401260410545df4cf357986ae6b7ca6f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6e5f872ffd94ead16339719e771646375b7e5caf13bb790a191078ff8c572247",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Pointwise/Variantf7b603eed626ab956b0636ca4932cbc401260410545df4cf357986ae6b7ca6f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4f0dce139f6afb0fc905ac812e91f321793f2c1213045a4c1f487c2dfa28b9b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance mulOneClass : MulOneClass (SubMulAction R M) where
  mul := (· * ·)
  one := 1
  mul_one a := by
    ext x
    simp only [mem_mul, mem_one, mul_smul_comm, exists_exists_eq_and, mul_one]
    constructor
    · rintro ⟨y, hy, r, rfl⟩
      exact smul_mem _ _ hy
    · intro hx
      exact ⟨x, hx, 1, one_smul _ _⟩
  one_mul a := by
    ext x
    simp only [mem_mul, mem_one, smul_mul_assoc, exists_exists_eq_and, one_mul]
    refine ⟨?_, fun hx => ⟨1, x, hx, one_smul _ _⟩⟩
    rintro ⟨r, y, hy, rfl⟩
    exact smul_mem _ _ hy

end MulOneClass

section Semigroup

variable [Monoid R] [MulAction R M] [Semigroup M] [IsScalarTower R M M]

-- Porting note: giving the instance the name `semiGroup`
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Pointwise/Variantf7b603eed626ab956b0636ca4932cbc401260410545df4cf357986ae6b7ca6f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Pointwise/Variantf7b603eed626ab956b0636ca4932cbc401260410545df4cf357986ae6b7ca6f8.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3dfb3e0b366461e3fd40c78759b8b62bccc466b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

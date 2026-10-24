# ring

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c2d59c9d6a1ca92bff262912c5480d3d371246fd4641b2bddbbd6db39b710d32",
  "kind": "instance",
  "lexical_name": "ring",
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
  "slug": "ring--a0aebb2faea11ce52c8b7bb8",
  "source": {
    "blob": "9a488cb77bef37e2af2b4c84b5f4174eee1625ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 481,
    "line": 463,
    "path": "GRWTSK/Algebra/GroupTheory/FreeAbelianGroup/Variant240fdfd81dd3c41a782a79bdef2c9df60a9bdb0bd50b017a4caa3b85afe7fa2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a0aebb2faea11ce52c8b7bb8b1ceba7bab020bfcb1232ca418b608ad21fb42f8",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/FreeAbelianGroup/Variant240fdfd81dd3c41a782a79bdef2c9df60a9bdb0bd50b017a4caa3b85afe7fa2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c2d59c9d6a1ca92bff262912c5480d3d371246fd4641b2bddbbd6db39b710d32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 463–481.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance ring : Ring (FreeAbelianGroup α) where
  mul_one x := by
    rw [mul_def, one_def, lift_apply_of]
    induction x using FreeAbelianGroup.induction_on with
    | zero => rfl
    | of L => rw [lift_apply_of, mul_one]
    | neg L ih => rw [map_neg, ih]
    | add x1 x2 ih1 ih2 => rw [map_add, ih1, ih2]
  one_mul x := by
    simp_rw [mul_def, one_def, lift_apply_of]
    induction x using FreeAbelianGroup.induction_on with
    | zero => rfl
    | of L => rw [lift_apply_of, one_mul]
    | neg L ih => rw [map_neg, ih]
    | add x1 x2 ih1 ih2 => rw [map_add, ih1, ih2]

variable {α}

/-- `FreeAbelianGroup.of` is a `MonoidHom` when `α` is a `Monoid`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/FreeAbelianGroup/Variant240fdfd81dd3c41a782a79bdef2c9df60a9bdb0bd50b017a4caa3b85afe7fa2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/FreeAbelianGroup/Variant240fdfd81dd3c41a782a79bdef2c9df60a9bdb0bd50b017a4caa3b85afe7fa2c.lean#L463).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a488cb77bef37e2af2b4c84b5f4174eee1625ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

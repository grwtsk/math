# ring

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:66e751c8ce3934086bcf49fef28f9c56e7adf58d97478d9b65c3e7e0d85535fa",
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
  "slug": "ring--a131f8b30e9c36acdede513a",
  "source": {
    "blob": "b76abaee0214cfd3d68e48bbf6a7e711d15f3e3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 497,
    "line": 470,
    "path": "GRWTSK/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a131f8b30e9c36acdede513a48226758bb0d75c91bebd1841f32507b7e7dba71",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:66e751c8ce3934086bcf49fef28f9c56e7adf58d97478d9b65c3e7e0d85535fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 470–497.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance ring : Ring (FreeAbelianGroup α) :=
  { FreeAbelianGroup.nonUnitalRing _,
    FreeAbelianGroup.one _ with
    mul := (· * ·)
    mul_one := fun x ↦ by
      dsimp only [(· * ·), Mul.mul, OfNat.ofNat, One.one]
      rw [lift.of]
      refine' FreeAbelianGroup.induction_on x rfl (fun L ↦ _) (fun L ih ↦ _) fun x1 x2 ih1 ih2 ↦ _
      · erw [lift.of]
        congr 1
        exact mul_one L
      · rw [map_neg, ih]
      · rw [map_add, ih1, ih2]
    one_mul := fun x ↦ by
      dsimp only [(· * ·), Mul.mul, OfNat.ofNat, One.one]
      refine' FreeAbelianGroup.induction_on x rfl _ _ _
      · intro L
        rw [lift.of, lift.of]
        congr 1
        exact one_mul L
      · intro L ih
        rw [map_neg, ih]
      · intro x1 x2 ih1 ih2
        rw [map_add, ih1, ih2] }

variable {α}

/-- `FreeAbelianGroup.of` is a `MonoidHom` when `α` is a `Monoid`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/FreeAbelianGroup/Variant2bc6b10a4d46f236c1ecc0502e9e2c0cd3470fb8a5b0008d07a46e30b41e2637.lean#L470).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b76abaee0214cfd3d68e48bbf6a7e711d15f3e3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

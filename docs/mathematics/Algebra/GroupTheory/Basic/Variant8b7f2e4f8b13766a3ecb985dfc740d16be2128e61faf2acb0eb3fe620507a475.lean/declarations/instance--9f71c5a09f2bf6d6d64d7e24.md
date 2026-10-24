# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:06a48563e61d923dc6ac7741a9d7bdcea7554045e3b178322014563b062899b6",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--9f71c5a09f2bf6d6d64d7e24",
  "source": {
    "blob": "708fc1d96c2bb979a724d161dbebd6dac46d7fef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 264,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant8b7f2e4f8b13766a3ecb985dfc740d16be2128e61faf2acb0eb3fe620507a475.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9f71c5a09f2bf6d6d64d7e24f702e254f63e79c6ed37bc82d1a82ae266fea060",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant8b7f2e4f8b13766a3ecb985dfc740d16be2128e61faf2acb0eb3fe620507a475.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:06a48563e61d923dc6ac7741a9d7bdcea7554045e3b178322014563b062899b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : IsScalarTower k k[G] ρ.asModule where
  smul_assoc t x v := by
    revert t
    apply x.induction_on
    · simp
    · intro y z hy hz
      simp [add_smul, hy, hz]
    · intro s y hy t
      rw [← smul_assoc, smul_eq_mul, hy (t * s), ← smul_eq_mul, smul_assoc]
      aesop

end MonoidAlgebra

section Norm

variable {k G V : Type*} [Semiring k] [Group G] [Fintype G] [AddCommMonoid V] [Module k V]
variable (ρ : Representation k G V)

/-- Given a representation `(V, ρ)` of a finite group `G`, `norm ρ` is the linear map `V →ₗ[k] V`
defined by `x ↦ ∑ ρ g x` for `g` in `G`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant8b7f2e4f8b13766a3ecb985dfc740d16be2128e61faf2acb0eb3fe620507a475.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant8b7f2e4f8b13766a3ecb985dfc740d16be2128e61faf2acb0eb3fe620507a475.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `708fc1d96c2bb979a724d161dbebd6dac46d7fef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

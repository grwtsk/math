# preimage_smul_setₛₗ_of_isUnit_isUnit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:933fa9bd-a889-41cb-12db-638af8940dd2",
  "kind": "theorem",
  "lexical_name": "preimage_smul_setₛₗ_of_isUnit_isUnit",
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
  "slug": "preimage-smul-set-of-isunit-isunit--828cef3875d2403e570b7d9f",
  "source": {
    "blob": "06954a0544f0d7731733937207996bc834720cd5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 97,
    "path": "GRWTSK/Algebra/GroupTheory/Pointwise/Variant7efb395d03fc60da7bf8bb44ffb0e945f59f32d63e08cc5de98469b7a8e27e23.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:828cef3875d2403e570b7d9ff00c0e82c4fa3aa51ccec0d6c3557c983fa71bc2",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Pointwise/Variant7efb395d03fc60da7bf8bb44ffb0e945f59f32d63e08cc5de98469b7a8e27e23.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:933fa9bd-a889-41cb-12db-638af8940dd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem preimage_smul_setₛₗ_of_isUnit_isUnit (f : F)
    (hc : IsUnit c) (hc' : IsUnit (σ c)) (t : Set β) : f ⁻¹' (σ c • t) = c • f ⁻¹' t :=
  preimage_smul_setₛₗ' hc.smul_bijective.surjective hc'.smul_bijective.injective

@[deprecated (since := "2025-03-04")]
alias preimage_vadd_setₛₗ_of_addUnits := preimage_vadd_setₛₗ_of_isAddUnit_isAddUnit

@[to_additive existing, deprecated (since := "2025-03-04")]
alias preimage_smul_setₛₗ_of_units := preimage_smul_setₛₗ_of_isUnit_isUnit

/-- `preimage_smul_setₛₗ` when `c` is a unit and `σ` is a monoid homomorphism. -/
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Pointwise/Variant7efb395d03fc60da7bf8bb44ffb0e945f59f32d63e08cc5de98469b7a8e27e23.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Pointwise/Variant7efb395d03fc60da7bf8bb44ffb0e945f59f32d63e08cc5de98469b7a8e27e23.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06954a0544f0d7731733937207996bc834720cd5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

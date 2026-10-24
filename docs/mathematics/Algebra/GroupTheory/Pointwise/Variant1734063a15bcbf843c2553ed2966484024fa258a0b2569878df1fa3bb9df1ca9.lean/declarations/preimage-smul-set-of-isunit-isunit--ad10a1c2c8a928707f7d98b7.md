# preimage_smul_setₛₗ_of_isUnit_isUnit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:65f5cf87-aa72-970f-ce8d-5e73d650583f",
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
  "slug": "preimage-smul-set-of-isunit-isunit--ad10a1c2c8a928707f7d98b7",
  "source": {
    "blob": "d12ca38f69b6b052d72feea5f442b70703b4d9d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 95,
    "path": "GRWTSK/Algebra/GroupTheory/Pointwise/Variant1734063a15bcbf843c2553ed2966484024fa258a0b2569878df1fa3bb9df1ca9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad10a1c2c8a928707f7d98b7492b0bed28d81ad2d0b06d0323ce18d01e4dbc9c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Pointwise/Variant1734063a15bcbf843c2553ed2966484024fa258a0b2569878df1fa3bb9df1ca9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65f5cf87-aa72-970f-ce8d-5e73d650583f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem preimage_smul_setₛₗ_of_isUnit_isUnit (f : F)
    (hc : IsUnit c) (hc' : IsUnit (σ c)) (t : Set β) : f ⁻¹' (σ c • t) = c • f ⁻¹' t :=
  preimage_smul_setₛₗ' hc.smul_bijective.surjective hc'.smul_bijective.injective

/-- `preimage_smul_setₛₗ` when `c` is a unit and `σ` is a monoid homomorphism. -/
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Pointwise/Variant1734063a15bcbf843c2553ed2966484024fa258a0b2569878df1fa3bb9df1ca9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Pointwise/Variant1734063a15bcbf843c2553ed2966484024fa258a0b2569878df1fa3bb9df1ca9.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d12ca38f69b6b052d72feea5f442b70703b4d9d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

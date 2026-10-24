# isScalarTower_of_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63f92810-2cf2-e260-4b07-62d00518e37b",
  "kind": "theorem",
  "lexical_name": "isScalarTower_of_injective",
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
  "slug": "isscalartower-of-injective--2e947b8ccf1d66560ebc6b0f",
  "source": {
    "blob": "a025e05e7164be2b4072a74b03e49af6bb50ce10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 388,
    "line": 385,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant3bc852f537b6e7253c9c8e11b09fc1f92e7d37c4c6d543d409baf2021a0b6353.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e947b8ccf1d66560ebc6b0f1e56152ab6d26122742b29cb32f0cc8e17b16538",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variant3bc852f537b6e7253c9c8e11b09fc1f92e7d37c4c6d543d409baf2021a0b6353.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63f92810-2cf2-e260-4b07-62d00518e37b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 385–388.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isScalarTower_of_injective [SMul R S] [CompatibleSMul M M₂ R S] [IsScalarTower R S M₂]
    (f : M →ₗ[S] M₂) (hf : Function.Injective f) : IsScalarTower R S M where
  smul_assoc r s _ := hf <| by rw [f.map_smul_of_tower r, map_smul, map_smul, smul_assoc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variant3bc852f537b6e7253c9c8e11b09fc1f92e7d37c4c6d543d409baf2021a0b6353.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variant3bc852f537b6e7253c9c8e11b09fc1f92e7d37c4c6d543d409baf2021a0b6353.lean#L385).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a025e05e7164be2b4072a74b03e49af6bb50ce10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

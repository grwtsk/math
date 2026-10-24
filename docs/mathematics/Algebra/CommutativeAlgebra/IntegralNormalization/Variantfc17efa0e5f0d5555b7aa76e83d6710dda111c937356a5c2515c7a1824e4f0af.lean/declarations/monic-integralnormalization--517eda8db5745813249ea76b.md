# monic_integralNormalization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5e6953e-3223-a7ec-5d8e-0075a3a26a9a",
  "kind": "theorem",
  "lexical_name": "monic_integralNormalization",
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
  "slug": "monic-integralnormalization--517eda8db5745813249ea76b",
  "source": {
    "blob": "a925e5e159acb43ee2da9ca8b57482ec40d3ddb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 103,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IntegralNormalization/Variantfc17efa0e5f0d5555b7aa76e83d6710dda111c937356a5c2515c7a1824e4f0af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:517eda8db5745813249ea76b05c0cb3de6ac249a8648514084583a6b609d3484",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IntegralNormalization/Variantfc17efa0e5f0d5555b7aa76e83d6710dda111c937356a5c2515c7a1824e4f0af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5e6953e-3223-a7ec-5d8e-0075a3a26a9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem monic_integralNormalization (hp : p ≠ 0) : Monic (integralNormalization p) :=
  monic_of_degree_le p.natDegree
    (Finset.sup_le fun i h =>
      WithBot.coe_le_coe.2 <| le_natDegree_of_mem_supp i <| support_integralNormalization_subset h)
    (integralNormalization_coeff_natDegree hp)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IntegralNormalization/Variantfc17efa0e5f0d5555b7aa76e83d6710dda111c937356a5c2515c7a1824e4f0af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IntegralNormalization/Variantfc17efa0e5f0d5555b7aa76e83d6710dda111c937356a5c2515c7a1824e4f0af.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a925e5e159acb43ee2da9ca8b57482ec40d3ddb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

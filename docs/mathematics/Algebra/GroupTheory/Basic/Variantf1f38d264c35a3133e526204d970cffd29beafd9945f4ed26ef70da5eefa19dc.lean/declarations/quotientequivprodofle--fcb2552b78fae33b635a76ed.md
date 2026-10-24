# quotientEquivProdOfLE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bea688081ef7d1de68c1dca3e15961f8fb023d5dc9a44151ed6840680574f97f",
  "kind": "def",
  "lexical_name": "quotientEquivProdOfLE",
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
  "slug": "quotientequivprodofle--fcb2552b78fae33b635a76ed",
  "source": {
    "blob": "a26d3a95fa5836d451f1e40803a417a2a64221a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 425,
    "line": 412,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fcb2552b78fae33b635a76ed5d40cab7381b965db768526461d6b0525aa615f3",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bea688081ef7d1de68c1dca3e15961f8fb023d5dc9a44151ed6840680574f97f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 412–425.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def quotientEquivProdOfLE (h_le : s ≤ t) : α ⧸ s ≃ (α ⧸ t) × t ⧸ s.subgroupOf t :=
  quotientEquivProdOfLE' h_le Quotient.out Quotient.out_eq'

@[deprecated (since := "2025-03-11")]
alias AddSubgroup.quotientEquivSumOfLE := AddSubgroup.quotientEquivProdOfLE

@[deprecated (since := "2025-03-11")]
alias AddSubgroup.quotientEquivSumOfLE_apply := AddSubgroup.quotientEquivProdOfLE_apply

@[deprecated (since := "2025-03-11")]
alias AddSubgroup.quotientEquivSumOfLE_symm_apply := AddSubgroup.quotientEquivProdOfLE_symm_apply

/-- If `s ≤ t`, then there is an embedding `s ⧸ H.subgroupOf s ↪ t ⧸ H.subgroupOf t`. -/
@[to_additive "If `s ≤ t`, there is an embedding `s ⧸ H.addSubgroupOf s ↪ t ⧸ H.addSubgroupOf t`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantf1f38d264c35a3133e526204d970cffd29beafd9945f4ed26ef70da5eefa19dc.lean#L412).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a26d3a95fa5836d451f1e40803a417a2a64221a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

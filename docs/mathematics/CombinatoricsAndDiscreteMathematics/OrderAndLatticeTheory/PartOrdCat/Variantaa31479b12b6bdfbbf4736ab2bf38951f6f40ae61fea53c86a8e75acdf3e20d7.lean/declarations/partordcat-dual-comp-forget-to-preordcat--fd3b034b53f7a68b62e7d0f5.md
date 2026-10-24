# partOrdCat_dual_comp_forget_to_preordCat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1a66643c-902f-3814-9bf6-b0630dc66304",
  "kind": "theorem",
  "lexical_name": "partOrdCat_dual_comp_forget_to_preordCat",
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
  "slug": "partordcat-dual-comp-forget-to-preordcat--fd3b034b53f7a68b62e7d0f5",
  "source": {
    "blob": "9cda5e613df02b02dc6f48d231c8c2d715c4a62b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 107,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartOrdCat/Variantaa31479b12b6bdfbbf4736ab2bf38951f6f40ae61fea53c86a8e75acdf3e20d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd3b034b53f7a68b62e7d0f562892f2be90c86f8661b95aacc779726ac604539",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartOrdCat/Variantaa31479b12b6bdfbbf4736ab2bf38951f6f40ae61fea53c86a8e75acdf3e20d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a66643c-902f-3814-9bf6-b0630dc66304`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem partOrdCat_dual_comp_forget_to_preordCat :
    PartOrdCat.dual ⋙ forget₂ PartOrdCat PreordCat =
      forget₂ PartOrdCat PreordCat ⋙ PreordCat.dual :=
  rfl
set_option linter.uppercaseLean3 false in
#align PartOrd_dual_comp_forget_to_Preord partOrdCat_dual_comp_forget_to_preordCat

/-- `antisymmetrization` as a functor. It is the free functor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartOrdCat/Variantaa31479b12b6bdfbbf4736ab2bf38951f6f40ae61fea53c86a8e75acdf3e20d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartOrdCat/Variantaa31479b12b6bdfbbf4736ab2bf38951f6f40ae61fea53c86a8e75acdf3e20d7.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9cda5e613df02b02dc6f48d231c8c2d715c4a62b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

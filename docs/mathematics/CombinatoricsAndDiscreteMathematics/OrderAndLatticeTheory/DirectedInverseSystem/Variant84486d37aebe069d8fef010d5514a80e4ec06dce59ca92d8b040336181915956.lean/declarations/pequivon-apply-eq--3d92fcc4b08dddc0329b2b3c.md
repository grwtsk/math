# pEquivOn_apply_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ef62598-a640-943e-2fdc-3e74a42103cf",
  "kind": "theorem",
  "lexical_name": "pEquivOn_apply_eq",
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
  "slug": "pequivon-apply-eq--3d92fcc4b08dddc0329b2b3c",
  "source": {
    "blob": "e3705ccb91080d659f441177ab47681a8a2fd2c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 460,
    "line": 452,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DirectedInverseSystem/Variant84486d37aebe069d8fef010d5514a80e4ec06dce59ca92d8b040336181915956.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d92fcc4b08dddc0329b2b3c5cacdfb6c14bfb40d3eb4029368f43702dc694a4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DirectedInverseSystem/Variant84486d37aebe069d8fef010d5514a80e4ec06dce59ca92d8b040336181915956.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ef62598-a640-943e-2fdc-3e74a42103cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 452–460.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pEquivOn_apply_eq (h : IsLowerSet (s ∩ t))
    {e₁ : PEquivOn f equivSucc s} {e₂ : PEquivOn f equivSucc t} {i} {his : i ∈ s} {hit : i ∈ t} :
    e₁.equiv ⟨i, his⟩ = e₂.equiv ⟨i, hit⟩ :=
  show (e₁.restrict inter_subset_left).equiv ⟨i, his, hit⟩ =
       (e₂.restrict inter_subset_right).equiv ⟨i, his, hit⟩ from
  congr_fun (congr_arg _ <| unique_pEquivOn h) _

set_option backward.isDefEq.respectTransparency.types false in
/-- Extend a partial family of bijections by one step. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DirectedInverseSystem/Variant84486d37aebe069d8fef010d5514a80e4ec06dce59ca92d8b040336181915956.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DirectedInverseSystem/Variant84486d37aebe069d8fef010d5514a80e4ec06dce59ca92d8b040336181915956.lean#L452).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3705ccb91080d659f441177ab47681a8a2fd2c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

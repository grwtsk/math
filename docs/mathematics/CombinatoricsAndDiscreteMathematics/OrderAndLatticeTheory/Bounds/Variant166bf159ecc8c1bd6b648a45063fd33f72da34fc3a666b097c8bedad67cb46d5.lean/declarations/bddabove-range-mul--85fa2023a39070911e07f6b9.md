# bddAbove_range_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1d59efeb2b69dfda066afa131da02c525cd17139",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 30,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/16/166bf159ecc8c1bd6b648a45063fd33f72da34fc3a666b097c8bedad67cb46d5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:040357c5-ba5d-82e3-9cbf-73ef47913c7b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3e5ff248-20be-2ed0-8249-29dc1f2f6015",
  "kind": "theorem",
  "lexical_name": "bddAbove_range_mul",
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
  "slug": "bddabove-range-mul--85fa2023a39070911e07f6b9",
  "source": {
    "blob": "1d59efeb2b69dfda066afa131da02c525cd17139",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 30,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Variant166bf159ecc8c1bd6b648a45063fd33f72da34fc3a666b097c8bedad67cb46d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:85fa2023a39070911e07f6b99abd9485d5b5083de2448fdd8bf49dc55588c685",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Variant166bf159ecc8c1bd6b648a45063fd33f72da34fc3a666b097c8bedad67cb46d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e5ff248-20be-2ed0-8249-29dc1f2f6015`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bddAbove_range_mul {α β : Type*} [Nonempty α] {u v : α → β} [Preorder β] [Zero β] [Mul β]
    [PosMulMono β] [MulPosMono β] (hu : BddAbove (Set.range u)) (hu0 : 0 ≤ u)
    (hv : BddAbove (Set.range v)) (hv0 : 0 ≤ v) : BddAbove (Set.range (u * v)) :=
  letI : Zero (β × β) := ⟨(0, 0)⟩
  BddAbove.range_comp_of_nonneg (f := fun i ↦ (u i, v i)) (g := fun x ↦ x.1 * x.2)
    (bddAbove_range_prod.mpr ⟨hu, hv⟩) (fun x ↦ ⟨hu0 x, hv0 x⟩) ((monotone_fst.monotoneOn _).mul
      (monotone_snd.monotoneOn _) (fun _ hx ↦ hx.1) (fun _ hx ↦ hx.2))
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Variant166bf159ecc8c1bd6b648a45063fd33f72da34fc3a666b097c8bedad67cb46d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Variant166bf159ecc8c1bd6b648a45063fd33f72da34fc3a666b097c8bedad67cb46d5.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d59efeb2b69dfda066afa131da02c525cd17139` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# comap_map_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "38b2a6e4490e28926948c0188cac9d0921097c9c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 452,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/72/72eb2f095b805cc0fa5aea11837e3ef9128dc23d3176359cb10b60f3fc9a4f17.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:be2c791a-b337-a913-f92f-a97bf2604e26",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:485c46c1-fdbe-e1d6-44f0-9e6f5ce20c12",
  "kind": "theorem",
  "lexical_name": "comap_map_eq",
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
  "slug": "comap-map-eq--bac8a7cda7a782c0d5b08361",
  "source": {
    "blob": "38b2a6e4490e28926948c0188cac9d0921097c9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 459,
    "line": 452,
    "path": "GRWTSK/Algebra/GroupTheory/Ker/Variant72eb2f095b805cc0fa5aea11837e3ef9128dc23d3176359cb10b60f3fc9a4f17.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bac8a7cda7a782c0d5b08361be8fb028f0f499fd09087f6474800f5ea6bf6ab9",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Ker/Variant72eb2f095b805cc0fa5aea11837e3ef9128dc23d3176359cb10b60f3fc9a4f17.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:485c46c1-fdbe-e1d6-44f0-9e6f5ce20c12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 452–459.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comap_map_eq (H : Subgroup G) : comap f (map f H) = H ⊔ f.ker := by
  refine le_antisymm ?_ (sup_le (le_comap_map _ _) (ker_le_comap _ _))
  intro x hx; simp only [mem_map, mem_comap] at hx
  rcases hx with ⟨y, hy, hy'⟩
  rw [← mul_inv_cancel_left y x]
  exact mul_mem_sup hy (by simp [mem_ker, hy'])

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Ker/Variant72eb2f095b805cc0fa5aea11837e3ef9128dc23d3176359cb10b60f3fc9a4f17.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Ker/Variant72eb2f095b805cc0fa5aea11837e3ef9128dc23d3176359cb10b60f3fc9a4f17.lean#L452).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38b2a6e4490e28926948c0188cac9d0921097c9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

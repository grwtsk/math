# rightHomologyData_g'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2d5d00e3d6d6f7aa40f30bf85674754530b47fa4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 245,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9e/9e48fcf0ec179ae055836f21639f92fb080cd709acd5a9e51a941897dc1815dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:067cb974-c765-307b-5c74-005c04c27625",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9ccc0e77-33e9-68b9-d268-30d49b1b2487",
  "kind": "lemma",
  "lexical_name": "rightHomologyData_g'",
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
  "slug": "righthomologydata-g--9be4dca4e8cb4bf8a7895f1f",
  "source": {
    "blob": "2d5d00e3d6d6f7aa40f30bf85674754530b47fa4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 245,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant9e48fcf0ec179ae055836f21639f92fb080cd709acd5a9e51a941897dc1815dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9be4dca4e8cb4bf8a7895f1f072b62f306c015a3b51971ba38a0ebf697fd2501",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant9e48fcf0ec179ae055836f21639f92fb080cd709acd5a9e51a941897dc1815dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ccc0e77-33e9-68b9-d268-30d49b1b2487`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rightHomologyData_g' (h : (K.sc' i j k).RightHomologyData) (hk'' : e.f k = k') :
    (rightHomologyData K e hj' hi hi' hk hk' h).g' = h.g' ≫ (K.extendXIso e hk'').inv := by
  rw [← cancel_epi h.p, ← cancel_epi (extendXIso K e hj').hom]
  have := (rightHomologyData K e hj' hi hi' hk hk' h).p_g'
  dsimp at this
  rw [assoc] at this
  rw [this, K.extend_d_eq e hj' hk'', h.p_g'_assoc, shortComplexFunctor'_obj_g]

/-- The homology data of `(K.extend e).sc' i' j' k'` that is deduced
from a homology data of `K.sc' i j k`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant9e48fcf0ec179ae055836f21639f92fb080cd709acd5a9e51a941897dc1815dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant9e48fcf0ec179ae055836f21639f92fb080cd709acd5a9e51a941897dc1815dc.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d5d00e3d6d6f7aa40f30bf85674754530b47fa4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# rightHomologyIso_hom_comp_ι

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "858ffdc8be975b60766d728ba97444fe77ed9244",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 818,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5a/5a61ae5b7229bde50e402c57e961b6eb3ed2ddacc2d903f2c7b95dea6939d3c9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5d3660f0-469a-7d86-b80d-57da805fd543",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b037799a-4835-e7a3-612b-c66b7e1f8bcc",
  "kind": "lemma",
  "lexical_name": "rightHomologyIso_hom_comp_ι",
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
  "slug": "righthomologyiso-hom-comp--70796691d698f6056ccf6428",
  "source": {
    "blob": "858ffdc8be975b60766d728ba97444fe77ed9244",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 829,
    "line": 818,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightHomology/Variant5a61ae5b7229bde50e402c57e961b6eb3ed2ddacc2d903f2c7b95dea6939d3c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70796691d698f6056ccf6428c937b63b4a1c8b1c5f13e78329511b765b0fb10f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightHomology/Variant5a61ae5b7229bde50e402c57e961b6eb3ed2ddacc2d903f2c7b95dea6939d3c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b037799a-4835-e7a3-612b-c66b7e1f8bcc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 818–829.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rightHomologyIso_hom_comp_ι :
    h.rightHomologyIso.hom ≫ h.ι = S.rightHomologyι ≫ h.opcyclesIso.hom := by
  simp only [← cancel_mono h.opcyclesIso.inv, ← cancel_epi h.rightHomologyIso.inv,
    assoc, Iso.inv_hom_id_assoc, Iso.hom_inv_id, comp_id, rightHomologyIso_inv_comp_rightHomologyι]

end RightHomologyData

namespace RightHomologyMapData

variable {φ : S₁ ⟶ S₂} {h₁ : S₁.RightHomologyData} {h₂ : S₂.RightHomologyData}
  (γ : RightHomologyMapData φ h₁ h₂)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightHomology/Variant5a61ae5b7229bde50e402c57e961b6eb3ed2ddacc2d903f2c7b95dea6939d3c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightHomology/Variant5a61ae5b7229bde50e402c57e961b6eb3ed2ddacc2d903f2c7b95dea6939d3c9.lean#L818).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `858ffdc8be975b60766d728ba97444fe77ed9244` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

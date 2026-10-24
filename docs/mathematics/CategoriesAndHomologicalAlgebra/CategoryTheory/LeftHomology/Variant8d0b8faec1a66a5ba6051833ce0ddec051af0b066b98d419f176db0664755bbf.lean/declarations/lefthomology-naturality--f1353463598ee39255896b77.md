# leftHomologyπ_naturality'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ed1f52ae89029d0a5f25173db8e311761130adb1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 507,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8d0b8faec1a66a5ba6051833ce0ddec051af0b066b98d419f176db0664755bbf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:35f872b1-65ed-2318-8280-5d21a8a9e34b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ff4051c3-9b48-d3ab-845f-e930cb450990",
  "kind": "lemma",
  "lexical_name": "leftHomologyπ_naturality'",
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
  "slug": "lefthomology-naturality--f1353463598ee39255896b77",
  "source": {
    "blob": "ed1f52ae89029d0a5f25173db8e311761130adb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 518,
    "line": 507,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftHomology/Variant8d0b8faec1a66a5ba6051833ce0ddec051af0b066b98d419f176db0664755bbf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1353463598ee39255896b77887b22c2b9269edb7b1733e4c3a42e22a9cce4b1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftHomology/Variant8d0b8faec1a66a5ba6051833ce0ddec051af0b066b98d419f176db0664755bbf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff4051c3-9b48-d3ab-845f-e930cb450990`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 507–518.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma leftHomologyπ_naturality' :
    h₁.π ≫ leftHomologyMap' φ h₁ h₂ = cyclesMap' φ h₁ h₂ ≫ h₂.π :=
  LeftHomologyMapData.commπ _

end

section

variable [HasLeftHomology S₁] [HasLeftHomology S₂] (φ : S₁ ⟶ S₂)

/-- The (left) homology map `S₁.leftHomology ⟶ S₂.leftHomology` induced by a morphism
`S₁ ⟶ S₂` of short complexes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftHomology/Variant8d0b8faec1a66a5ba6051833ce0ddec051af0b066b98d419f176db0664755bbf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftHomology/Variant8d0b8faec1a66a5ba6051833ce0ddec051af0b066b98d419f176db0664755bbf.lean#L507).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed1f52ae89029d0a5f25173db8e311761130adb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

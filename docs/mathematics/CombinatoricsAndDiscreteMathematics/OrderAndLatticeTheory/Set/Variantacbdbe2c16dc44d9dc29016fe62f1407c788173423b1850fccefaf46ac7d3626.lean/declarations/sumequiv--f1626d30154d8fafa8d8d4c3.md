# sumEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e45cac00082ba2a6859c919e3e3f1ec35b38c4bb1bab8e0c3e6296e0224bf3a8",
  "kind": "def",
  "lexical_name": "sumEquiv",
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
  "slug": "sumequiv--f1626d30154d8fafa8d8d4c3",
  "source": {
    "blob": "569dbbfdaec3806e522bc0201961eac03fd68fb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 24,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantacbdbe2c16dc44d9dc29016fe62f1407c788173423b1850fccefaf46ac7d3626.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f1626d30154d8fafa8d8d4c36614df3d8d21d04d98605e476ab3421fa0dcb8ea",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantacbdbe2c16dc44d9dc29016fe62f1407c788173423b1850fccefaf46ac7d3626.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e45cac00082ba2a6859c919e3e3f1ec35b38c4bb1bab8e0c3e6296e0224bf3a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sumEquiv : Set (α ⊕ β) ≃o Set α × Set β where
  toFun s := (Sum.inl ⁻¹' s, Sum.inr ⁻¹' s)
  invFun s := Sum.inl '' s.1 ∪ Sum.inr '' s.2
  left_inv s := image_preimage_inl_union_image_preimage_inr s
  right_inv s := by
    simp [preimage_image_eq _ Sum.inl_injective, preimage_image_eq _ Sum.inr_injective]
  map_rel_iff' := by simp [subset_def]

end Set

namespace OrderIso

section LE

variable [LE α] [LE β]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantacbdbe2c16dc44d9dc29016fe62f1407c788173423b1850fccefaf46ac7d3626.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantacbdbe2c16dc44d9dc29016fe62f1407c788173423b1850fccefaf46ac7d3626.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `569dbbfdaec3806e522bc0201961eac03fd68fb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

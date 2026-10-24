# exists_setup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ba974b90b63a24fd5b63efb0d7c0c4cdb95a95c1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 18124,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d5e80a6680b36a13536860c6633a03b566e145ba78e1cb4b77270d4f08e027b7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:02541dc6-acd0-2209-3c5f-ca7427575d89",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:31c1caf0-3819-58f4-74be-84410488cb6b",
  "kind": "theorem",
  "lexical_name": "exists_setup",
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
  "slug": "exists-setup--5d36493ff7b8e72f2dbbfe45",
  "source": {
    "blob": "ba974b90b63a24fd5b63efb0d7c0c4cdb95a95c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 18143,
    "line": 18124,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantd5e80a6680b36a13536860c6633a03b566e145ba78e1cb4b77270d4f08e027b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d36493ff7b8e72f2dbbfe45cbaa16cde57a553ac28f7e17aa782c6a811419ab",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantd5e80a6680b36a13536860c6633a03b566e145ba78e1cb4b77270d4f08e027b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31c1caf0-3819-58f4-74be-84410488cb6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18124–18143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_setup (hC : IsComponent (PrimaryEdge P) C)
    (ho : ∃ r ∈ C, SignedPath (PrimaryEdge P) r r true)
    (hf : ForbiddenConfiguration P C) : Nonempty (ChannelSetup L) := by
  obtain ⟨r,hr,ho⟩ := ho
  obtain ⟨D,hD,I,J,k,s,p,n,g,j,h,ht,hJ,hk,hs,hax,hζ,htr,hp,hg,hn,hα,hβ,hκ,hj,hLam,hh,_,hη⟩ := hf.channel_paths
  obtain ⟨b,hδ⟩ := hD.connected hs hk
  obtain ⟨Rδ,hRδ⟩ := DataWrapper.Formed.of_secondary_path (L := L) hC hr ho hδ
  obtain ⟨Rα,hRα⟩ := DataWrapper.Formed.of_secondary_path (L := L) hC hr ho hα
  obtain ⟨Rβ,hRβ⟩ := DataWrapper.Formed.of_secondary_path (L := L) hC hr ho hβ
  obtain ⟨Rκ,hRκ⟩ := DataWrapper.Formed.of_secondary_path (L := L) hC hr ho hκ
  obtain ⟨RLam,hRLam⟩ := DataWrapper.Formed.of_secondary_path (L := L) hC hr ho hLam
  obtain ⟨Rη,hRη⟩ := DataWrapper.Formed.of_secondary_path (L := L) hC hr ho hη
  obtain ⟨Rζ,hRζ⟩ := (PositiveDataWrapper.Formed.identity (W := L.witnesses) (I := AxProfile P s)).path hζ
  obtain ⟨U,hU⟩ := DataTail.Formed.exists_tail (L := L) hC hr ho hn
  exact ⟨⟨s,I,J,k,p,n,g,j,h,ht,htr,hax,hj,hh,b,Rδ,hRδ,
    ⟨RLam,Rα,Rη⟩,⟨hRLam,hRα,hRη⟩,Rβ,hRβ,Rκ,hRκ,Rζ,hRζ,U,hU⟩⟩
end ChannelSetup

namespace LogicCode
variable (L : LogicCode S)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantd5e80a6680b36a13536860c6633a03b566e145ba78e1cb4b77270d4f08e027b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantd5e80a6680b36a13536860c6633a03b566e145ba78e1cb4b77270d4f08e027b7.lean#L18124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba974b90b63a24fd5b63efb0d7c0c4cdb95a95c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

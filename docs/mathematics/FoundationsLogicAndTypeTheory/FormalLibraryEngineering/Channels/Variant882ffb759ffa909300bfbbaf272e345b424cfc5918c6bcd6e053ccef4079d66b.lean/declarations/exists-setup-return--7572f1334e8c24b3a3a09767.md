# exists_setup_return

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:daea1817-adb5-4d5c-741b-90867ec76798",
  "kind": "theorem",
  "lexical_name": "exists_setup_return",
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
  "slug": "exists-setup-return--7572f1334e8c24b3a3a09767",
  "source": {
    "blob": "9f27095a5042c2e106babe2ec20a6039c2922cab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 986,
    "line": 962,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Channels/Variant882ffb759ffa909300bfbbaf272e345b424cfc5918c6bcd6e053ccef4079d66b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7572f1334e8c24b3a3a097679d6ce88cd20f4a1411a71a5abdf99e07bd98c686",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Channels/Variant882ffb759ffa909300bfbbaf272e345b424cfc5918c6bcd6e053ccef4079d66b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:daea1817-adb5-4d5c-741b-90867ec76798`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 962–986.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_setup_return (hC : IsComponent (PrimaryEdge P) C)
    (ho : ∃ r ∈ C, SignedPath (PrimaryEdge P) r r true)
    (hf : ForbiddenConfiguration P C) : ∃ K : ChannelSetup L, Nonempty (ChannelReturn K) := by
  obtain ⟨r,hr,ho⟩ := ho
  obtain ⟨D,hD,I,J,k,s,p,n,g,j,h,ht,hJ,hk,hs,hax,hζ,htr,hp,hg,hn,hα,hβ,hκ,hj,hLam,hh,_,hη⟩ :=
    hf.channel_paths
  obtain ⟨b,hδ⟩ := hD.connected hs hk
  obtain ⟨Rδ,hRδ⟩ := DataWrapper.Formed.of_secondary_path (L := L) hC hr ho hδ
  obtain ⟨Rret,hRret⟩ := DataWrapper.Formed.of_secondary_path (L := L) hC hr ho
    (hD.matched_return hs hk hδ)
  obtain ⟨Rα,hRα⟩ := DataWrapper.Formed.of_secondary_path (L := L) hC hr ho hα
  obtain ⟨Rβ,hRβ⟩ := DataWrapper.Formed.of_secondary_path (L := L) hC hr ho hβ
  obtain ⟨Rκ,hRκ⟩ := DataWrapper.Formed.of_secondary_path (L := L) hC hr ho hκ
  obtain ⟨RLam,hRLam⟩ := DataWrapper.Formed.of_secondary_path (L := L) hC hr ho hLam
  obtain ⟨Rη,hRη⟩ := DataWrapper.Formed.of_secondary_path (L := L) hC hr ho hη
  obtain ⟨Rζ,hRζ⟩ := (PositiveDataWrapper.Formed.identity (W := L.witnesses) (I := AxProfile P
    s)).path hζ
  obtain ⟨U,hU⟩ := DataTail.Formed.exists_tail (L := L) hC hr ho hn
  let K : ChannelSetup L := ⟨s,I,J,k,p,n,g,j,h,ht,htr,hax,hj,hh,b,Rδ,hRδ,
    ⟨RLam,Rα,Rη⟩,⟨hRLam,hRα,hRη⟩,Rβ,hRβ,Rκ,hRκ,Rζ,hRζ,U,hU⟩
  exact ⟨K,⟨⟨Rret,hRret⟩⟩⟩
end ChannelSetup

namespace ChannelReturn
variable {K : ChannelSetup L} (R : ChannelReturn K)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Channels/Variant882ffb759ffa909300bfbbaf272e345b424cfc5918c6bcd6e053ccef4079d66b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Channels/Variant882ffb759ffa909300bfbbaf272e345b424cfc5918c6bcd6e053ccef4079d66b.lean#L962).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f27095a5042c2e106babe2ec20a6039c2922cab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

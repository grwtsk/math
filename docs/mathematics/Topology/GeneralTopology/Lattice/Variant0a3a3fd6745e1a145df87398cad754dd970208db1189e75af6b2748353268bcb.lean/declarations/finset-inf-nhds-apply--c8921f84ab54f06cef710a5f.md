# finset_inf_nhds_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "34441d3c15c55beeb76d05d2fb4706d83086bb37",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 160,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0a/0a3a3fd6745e1a145df87398cad754dd970208db1189e75af6b2748353268bcb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c0241538-255d-9e8e-0fa2-8c50c5f0fad9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2bba66c3-4b13-95ec-f37b-fbc6077d4ab5",
  "kind": "lemma",
  "lexical_name": "finset_inf_nhds_apply",
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
  "slug": "finset-inf-nhds-apply--c8921f84ab54f06cef710a5f",
  "source": {
    "blob": "34441d3c15c55beeb76d05d2fb4706d83086bb37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 160,
    "path": "GRWTSK/Topology/GeneralTopology/Lattice/Variant0a3a3fd6745e1a145df87398cad754dd970208db1189e75af6b2748353268bcb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8921f84ab54f06cef710a5feb0093f3f6e8d10e9b4c841460a44e0f8889749f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lattice/Variant0a3a3fd6745e1a145df87398cad754dd970208db1189e75af6b2748353268bcb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2bba66c3-4b13-95ec-f37b-fbc6077d4ab5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma finset_inf_nhds_apply [SemilatticeInf L] [OrderTop L] [ContinuousInf L]
    (hs : ∀ i ∈ s, Tendsto (f i) l (𝓝 (g i))) :
    Tendsto (fun a ↦ s.inf (f · a)) l (𝓝 (s.inf g)) :=
  finset_sup_nhds_apply (L := Lᵒᵈ) hs

end Filter.Tendsto

section Sup

variable [Max L] [ContinuousSup L] {f g : X → L} {s : Set X} {x : X}

@[fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lattice/Variant0a3a3fd6745e1a145df87398cad754dd970208db1189e75af6b2748353268bcb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lattice/Variant0a3a3fd6745e1a145df87398cad754dd970208db1189e75af6b2748353268bcb.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34441d3c15c55beeb76d05d2fb4706d83086bb37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

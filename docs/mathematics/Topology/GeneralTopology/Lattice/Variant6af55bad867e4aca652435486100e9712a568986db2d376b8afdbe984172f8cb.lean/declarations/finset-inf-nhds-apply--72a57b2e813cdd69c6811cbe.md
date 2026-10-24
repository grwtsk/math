# finset_inf_nhds_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f0cd84a4-f562-dda4-6447-35a8df6772b4",
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
  "slug": "finset-inf-nhds-apply--72a57b2e813cdd69c6811cbe",
  "source": {
    "blob": "cef99923ac853304dfd0437dacf766ceeabfa2a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 168,
    "path": "GRWTSK/Topology/GeneralTopology/Lattice/Variant6af55bad867e4aca652435486100e9712a568986db2d376b8afdbe984172f8cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72a57b2e813cdd69c6811cbe24707c5ea065ac19cbf91f3bdb584a91afc59414",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lattice/Variant6af55bad867e4aca652435486100e9712a568986db2d376b8afdbe984172f8cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0cd84a4-f562-dda4-6447-35a8df6772b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–179.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lattice/Variant6af55bad867e4aca652435486100e9712a568986db2d376b8afdbe984172f8cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lattice/Variant6af55bad867e4aca652435486100e9712a568986db2d376b8afdbe984172f8cb.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cef99923ac853304dfd0437dacf766ceeabfa2a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

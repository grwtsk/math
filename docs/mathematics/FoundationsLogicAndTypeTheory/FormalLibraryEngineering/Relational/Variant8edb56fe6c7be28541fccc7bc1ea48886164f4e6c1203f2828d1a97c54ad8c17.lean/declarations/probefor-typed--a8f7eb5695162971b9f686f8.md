# probeFor_typed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:95b0db8e-b2be-bdcc-1784-e8e8e3d4d429",
  "kind": "theorem",
  "lexical_name": "probeFor_typed",
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
  "slug": "probefor-typed--a8f7eb5695162971b9f686f8",
  "source": {
    "blob": "fb5308e58a192243c9ef3819c0de9f0fe25857f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 945,
    "line": 930,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relational/Variant8edb56fe6c7be28541fccc7bc1ea48886164f4e6c1203f2828d1a97c54ad8c17.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8f7eb5695162971b9f686f85cc7d4af9e1bd09b80db487346f98dfb3ea4932f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relational/Variant8edb56fe6c7be28541fccc7bc1ea48886164f4e6c1203f2828d1a97c54ad8c17.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95b0db8e-b2be-bdcc-1784-e8e8e3d4d429`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 930–945.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem probeFor_typed {i : Expr S}
    (hi : HasType P Γ i (R.channel.predicateType R.probe.carrier)) (mi : WellModed γ i .data) :
    HasType P Γ (R.probeFor L.code KY.code KP.code i) R.probe.carrier ∧
      WellModed γ (R.probeFor L.code KY.code KP.code i) .data := by
  obtain ⟨s,hs⟩ := H.probe.mainTriple.domain.1
  let e : Embedding P Γ γ (R.probe.domain :: Γ) (modeCons .data γ) := Embedding.cons
    (H.probe.domain_sorted s hs) .data
  have hi' : HasType P (R.probe.domain :: Γ) (i.rename e.names) ((R.rename
    e.names).channel.predicateType (R.rename e.names).probe.carrier) := by
    simpa only [ChannelCode.predicateType_rename,ProbeCode.carrier_rename,channel_rename,
      RelationalCode.rename,RelationalCode.channel,ChannelCode.rename,ProbeCode.rename] using
      e.typing hi
  have hf := (H.rename e).recoverLiftBody_family (KY.rename e) (KP.rename e)
    (H.probe.raised_project (H.probe.domain_sorted s hs))
    ((H.probe.rename e).project_mode (.var 0)) hi' (e.moded mi)
  exact H.probe.uniform_typed (H.probe.domain_sorted s hs) hf
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relational/Variant8edb56fe6c7be28541fccc7bc1ea48886164f4e6c1203f2828d1a97c54ad8c17.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relational/Variant8edb56fe6c7be28541fccc7bc1ea48886164f4e6c1203f2828d1a97c54ad8c17.lean#L930).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb5308e58a192243c9ef3819c0de9f0fe25857f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

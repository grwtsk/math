# xCompare_intro

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bedd0c46-9b7d-9a2b-1583-39015f50e505",
  "kind": "theorem",
  "lexical_name": "xCompare_intro",
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
  "slug": "xcompare-intro--71a7183618fdd02f08acf721",
  "source": {
    "blob": "5e0d083ec1beb708a9e8efdc39363be16152f8d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 22498,
    "line": 22466,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantae0ff5f70d14d4ff6c8238c8e96e9149279270c9fd827fb9f23991dc14eb61b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71a7183618fdd02f08acf7214d981cc9d5ff213a78bd26a463413d59cd25ace6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantae0ff5f70d14d4ff6c8238c8e96e9149279270c9fd827fb9f23991dc14eb61b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bedd0c46-9b7d-9a2b-1583-39015f50e505`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22466–22498.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem xCompare_intro {x y : Expr S}
    (hx : HasType P Γ x (R.channel.logicalType R.probe.carrier)) (mx : WellModed γ x .data)
    (hy : HasType P Γ y (R.channel.logicalType R.probe.carrier)) (my : WellModed γ y .data)
    (hh : ∀ Δ δ (e : Embedding P Γ γ Δ δ) i,
      HasType P Δ i ((R.rename e.names).channel.predicateType (R.rename e.names).probe.carrier) → WellModed δ i .data →
      Equivalent P Δ δ ((R.rename e.names).le (L.code.rename e.names) (KY.code.rename e.names) (KP.code.rename e.names) i (x.rename e.names))
        ((R.rename e.names).le (L.code.rename e.names) (KY.code.rename e.names) (KP.code.rename e.names) i (y.rename e.names))) :
    Proves P Γ γ (R.xCompare L.code KY.code KP.code x y) := by
  obtain ⟨s,hs⟩ := KP.triple.domain.1
  apply L.all_intro_future KP (H.channel.predicate_sorted H.probe.carrier_sorted)
    (H.channel.predicate_mode H.probe.carrier_mode) (H.channel.predicate_sorted H.probe.carrier_sorted s hs)
    (H.xCompareBody_family KY KP hx mx hy my)
  intro Δ δ e i hi mi
  rw [xCompareBody_rename,xCompareBody_instantiate]
  have hi' : HasType P Δ i ((R.rename e.names).channel.predicateType (R.rename e.names).probe.carrier) := by
    simpa only [ChannelCode.predicateType_rename,ProbeCode.carrier_rename,channel_rename,
      RelationalCode.rename,RelationalCode.channel,ChannelCode.rename,ProbeCode.rename] using hi
  have hx' : HasType P Δ (x.rename e.names) ((R.rename e.names).channel.logicalType (R.rename e.names).probe.carrier) := by
    simpa only [ChannelCode.logicalType_rename,ProbeCode.carrier_rename,channel_rename,
      RelationalCode.rename,RelationalCode.channel,ChannelCode.rename,ProbeCode.rename] using e.typing hx
  have hy' : HasType P Δ (y.rename e.names) ((R.rename e.names).channel.logicalType (R.rename e.names).probe.carrier) := by
    simpa only [ChannelCode.logicalType_rename,ProbeCode.carrier_rename,channel_rename,
      RelationalCode.rename,RelationalCode.channel,ChannelCode.rename,ProbeCode.rename] using e.typing hy
  exact (L.rename e).iff_of_equivalent ((H.rename e).le_formula (KY.rename e) (KP.rename e) hi' mi hx' (e.moded mx))
    ((H.rename e).le_formula (KY.rename e) (KP.rename e) hi' mi hy' (e.moded my)) (hh Δ δ e i hi' mi)
end Formed
end RelationalCode
end

section
universe u
namespace RelationalCode
variable {S : Type u} (R : RelationalCode S)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantae0ff5f70d14d4ff6c8238c8e96e9149279270c9fd827fb9f23991dc14eb61b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OriginalClosure/Variantae0ff5f70d14d4ff6c8238c8e96e9149279270c9fd827fb9f23991dc14eb61b9.lean#L22466).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e0d083ec1beb708a9e8efdc39363be16152f8d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

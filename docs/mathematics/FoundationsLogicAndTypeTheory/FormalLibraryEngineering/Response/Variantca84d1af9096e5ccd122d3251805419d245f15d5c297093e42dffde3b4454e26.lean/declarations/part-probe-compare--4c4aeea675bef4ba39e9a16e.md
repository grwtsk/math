# part_probe_compare

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7caa8632-710d-40cd-cfae-6172b1f86793",
  "kind": "theorem",
  "lexical_name": "part_probe_compare",
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
  "slug": "part-probe-compare--4c4aeea675bef4ba39e9a16e",
  "source": {
    "blob": "dadbac3f37913f76c505e2bf432f231738d76805",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 728,
    "line": 709,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Response/Variantca84d1af9096e5ccd122d3251805419d245f15d5c297093e42dffde3b4454e26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c4aeea675bef4ba39e9a16e04b817b6792297053443b1019d87baa1261c457a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Response/Variantca84d1af9096e5ccd122d3251805419d245f15d5c297093e42dffde3b4454e26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7caa8632-710d-40cd-cfae-6172b1f86793`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 709–728.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem part_probe_compare {i c : Expr S}
    (hi : HasType P Γ i B.xPredType) (mi : WellModed γ i .data)
    (hc : HasType P Γ c B.xPredType) (mc : WellModed γ c .data)
    (he : Proves P Γ γ (B.relational.channel.predCompare L.code KY.code
      B.relational.probe.carrier i c)) :
    Proves P Γ γ (B.predCompare L.code KY.code (B.part L.code KY.code KP.code
      (B.relational.probeFor L.code KY.code KP.code i))
      (B.part L.code KY.code KP.code (B.relational.probeFor L.code KY.code KP.code c))) := by
  have hz := H.relational_formed.probeFor_typed KY KP hi mi
  have hz' := H.relational_formed.probeFor_typed KY KP hc mc
  have hp := H.part_typed KY KP hz.1 hz.2
  have hp' := H.part_typed KY KP hz'.1 hz'.2
  apply H.comparison_intro KY hp.1 hp.2 hp'.1 hp'.2
  intro Δ δ e y hy my
  simp only [part_rename,RelationalCode.probeFor_rename,relational_rename]
  have he' := he.rename e
  simp only [ChannelCode.predCompare_rename,ProbeCode.carrier_rename] at he'
  exact (H.rename e).part_probe_eval_compare (KY.rename e) (KP.rename e)
    (xPred_typed_rename e hi) (e.moded mi) (xPred_typed_rename e hc) (e.moded mc) hy my he'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Response/Variantca84d1af9096e5ccd122d3251805419d245f15d5c297093e42dffde3b4454e26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Response/Variantca84d1af9096e5ccd122d3251805419d245f15d5c297093e42dffde3b4454e26.lean#L709).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dadbac3f37913f76c505e2bf432f231738d76805` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# uncurry_curry_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "61526f2907da1d15cd2db91d06731a691e1750b9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 278,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5a/5a0d4ab47941d487fbbc00babace7e0757e4ba7efd64417767ed1a04cbe13fed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:84495aca-19d2-2ce5-50cf-3e5bd9a53875",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6a83bdc1-329a-a046-4fef-b4071b43768b",
  "kind": "theorem",
  "lexical_name": "uncurry_curry_continuous",
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
  "slug": "uncurry-curry-continuous--4441341f76700f157f1649d6",
  "source": {
    "blob": "61526f2907da1d15cd2db91d06731a691e1750b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 278,
    "path": "GRWTSK/Topology/GeneralTopology/LawfulFix/Variant5a0d4ab47941d487fbbc00babace7e0757e4ba7efd64417767ed1a04cbe13fed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4441341f76700f157f1649d696ab4ff26aa131f968254e43bbf19b2215a1185d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LawfulFix/Variant5a0d4ab47941d487fbbc00babace7e0757e4ba7efd64417767ed1a04cbe13fed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a83bdc1-329a-a046-4fef-b4071b43768b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–284.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uncurry_curry_continuous :
    Continuous <| (monotoneUncurry α β γ).comp <| f.comp <| monotoneCurry α β γ :=
  continuous_comp _ _ (continuous_comp _ _ (continuous_curry _ _ _) hc) (continuous_uncurry _ _ _)
#align pi.uncurry_curry_continuous Pi.uncurry_curry_continuous

end Curry

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LawfulFix/Variant5a0d4ab47941d487fbbc00babace7e0757e4ba7efd64417767ed1a04cbe13fed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LawfulFix/Variant5a0d4ab47941d487fbbc00babace7e0757e4ba7efd64417767ed1a04cbe13fed.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61526f2907da1d15cd2db91d06731a691e1750b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

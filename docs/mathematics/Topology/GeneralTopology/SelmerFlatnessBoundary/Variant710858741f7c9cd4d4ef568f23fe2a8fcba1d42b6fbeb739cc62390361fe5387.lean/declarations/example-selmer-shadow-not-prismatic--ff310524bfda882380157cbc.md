# example_selmer_shadow_not_prismatic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c942d817-7700-b8aa-0bfa-2b90a9a5df82",
  "kind": "theorem",
  "lexical_name": "example_selmer_shadow_not_prismatic",
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
  "slug": "example-selmer-shadow-not-prismatic--ff310524bfda882380157cbc",
  "source": {
    "blob": "956fcff2ac8b7d19249a6b654ca25a4eafb77ee9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 523,
    "line": 517,
    "path": "GRWTSK/Topology/GeneralTopology/SelmerFlatnessBoundary/Variant710858741f7c9cd4d4ef568f23fe2a8fcba1d42b6fbeb739cc62390361fe5387.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff310524bfda882380157cbca39d58f15f6e26e5eb322b8986a648e50d0d7946",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SelmerFlatnessBoundary/Variant710858741f7c9cd4d4ef568f23fe2a8fcba1d42b6fbeb739cc62390361fe5387.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c942d817-7700-b8aa-0bfa-2b90a9a5df82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 517–523.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem example_selmer_shadow_not_prismatic :
    ¬ SelmerShadowConstructsPrismaticCohomology exampleSelmerShadow :=
  selmer_shadow_not_prismatic_cohomology exampleSelmerShadow

end SelmerFlatnessBoundary
end Cube
end Boolean
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SelmerFlatnessBoundary/Variant710858741f7c9cd4d4ef568f23fe2a8fcba1d42b6fbeb739cc62390361fe5387.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SelmerFlatnessBoundary/Variant710858741f7c9cd4d4ef568f23fe2a8fcba1d42b6fbeb739cc62390361fe5387.lean#L517).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `956fcff2ac8b7d19249a6b654ca25a4eafb77ee9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

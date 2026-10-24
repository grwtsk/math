# Ioc_subset_Ioi_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:957616e5-7d02-1130-0a98-71096a2dafc2",
  "kind": "theorem",
  "lexical_name": "Ioc_subset_Ioi_self",
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
  "slug": "ioc-subset-ioi-self--3c20816abd7aba5fb57b2e15",
  "source": {
    "blob": "07690eda2f8498e868200ee71df29762b213e7b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 412,
    "line": 409,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyFinite/Varianta3b8203eddbc589db08ebea101bc62103d5106c0d9793225a83420667278c75d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c20816abd7aba5fb57b2e1500eee4fdb71e2cab77adab247a030f914d6a132f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyFinite/Varianta3b8203eddbc589db08ebea101bc62103d5106c0d9793225a83420667278c75d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:957616e5-7d02-1130-0a98-71096a2dafc2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 409–412.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ioc_subset_Ioi_self : Ioc a b ⊆ Ioi a := by
  simpa [← coe_subset] using Set.Ioc_subset_Ioi_self
#align finset.Ioc_subset_Ioi_self Finset.Ioc_subset_Ioi_self

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyFinite/Varianta3b8203eddbc589db08ebea101bc62103d5106c0d9793225a83420667278c75d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyFinite/Varianta3b8203eddbc589db08ebea101bc62103d5106c0d9793225a83420667278c75d.lean#L409).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07690eda2f8498e868200ee71df29762b213e7b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

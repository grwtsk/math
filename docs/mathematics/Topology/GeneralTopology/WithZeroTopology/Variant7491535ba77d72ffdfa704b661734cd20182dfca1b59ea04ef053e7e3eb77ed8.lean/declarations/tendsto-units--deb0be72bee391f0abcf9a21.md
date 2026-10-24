# tendsto_units

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "566e053105d496bf12b7490813a14cfc5af48700",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 110,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/7491535ba77d72ffdfa704b661734cd20182dfca1b59ea04ef053e7e3eb77ed8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b28c4ee7-c351-b0d9-6011-eab71bc7e3e8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:24995369-507d-e9f7-f9cf-61f7f21e34bf",
  "kind": "theorem",
  "lexical_name": "tendsto_units",
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
  "slug": "tendsto-units--deb0be72bee391f0abcf9a21",
  "source": {
    "blob": "566e053105d496bf12b7490813a14cfc5af48700",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 110,
    "path": "GRWTSK/Topology/GeneralTopology/WithZeroTopology/Variant7491535ba77d72ffdfa704b661734cd20182dfca1b59ea04ef053e7e3eb77ed8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:deb0be72bee391f0abcf9a2100a087378cc6c4ea225ae03f02f728eb244be11e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/WithZeroTopology/Variant7491535ba77d72ffdfa704b661734cd20182dfca1b59ea04ef053e7e3eb77ed8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24995369-507d-e9f7-f9cf-61f7f21e34bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_units {γ₀ : Γ₀ˣ} : Tendsto f l (𝓝 (γ₀ : Γ₀)) ↔ ∀ᶠ x in l, f x = γ₀ :=
  tendsto_of_ne_zero γ₀.ne_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/WithZeroTopology/Variant7491535ba77d72ffdfa704b661734cd20182dfca1b59ea04ef053e7e3eb77ed8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/WithZeroTopology/Variant7491535ba77d72ffdfa704b661734cd20182dfca1b59ea04ef053e7e3eb77ed8.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `566e053105d496bf12b7490813a14cfc5af48700` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

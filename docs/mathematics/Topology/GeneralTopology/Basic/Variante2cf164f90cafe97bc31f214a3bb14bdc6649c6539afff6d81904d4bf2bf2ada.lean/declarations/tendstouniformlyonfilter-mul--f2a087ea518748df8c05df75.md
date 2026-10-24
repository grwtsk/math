# TendstoUniformlyOnFilter.mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9216fa2a-81b5-96fc-f6c6-69066c8cc47e",
  "kind": "theorem",
  "lexical_name": "TendstoUniformlyOnFilter.mul",
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
  "slug": "tendstouniformlyonfilter-mul--f2a087ea518748df8c05df75",
  "source": {
    "blob": "b8c559016475cc6c7c1fb9abd49068dc6528497f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 161,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variante2cf164f90cafe97bc31f214a3bb14bdc6649c6539afff6d81904d4bf2bf2ada.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2a087ea518748df8c05df75227a4512edb139ceb505fcf5e8e1dbb6e5825629",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variante2cf164f90cafe97bc31f214a3bb14bdc6649c6539afff6d81904d4bf2bf2ada.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9216fa2a-81b5-96fc-f6c6-69066c8cc47e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem TendstoUniformlyOnFilter.mul (hf : TendstoUniformlyOnFilter f g l l')
    (hf' : TendstoUniformlyOnFilter f' g' l l') : TendstoUniformlyOnFilter (f * f') (g * g') l l' :=
  fun u hu =>
  ((uniformContinuous_mul.comp_tendstoUniformlyOnFilter (hf.prodMk hf')) u hu).diag_of_prod_left

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variante2cf164f90cafe97bc31f214a3bb14bdc6649c6539afff6d81904d4bf2bf2ada.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variante2cf164f90cafe97bc31f214a3bb14bdc6649c6539afff6d81904d4bf2bf2ada.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8c559016475cc6c7c1fb9abd49068dc6528497f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

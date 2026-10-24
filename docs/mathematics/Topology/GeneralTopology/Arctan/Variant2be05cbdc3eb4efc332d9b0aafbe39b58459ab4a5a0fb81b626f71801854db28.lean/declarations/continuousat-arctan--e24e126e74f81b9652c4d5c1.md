# continuousAt_arctan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b680760734f0a3dcbd38e545d03f09bca33f6fb4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 285,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2b/2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:96fb4b08-6e43-b87c-3d1d-fcb31b1bb20d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:847cb3bd-9694-ee95-bf0d-04e6e9687823",
  "kind": "theorem",
  "lexical_name": "continuousAt_arctan",
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
  "slug": "continuousat-arctan--e24e126e74f81b9652c4d5c1",
  "source": {
    "blob": "b680760734f0a3dcbd38e545d03f09bca33f6fb4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 285,
    "path": "GRWTSK/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e24e126e74f81b9652c4d5c13e481e756c555bc77b8c31ddfd6992242b2e386a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:847cb3bd-9694-ee95-bf0d-04e6e9687823`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousAt_arctan {x : ℝ} : ContinuousAt arctan x :=
  continuous_arctan.continuousAt

/-- `Real.tan` as a `PartialHomeomorph` between `(-(π / 2), π / 2)` and the whole line. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Arctan/Variant2be05cbdc3eb4efc332d9b0aafbe39b58459ab4a5a0fb81b626f71801854db28.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b680760734f0a3dcbd38e545d03f09bca33f6fb4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

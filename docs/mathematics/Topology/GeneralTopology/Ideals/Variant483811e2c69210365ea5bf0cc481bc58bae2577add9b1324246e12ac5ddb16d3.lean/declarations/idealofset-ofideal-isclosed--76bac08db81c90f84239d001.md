# idealOfSet_ofIdeal_isClosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c088a6a7-ea7e-4bfe-3621-5ef9d2a46df0",
  "kind": "theorem",
  "lexical_name": "idealOfSet_ofIdeal_isClosed",
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
  "slug": "idealofset-ofideal-isclosed--76bac08db81c90f84239d001",
  "source": {
    "blob": "fc3573465bb60179d20d277ab8d521840b175342",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 314,
    "path": "GRWTSK/Topology/GeneralTopology/Ideals/Variant483811e2c69210365ea5bf0cc481bc58bae2577add9b1324246e12ac5ddb16d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76bac08db81c90f84239d001abf452d1ba546405cca9ef5dd5ab15d2cb251f6a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Ideals/Variant483811e2c69210365ea5bf0cc481bc58bae2577add9b1324246e12ac5ddb16d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c088a6a7-ea7e-4bfe-3621-5ef9d2a46df0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem idealOfSet_ofIdeal_isClosed {I : Ideal C(X, 𝕜)} (hI : IsClosed (I : Set C(X, 𝕜))) :
    idealOfSet 𝕜 (setOfIdeal I) = I :=
  (idealOfSet_ofIdeal_eq_closure I).trans (Ideal.ext <| Set.ext_iff.mp hI.closure_eq)
#align continuous_map.ideal_of_set_of_ideal_is_closed ContinuousMap.idealOfSet_ofIdeal_isClosed

variable (𝕜)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Ideals/Variant483811e2c69210365ea5bf0cc481bc58bae2577add9b1324246e12ac5ddb16d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Ideals/Variant483811e2c69210365ea5bf0cc481bc58bae2577add9b1324246e12ac5ddb16d3.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc3573465bb60179d20d277ab8d521840b175342` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

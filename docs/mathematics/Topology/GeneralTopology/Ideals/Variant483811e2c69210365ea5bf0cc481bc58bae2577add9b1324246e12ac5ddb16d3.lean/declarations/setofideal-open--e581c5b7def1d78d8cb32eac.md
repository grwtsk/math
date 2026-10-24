# setOfIdeal_open

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:02d805e9-fe4a-90c6-ca63-f14bf9147194",
  "kind": "theorem",
  "lexical_name": "setOfIdeal_open",
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
  "slug": "setofideal-open--e581c5b7def1d78d8cb32eac",
  "source": {
    "blob": "fc3573465bb60179d20d277ab8d521840b175342",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 138,
    "path": "GRWTSK/Topology/GeneralTopology/Ideals/Variant483811e2c69210365ea5bf0cc481bc58bae2577add9b1324246e12ac5ddb16d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e581c5b7def1d78d8cb32eac04d42928e8ae3d1d84ea5b2a9a0528aca87f2aa1",
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

Occurrence: `result:02d805e9-fe4a-90c6-ca63-f14bf9147194`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem setOfIdeal_open [T2Space R] (I : Ideal C(X, R)) : IsOpen (setOfIdeal I) := by
  simp only [setOfIdeal, Set.setOf_forall, isOpen_compl_iff]
  exact
    isClosed_iInter fun f =>
      isClosed_iInter fun _ => isClosed_eq (map_continuous f) continuous_const
#align continuous_map.set_of_ideal_open ContinuousMap.setOfIdeal_open

/-- The open set `ContinuousMap.setOfIdeal I` realized as a term of `opens X`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Ideals/Variant483811e2c69210365ea5bf0cc481bc58bae2577add9b1324246e12ac5ddb16d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Ideals/Variant483811e2c69210365ea5bf0cc481bc58bae2577add9b1324246e12ac5ddb16d3.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc3573465bb60179d20d277ab8d521840b175342` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# toOnePoint_star

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:39c6bb98-bdf0-5866-2e54-00ddceaf6272",
  "kind": "lemma",
  "lexical_name": "toOnePoint_star",
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
  "slug": "toonepoint-star--6dfabb18bc885fbba0377d2d",
  "source": {
    "blob": "f10834dfd3f1230bd26a9e6740e68544d0126ff2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 104,
    "path": "GRWTSK/Topology/GeneralTopology/ZeroAtInftyUnitization/Variantbcea96c1d82aa6511caee119c1f65eb37b5b19c1d7b71eb2fe1e29ea0ecf40e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6dfabb18bc885fbba0377d2dd37cb3530a2c3f7a0268faf43ab9f8239bc10460",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ZeroAtInftyUnitization/Variantbcea96c1d82aa6511caee119c1f65eb37b5b19c1d7b71eb2fe1e29ea0ecf40e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39c6bb98-bdf0-5866-2e54-00ddceaf6272`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toOnePoint_star [AddMonoid R] [StarAddMonoid R] [ContinuousStar R]
    (f : C₀(X, R)) : (star f).toOnePoint = star f.toOnePoint := by
  ext x; induction x using OnePoint.rec <;> simp

variable (X R S)

/-- `ZeroAtInftyContinuousMap.toOnePoint` as an `AddMonoidHom`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ZeroAtInftyUnitization/Variantbcea96c1d82aa6511caee119c1f65eb37b5b19c1d7b71eb2fe1e29ea0ecf40e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ZeroAtInftyUnitization/Variantbcea96c1d82aa6511caee119c1f65eb37b5b19c1d7b71eb2fe1e29ea0ecf40e2.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f10834dfd3f1230bd26a9e6740e68544d0126ff2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

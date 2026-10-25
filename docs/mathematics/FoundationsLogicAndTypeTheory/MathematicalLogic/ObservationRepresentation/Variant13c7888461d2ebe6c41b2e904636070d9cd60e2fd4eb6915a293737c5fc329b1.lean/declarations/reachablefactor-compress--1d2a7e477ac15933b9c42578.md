# reachableFactor_compress

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d16a3861-69e7-62f6-dfd1-75c0b6643f01",
  "kind": "theorem",
  "lexical_name": "reachableFactor_compress",
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
  "slug": "reachablefactor-compress--1d2a7e477ac15933b9c42578",
  "source": {
    "blob": "955b35864c5651957aee02eca29f7a807544545c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 107,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ObservationRepresentation/Variant13c7888461d2ebe6c41b2e904636070d9cd60e2fd4eb6915a293737c5fc329b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d2a7e477ac15933b9c42578c13176157ca40a9867e7a8645ab6bcfb2fba5068",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ObservationRepresentation/Variant13c7888461d2ebe6c41b2e904636070d9cd60e2fd4eb6915a293737c5fc329b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d16a3861-69e7-62f6-dfd1-75c0b6643f01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reachableFactor_compress (default : C.ReachableVector)
    (r : SufficientRepresentation.{u, v, w, b} C) (s : State) :
    C.reachableFactor default r (r.compress s) = C.reachableRepresentation.compress s := by
  have reachable : (fun i => r.recover i (r.compress s)) ∈ Set.range C.observationVector := by
    refine ⟨s, ?_⟩
    funext i
    exact (r.recover_compress i s).symm
  apply Subtype.ext
  simp only [reachableFactor, reachable, dite_true]
  funext i
  exact r.recover_compress i s

/-- A reachable point supplies the extension value required by the total-map contract. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ObservationRepresentation/Variant13c7888461d2ebe6c41b2e904636070d9cd60e2fd4eb6915a293737c5fc329b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ObservationRepresentation/Variant13c7888461d2ebe6c41b2e904636070d9cd60e2fd4eb6915a293737c5fc329b1.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `955b35864c5651957aee02eca29f7a807544545c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# compareBody_instantiate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:110a6be6-bc60-020b-3844-9dc0433a95f5",
  "kind": "theorem",
  "lexical_name": "compareBody_instantiate",
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
  "slug": "comparebody-instantiate--48e0fbce30637fdf5af50289",
  "source": {
    "blob": "1f90b406fb5525fc45bcf4ca4ca28e4844bc4b81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 55,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relations/Variant2b317986f4f28264485d9188a58d86a44d50c0a322bc80195ef6da86dd774177.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48e0fbce30637fdf5af5028926a02422cb35bae5ef04ed4bf02ae9f4dde1b689",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relations/Variant2b317986f4f28264485d9188a58d86a44d50c0a322bc80195ef6da86dd774177.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:110a6be6-bc60-020b-3844-9dc0433a95f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compareBody_instantiate (L : LogicCode S) (T y z p : Expr S) :
    (R.compareBody L T y z).instantiate p = L.iff (R.eval T p y) (R.eval T p z) := by
  change ((L.rename Nat.succ).iff (R.evalPredBody T y) (R.evalPredBody T z)).subst
    (Expr.single p) = _
  rw [LogicCode.iff_subst,LogicCode.instantiate_raise]
  change L.iff ((R.evalPredBody T y).instantiate p) ((R.evalPredBody T z).instantiate p) = _
  rw [evalPredBody_instantiate,evalPredBody_instantiate]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relations/Variant2b317986f4f28264485d9188a58d86a44d50c0a322bc80195ef6da86dd774177.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relations/Variant2b317986f4f28264485d9188a58d86a44d50c0a322bc80195ef6da86dd774177.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f90b406fb5525fc45bcf4ca4ca28e4844bc4b81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

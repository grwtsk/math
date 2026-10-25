# erased_predicate_not_descends

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e3365d9-18fd-5a44-f0e3-0823038d1e5f",
  "kind": "theorem",
  "lexical_name": "erased_predicate_not_descends",
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
  "slug": "erased-predicate-not-descends--78dbf522100f5d2a04f6b1fb",
  "source": {
    "blob": "4253daa1111ebd718b2d05fe4ec3b049046c0869",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 125,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/InformationNoGo/Variant7ab278d80fee1c53f6b2d947b3dbf82e6d09459fd1a52d91ec716ae124fcf6d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78dbf522100f5d2a04f6b1fb13bbc2f54e9f8906e7fc01e252f64304cae6a8f3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/InformationNoGo/Variant7ab278d80fee1c53f6b2d947b3dbf82e6d09459fd1a52d91ec716ae124fcf6d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e3365d9-18fd-5a44-f0e3-0823038d1e5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem erased_predicate_not_descends :
    ¬PredicateDescendsThrough (Quotient.mk (notionSetoid erasedPolicy 0))
      (fun x : Bool => x = true) :=
  predicate_descent_obstruction_not_descends erasedPredicateObstruction

/-- Full information can coexist with an actually unresolved finite proof aperture. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/InformationNoGo/Variant7ab278d80fee1c53f6b2d947b3dbf82e6d09459fd1a52d91ec716ae124fcf6d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/InformationNoGo/Variant7ab278d80fee1c53f6b2d947b3dbf82e6d09459fd1a52d91ec716ae124fcf6d7.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4253daa1111ebd718b2d05fe4ec3b049046c0869` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

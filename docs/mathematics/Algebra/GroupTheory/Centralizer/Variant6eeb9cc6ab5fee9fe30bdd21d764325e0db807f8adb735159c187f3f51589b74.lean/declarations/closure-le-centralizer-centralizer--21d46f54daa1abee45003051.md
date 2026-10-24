# closure_le_centralizer_centralizer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5935457a-e43a-cceb-9499-428930eb6d75",
  "kind": "lemma",
  "lexical_name": "closure_le_centralizer_centralizer",
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
  "slug": "closure-le-centralizer-centralizer--21d46f54daa1abee45003051",
  "source": {
    "blob": "4a06f3c9b1e91ddcaf946160030376667632cd56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 104,
    "path": "GRWTSK/Algebra/GroupTheory/Centralizer/Variant6eeb9cc6ab5fee9fe30bdd21d764325e0db807f8adb735159c187f3f51589b74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21d46f54daa1abee450030518df520721ee8d10ee6bb1116f83e2044cef52e90",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Centralizer/Variant6eeb9cc6ab5fee9fe30bdd21d764325e0db807f8adb735159c187f3f51589b74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5935457a-e43a-cceb-9499-428930eb6d75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma closure_le_centralizer_centralizer (s : Set G) :
    closure s ≤ centralizer (centralizer s) :=
  closure_le _ |>.mpr Set.subset_centralizer_centralizer

/-- If all the elements of a set `s` commute, then `closure s` is a commutative group. -/
@[to_additive
      "If all the elements of a set `s` commute, then `closure s` is an additive
      commutative group."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Centralizer/Variant6eeb9cc6ab5fee9fe30bdd21d764325e0db807f8adb735159c187f3f51589b74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Centralizer/Variant6eeb9cc6ab5fee9fe30bdd21d764325e0db807f8adb735159c187f3f51589b74.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a06f3c9b1e91ddcaf946160030376667632cd56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

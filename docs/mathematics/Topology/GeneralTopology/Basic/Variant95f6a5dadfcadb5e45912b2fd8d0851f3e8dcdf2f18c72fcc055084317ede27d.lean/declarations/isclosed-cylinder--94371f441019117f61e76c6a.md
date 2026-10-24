# isClosed_cylinder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e9a0ce8-e337-00a8-4068-4f1479241c03",
  "kind": "lemma",
  "lexical_name": "isClosed_cylinder",
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
  "slug": "isclosed-cylinder--94371f441019117f61e76c6a",
  "source": {
    "blob": "31bbc053051c9712a6ce08dac692522a01c3a5b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 227,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant95f6a5dadfcadb5e45912b2fd8d0851f3e8dcdf2f18c72fcc055084317ede27d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94371f441019117f61e76c6ac20a80f0e3fc638c9cab568b5a21cd8157a576fb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant95f6a5dadfcadb5e45912b2fd8d0851f3e8dcdf2f18c72fcc055084317ede27d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e9a0ce8-e337-00a8-4068-4f1479241c03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isClosed_cylinder [T1Space A] (U : Finset G) (x : G → A) :
    IsClosed (cylinder U x) := by
  simpa [cylinder_eq_set_pi U x] using isClosed_set_pi (by simp)

end Cylinders

/-! ## Patterns and occurrences -/

/-- A *subshift* on an alphabet `A` is a closed, shift-invariant subset of `G → A`. Formally, it is
composed of:
* `carrier`: the underlying set of allowed configurations.
* `isClosed`: the set is topologically closed in `A^G`.
* `mapsTo`: the set is invariant under all left-translation shifts
  `(shift g)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant95f6a5dadfcadb5e45912b2fd8d0851f3e8dcdf2f18c72fcc055084317ede27d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant95f6a5dadfcadb5e45912b2fd8d0851f3e8dcdf2f18c72fcc055084317ede27d.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31bbc053051c9712a6ce08dac692522a01c3a5b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

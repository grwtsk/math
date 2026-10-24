# endpointClass_depends_only_on_endpoints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d498dbc9-a7f0-43b1-24e5-5afeca4bea20",
  "kind": "theorem",
  "lexical_name": "endpointClass_depends_only_on_endpoints",
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
  "slug": "endpointclass-depends-only-on-endpoints--024c398943c00ed0fb30406c",
  "source": {
    "blob": "17bbda31f69712f41b876a16268ec5be61d9699b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 63,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PathClass/Variant93e322789b0debdd83cfbe0ebb90b9d0dc86279503dea76d5db5ebc46ca67410.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:024c398943c00ed0fb30406ce775e414f83433fbefa1ecd12768ad75376a482a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PathClass/Variant93e322789b0debdd83cfbe0ebb90b9d0dc86279503dea76d5db5ebc46ca67410.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d498dbc9-a7f0-43b1-24e5-5afeca4bea20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem endpointClass_depends_only_on_endpoints
    {xs : List Bit}
    {a b : Bit}
    (hfirst : xs.head? = some a)
    (hlast : lastBit? xs = some b) :
    endpointClassOfBits xs = some (EndpointClass.ofEndpoints a b) := by
  cases xs with
  | nil =>
      simp [lastBit?] at hlast
  | cons x rest =>
      simp at hfirst
      subst x
      simp [endpointClassOfBits, hlast]

end Spectral
end Folder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PathClass/Variant93e322789b0debdd83cfbe0ebb90b9d0dc86279503dea76d5db5ebc46ca67410.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PathClass/Variant93e322789b0debdd83cfbe0ebb90b9d0dc86279503dea76d5db5ebc46ca67410.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17bbda31f69712f41b876a16268ec5be61d9699b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

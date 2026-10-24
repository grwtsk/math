# oneCoordinateResolution_support

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ef9c40f-313a-4cdd-b2fc-09ef8b2afaea",
  "kind": "theorem",
  "lexical_name": "oneCoordinateResolution_support",
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
  "slug": "onecoordinateresolution-support--0b2f88fb4042708d56d85109",
  "source": {
    "blob": "0058fcbd539c6d9f549210cd4c470ac2eb1911ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 117,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variantd362e4b7ba0831a01baa947f038a03da418a3c131b94ed16b30168da332cd6e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b2f88fb4042708d56d8510937101bdd427521a828016a3ee2bbf785b14b32e5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Order/Variantd362e4b7ba0831a01baa947f038a03da418a3c131b94ed16b30168da332cd6e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ef9c40f-313a-4cdd-b2fc-09ef8b2afaea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem oneCoordinateResolution_support
    {n : Nat}
    {parent child : PartialBitfield n}
    (resolution : OneCoordinateResolution parent child) :
    ResolvedSupport child =
      insert resolution.coordinate (ResolvedSupport parent) := by
  apply Finset.ext
  intro coordinate
  simp only [
    ResolvedSupport,
    Finset.mem_filter,
    Finset.mem_univ,
    true_and,
    Finset.mem_insert
  ]
  by_cases isResolvedCoordinate :
      coordinate = resolution.coordinate
  · subst coordinate
    have childResolved :
        child resolution.coordinate ≠ .unresolved := by
      rw [resolution.childResolved]
      cases resolution.value <;> decide
    simp [
      childResolved,
      resolution.parentUnresolved
    ]
  · rw [resolution.unchanged coordinate isResolvedCoordinate]
    simp [isResolvedCoordinate]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Order/Variantd362e4b7ba0831a01baa947f038a03da418a3c131b94ed16b30168da332cd6e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variantd362e4b7ba0831a01baa947f038a03da418a3c131b94ed16b30168da332cd6e4.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0058fcbd539c6d9f549210cd4c470ac2eb1911ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

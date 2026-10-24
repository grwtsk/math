# oneCoordinateResolution_support

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8261f08f51dfefdc58e1ac30c9218e02e6614d8b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 109,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/66/6682a46cb2dd373377d0f0495a496fbe942f64491944b0e6a61884acddd40102.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6a7cf6dd-9ab6-f405-b2fd-7c206d918fda",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:326fcb8a-12da-4c74-2536-2b4b87563632",
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
  "slug": "onecoordinateresolution-support--0940645b92f3d4f7863f29fe",
  "source": {
    "blob": "8261f08f51dfefdc58e1ac30c9218e02e6614d8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 109,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variant6682a46cb2dd373377d0f0495a496fbe942f64491944b0e6a61884acddd40102.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0940645b92f3d4f7863f29fe38d729150b066bcd700026a108c9cf10e4b74faf",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Order/Variant6682a46cb2dd373377d0f0495a496fbe942f64491944b0e6a61884acddd40102.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:326fcb8a-12da-4c74-2536-2b4b87563632`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–137.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Order/Variant6682a46cb2dd373377d0f0495a496fbe942f64491944b0e6a61884acddd40102.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variant6682a46cb2dd373377d0f0495a496fbe942f64491944b0e6a61884acddd40102.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8261f08f51dfefdc58e1ac30c9218e02e6614d8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

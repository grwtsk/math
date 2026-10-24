# HasIsos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9f41a821375e262ecf9a987688c9b1bdae1c4fcbd80da6ec8215701745e89975",
  "kind": "class",
  "lexical_name": "HasIsos",
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
  "slug": "hasisos--3ab21f6ecc0b7f3384711a4d",
  "source": {
    "blob": "006d42d664f1b2fda3af3bc1ea764f08518641d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 87,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant57bb87403beefa41312187339dfebe5aa80c039935adfab6c67e410eb3da51ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3ab21f6ecc0b7f3384711a4d680852c5b3eca7439acb49d1e0f937076dfb27da",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant57bb87403beefa41312187339dfebe5aa80c039935adfab6c67e410eb3da51ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9f41a821375e262ecf9a987688c9b1bdae1c4fcbd80da6ec8215701745e89975`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class HasIsos (J : Precoverage C) : Prop where
  mem_coverings_of_isIso {S T : C} (f : S ⟶ T) [IsIso f] : .singleton f ∈ J T

/-- A precoverage is stable under base change if pullbacks of covering presieves
are covering presieves.
Use `Precoverage.mem_coverings_of_isPullback` for less universe restrictions.
Note: This is stronger than the analogous requirement for a `Pretopology`, because
`IsPullback` does not imply equality with the (arbitrarily) chosen pullbacks in `C`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant57bb87403beefa41312187339dfebe5aa80c039935adfab6c67e410eb3da51ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant57bb87403beefa41312187339dfebe5aa80c039935adfab6c67e410eb3da51ec.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `006d42d664f1b2fda3af3bc1ea764f08518641d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

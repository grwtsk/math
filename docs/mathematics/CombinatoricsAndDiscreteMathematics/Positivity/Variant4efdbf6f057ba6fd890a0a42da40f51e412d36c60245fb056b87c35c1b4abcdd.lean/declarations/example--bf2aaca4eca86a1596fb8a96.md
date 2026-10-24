# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e806461da103358bb306f0096657e2aeb8f9a1d54cfa352485f7a3ade2cb8715",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--bf2aaca4eca86a1596fb8a96",
  "source": {
    "blob": "6d28a8fa590ab56dc502f32b5adbe8600f589ccb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 508,
    "line": 505,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Positivity/Variant4efdbf6f057ba6fd890a0a42da40f51e412d36c60245fb056b87c35c1b4abcdd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf2aaca4eca86a1596fb8a96af29c82d70f2ccb37b6122ad457b2af26c9cd88e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Positivity/Variant4efdbf6f057ba6fd890a0a42da40f51e412d36c60245fb056b87c35c1b4abcdd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e806461da103358bb306f0096657e2aeb8f9a1d54cfa352485f7a3ade2cb8715`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 505–508.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (x : ℝ≥0) : (0:ℝ) ≤ ↑x := by positivity

/- ## Tests that the tactic is agnostic on reversed inequalities -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Positivity/Variant4efdbf6f057ba6fd890a0a42da40f51e412d36c60245fb056b87c35c1b4abcdd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Positivity/Variant4efdbf6f057ba6fd890a0a42da40f51e412d36c60245fb056b87c35c1b4abcdd.lean#L505).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d28a8fa590ab56dc502f32b5adbe8600f589ccb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

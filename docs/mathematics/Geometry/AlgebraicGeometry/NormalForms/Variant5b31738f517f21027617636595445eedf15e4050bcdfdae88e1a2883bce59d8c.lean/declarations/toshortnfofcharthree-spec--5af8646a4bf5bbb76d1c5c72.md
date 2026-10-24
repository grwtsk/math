# toShortNFOfCharThree_spec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d243b7d4-658c-5a9e-9941-f027010ae3e0",
  "kind": "theorem",
  "lexical_name": "toShortNFOfCharThree_spec",
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
  "slug": "toshortnfofcharthree-spec--5af8646a4bf5bbb76d1c5c72",
  "source": {
    "blob": "e76479bf585c2768c80b7e1e7eafbb10298c1b05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 418,
    "line": 405,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/NormalForms/Variant5b31738f517f21027617636595445eedf15e4050bcdfdae88e1a2883bce59d8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5af8646a4bf5bbb76d1c5c72ea1049afc532c6b6d9ae898368f0625022b55d45",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/NormalForms/Variant5b31738f517f21027617636595445eedf15e4050bcdfdae88e1a2883bce59d8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d243b7d4-658c-5a9e-9941-f027010ae3e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 405–418.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toShortNFOfCharThree_spec (hb₂ : W.b₂ = 0) : (W.toShortNFOfCharThree • W).IsShortNF := by
  have h : (2 : R) * 2 = 1 := by linear_combination CharP.cast_eq_zero R 3
  letI : Invertible (2 : R) := ⟨2, h, h⟩
  have H := W.toCharNeTwoNF_spec
  exact ⟨H.a₁, hb₂ ▸ W.toShortNFOfCharThree_a₂, H.a₃⟩

variable (W : WeierstrassCurve F)

/-- For a `WeierstrassCurve` defined over a field of characteristic = 3,
there is an explicit change of variables of it to `WeierstrassCurve.IsCharThreeNF`, that is,
`Y² = X³ + a₂X² + a₆` (`WeierstrassCurve.IsCharThreeJNeZeroNF`) or
`Y² = X³ + a₄X + a₆` (`WeierstrassCurve.IsShortNF`).
It is the composition of an explicit change of variables with
`WeierstrassCurve.toShortNFOfCharThree`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/NormalForms/Variant5b31738f517f21027617636595445eedf15e4050bcdfdae88e1a2883bce59d8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/NormalForms/Variant5b31738f517f21027617636595445eedf15e4050bcdfdae88e1a2883bce59d8c.lean#L405).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e76479bf585c2768c80b7e1e7eafbb10298c1b05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

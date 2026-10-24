# switchConjugatePair_preserves_other_column

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b8e1c4b8-5d2b-bc9f-0df3-bed1ee2c54ac",
  "kind": "theorem",
  "lexical_name": "switchConjugatePair_preserves_other_column",
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
  "slug": "switchconjugatepair-preserves-other-column--f174deb08aa6c39a338d1b01",
  "source": {
    "blob": "99c86b12b39260befa9f58065c249b55ec4a5188",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 603,
    "line": 589,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f174deb08aa6c39a338d1b01d69fd771eae3dcce9eda114b08138b94f23c4682",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8e1c4b8-5d2b-bc9f-0df3-bed1ee2c54ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 589–603.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem switchConjugatePair_preserves_other_column
    (x : I → G → ℤ)
    (g h : G) (i j : I)
    (hhg : h ≠ g) (hhcg : h ≠ conj g) :
    ∀ r, switchConjugatePair conj x g i j r h = x r h :=
  fun r => switchConjugatePair_eq_of_ne conj x g h i j hhg hhcg


section GlobalSwitchConnectivity

variable {G : Type*} [Fintype G] [DecidableEq G]
  (conj : G → G)
  (hconj : Function.Involutive conj)

/-- Oddness makes mismatch counts identical on conjugate columns. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean#L589).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99c86b12b39260befa9f58065c249b55ec4a5188` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

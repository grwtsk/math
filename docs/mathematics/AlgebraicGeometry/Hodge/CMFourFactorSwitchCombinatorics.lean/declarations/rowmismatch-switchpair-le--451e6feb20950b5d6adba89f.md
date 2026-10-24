# rowMismatch_switchPair_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9c4fefc1-6f0c-94e7-aa3e-5db4d8f4db17",
  "kind": "theorem",
  "lexical_name": "rowMismatch_switchPair_le",
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
  "slug": "rowmismatch-switchpair-le--451e6feb20950b5d6adba89f",
  "source": {
    "blob": "99c86b12b39260befa9f58065c249b55ec4a5188",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 303,
    "line": 280,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:451e6feb20950b5d6adba89ff9765aed7926d6e2ccf7c98c340375271aa12a50",
  "verification": {
    "reference": "docs/verification/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c4fefc1-6f0c-94e7-aa3e-5db4d8f4db17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–303.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rowMismatch_switchPair_le
    (x y : I → ℤ)
    (i : PosNegMismatch x y)
    (j : NegPosMismatch x y)
    (r : I) :
    rowMismatch (switchPair x i.1 j.1) y r ≤ rowMismatch x y r := by
  have hij : i.1 ≠ j.1 := by
    intro h
    have hi := i.2.1
    have hj := j.2.1
    omega
  by_cases hri : r = i.1
  · subst r
    have hc := (switchPair_corrects_mismatch_pair x y i j).1
    simp [rowMismatch, hc, i.2]
  · by_cases hrj : r = j.1
    · subst r
      have hc := (switchPair_corrects_mismatch_pair x y i j).2
      simp [rowMismatch, hc, j.2]
    · simp [rowMismatch, switchPair, hri, hrj]

/-- One paired opposite-mismatch switch strictly decreases the selected
column's mismatch count. This is the well-founded measure for iterating
corrections inside one column. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99c86b12b39260befa9f58065c249b55ec4a5188` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

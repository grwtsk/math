# atomicSwitch_fourBalance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fcfd959e-f1b8-2692-c075-586de1a21a70",
  "kind": "theorem",
  "lexical_name": "atomicSwitch_fourBalance",
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
  "slug": "atomicswitch-fourbalance--8e770440d1594e85d3458f4a",
  "source": {
    "blob": "99c86b12b39260befa9f58065c249b55ec4a5188",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 549,
    "line": 516,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e770440d1594e85d3458f4ac2f00909de2cfead653356c95f50b1bc8b9e1f40",
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

Occurrence: `result:fcfd959e-f1b8-2692-c075-586de1a21a70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 516–549.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem atomicSwitch_fourBalance
    (x y : I → G → ℤ)
    (hxsign : ∀ r h, IsSign (x r h))
    (hxodd : IsOddMatrix conj x)
    (g : G) (hg : g ≠ conj g)
    (i : PosNegMismatch (fun r => x r g) (fun r => y r g))
    (j : NegPosMismatch (fun r => x r g) (fun r => y r g)) :
    FourBalance
      (oddSignRowOfMatrix conj x hxsign hxodd i.1)
      (oddSignRowOfMatrix conj x hxsign hxodd j.1)
      (oddSignRowOfMatrix conj
        (switchConjugatePair conj x g i.1 j.1)
        (switchConjugatePair_isSign conj x hxsign g i.1 j.1)
        (switchConjugatePair_odd conj hconj x hxodd g hg i.1 j.1)
        i.1)
      (oddSignRowOfMatrix conj
        (switchConjugatePair conj x g i.1 j.1)
        (switchConjugatePair_isSign conj x hxsign g i.1 j.1)
        (switchConjugatePair_odd conj hconj x hxodd g hg i.1 j.1)
        j.1) := by
  have hij : i.1 ≠ j.1 := by
    intro h
    have hi := i.2.1
    have hj := j.2.1
    omega
  intro h
  exact switchConjugatePair_selectedRows_balance
    conj x g i.1 j.1 hij h

/-- Rows outside the selected pair are pointwise unchanged in every column.

This is the exact support statement behind the manuscript decomposition of one
elementary transition into one four-factor switched core plus unchanged
two-factor identity tensors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorSwitchCombinatorics.lean#L516).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99c86b12b39260befa9f58065c249b55ec4a5188` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# transitionOfReachWithInvariants

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:473a18a44b2f171d08e24a3e59957e620f3a52aeb50575d8d1d8df96f92e1cfe",
  "kind": "def",
  "lexical_name": "transitionOfReachWithInvariants",
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
  "slug": "transitionofreachwithinvariants--3c7ca027e1bdff2e3343836b",
  "source": {
    "blob": "97ed0f5e967f8b6e1cbb8f20912683bf7a9817fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3093,
    "line": 3065,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3c7ca027e1bdff2e3343836bfbf0e003744968f915b339781cb22e77f6d21237",
  "verification": {
    "reference": "docs/verification/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:473a18a44b2f171d08e24a3e59957e620f3a52aeb50575d8d1d8df96f92e1cfe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3065–3093.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def transitionOfReachWithInvariants
    (conj : G → G)
    (hconj : Function.Involutive conj)
    (target : I → G → ℤ)
    (S : InvariantSwitchGeometrySupplier conj target)
    {x z : I → G → ℤ}
    (hxsign : ∀ r h, IsSign (x r h))
    (hxodd : IsOddMatrix conj x)
    (h : PairedMatrixReach conj target x z) :
    AlgebraicTransitionWitness x z := by
  induction h generalizing x with
  | refl x =>
      exact S.identity.realize x
  | @step x z g i j hrest ih =>
      have hg : g ≠ conj g :=
        conj_ne_self_of_row conj x hxsign hxodd i.1 g
      let x' := switchConjugatePair conj x g i.1 j.1
      have hx'sign : ∀ r h, IsSign (x' r h) := by
        simpa [x'] using
          switchConjugatePair_isSign conj x hxsign g i.1 j.1
      have hx'odd : IsOddMatrix conj x' := by
        simpa [x'] using
          switchConjugatePair_odd conj hconj x hxodd g hg i.1 j.1
      exact S.composition.compose
        (S.atomic.realize x hxsign hxodd g hg i j)
        (ih hx'sign hx'odd)

/-- Equal column sums now feed the invariant-aware geometric path directly,
with no ad hoc reconstruction of sign/oddness hypotheses at the atomic layer. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean#L3065).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97ed0f5e967f8b6e1cbb8f20912683bf7a9817fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

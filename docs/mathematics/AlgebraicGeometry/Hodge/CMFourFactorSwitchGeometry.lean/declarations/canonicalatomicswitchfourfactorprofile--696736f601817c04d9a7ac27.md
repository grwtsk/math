# canonicalAtomicSwitchFourFactorProfile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b0899da394adaa388ed104430864c2404babd90c03adf32be40821a98af214da",
  "kind": "def",
  "lexical_name": "canonicalAtomicSwitchFourFactorProfile",
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
  "slug": "canonicalatomicswitchfourfactorprofile--696736f601817c04d9a7ac27",
  "source": {
    "blob": "97ed0f5e967f8b6e1cbb8f20912683bf7a9817fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 147,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:696736f601817c04d9a7ac272516d8dc36652794d14cfd7ee0864d665909b0bb",
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

Occurrence: `declaration:b0899da394adaa388ed104430864c2404babd90c03adf32be40821a98af214da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def canonicalAtomicSwitchFourFactorProfile
    (conj : G → G)
    (hconj : Function.Involutive conj)
    (x target : I → G → ℤ)
    (hxsign : ∀ r h, IsSign (x r h))
    (hxodd : IsOddMatrix conj x)
    (g : G) (hg : g ≠ conj g)
    (i : PosNegMismatch (fun r => x r g) (fun r => target r g))
    (j : NegPosMismatch (fun r => x r g) (fun r => target r g)) :
    AtomicSwitchFourFactorProfile
      conj hconj x target hxsign hxodd g hg i j := by
  let x' := switchConjugatePair conj x g i.1 j.1
  have hx'sign : ∀ r h, IsSign (x' r h) :=
    switchConjugatePair_isSign conj x hxsign g i.1 j.1
  have hx'odd : IsOddMatrix conj x' :=
    switchConjugatePair_odd conj hconj x hxodd g hg i.1 j.1
  let v₁ := oddSignRowOfMatrix conj x hxsign hxodd i.1
  let v₂ := oddSignRowOfMatrix conj x hxsign hxodd j.1
  let v₃ := oddSignRowOfMatrix conj x' hx'sign hx'odd i.1
  let v₄ := oddSignRowOfMatrix conj x' hx'sign hx'odd j.1
  have hbal : FourBalance v₁ v₂ v₃ v₄ := by
    simpa [v₁, v₂, v₃, v₄, x'] using
      atomicSwitch_fourBalance
        conj hconj x target hxsign hxodd g hg i j
  exact {
    v₁ := v₁
    v₂ := v₂
    v₃ := v₃
    v₄ := v₄
    balance := hbal
    type22 :=
      CMFourFactorAlgebraicity.allConjugatesType22_of_fourBalance
        v₁ v₂ v₃ v₄ hbal
  }

/-- Complex span of the scalar-Galois orbit of one algebraic-number tensor.

This is the smallest subspace in which scalar-conjugate stability is automatic.
The geometric content is therefore reduced to proving that this orbit span lies
inside the actual Hodge subspace. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/CMFourFactorSwitchGeometry.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97ed0f5e967f8b6e1cbb8f20912683bf7a9817fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

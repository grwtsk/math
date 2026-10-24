# equivOfTranscendenceBasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:78f1548f08928d88d611ae8117d9b498ba2ff89f709f4493ea5d404e9f2a7a30",
  "kind": "def",
  "lexical_name": "equivOfTranscendenceBasis",
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
  "slug": "equivoftranscendencebasis--3462184e50b80b78ac5a3542",
  "source": {
    "blob": "e4106f1faa6e3a506efcdbbfb47cce44ddb3307d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 57,
    "path": "GRWTSK/Algebra/LinearAlgebra/Classification/Variant7e266410c88c94bc166e36d7b95b588c0533a45d8d20d52261f28d382f253349.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3462184e50b80b78ac5a354234c366a0cd9fa89fae823a1d11472c584d3eabb6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Classification/Variant7e266410c88c94bc166e36d7b95b588c0533a45d8d20d52261f28d382f253349.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:78f1548f08928d88d611ae8117d9b498ba2ff89f709f4493ea5d404e9f2a7a30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivOfTranscendenceBasis [IsAlgClosed K] [IsAlgClosed L] (e : ι ≃ κ)
    (hv : IsTranscendenceBasis R v) (hw : IsTranscendenceBasis R w) : K ≃+* L := by
  letI := isAlgClosure_of_transcendence_basis v hv
  letI := isAlgClosure_of_transcendence_basis w hw
  have e : Algebra.adjoin R (Set.range v) ≃+* Algebra.adjoin R (Set.range w) := by
    refine hv.1.aevalEquiv.symm.toRingEquiv.trans ?_
    refine (AlgEquiv.ofAlgHom (MvPolynomial.rename e)
      (MvPolynomial.rename e.symm) ?_ ?_).toRingEquiv.trans ?_
    · ext; simp
    · ext; simp
    exact hw.1.aevalEquiv.toRingEquiv
  exact IsAlgClosure.equivOfEquiv K L e

end

end Classification

section Cardinal

variable {R : Type u} {K : Type v} [CommRing R] [Field K] [Algebra R K] [IsAlgClosed K]
variable {ι : Type w} (v : ι → K)

variable {K' : Type u} [Field K'] [Algebra R K'] [IsAlgClosed K']
variable {ι' : Type u} (v' : ι' → K')

/-- The cardinality of an algebraically closed `R`-algebra is less than or equal to
the maximum of of the cardinality of `R`, the cardinality of a transcendence basis and
`ℵ₀`

For a simpler, but less universe-polymorphic statement, see
`IsAlgClosed.cardinal_le_max_transcendence_basis'` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Classification/Variant7e266410c88c94bc166e36d7b95b588c0533a45d8d20d52261f28d382f253349.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Classification/Variant7e266410c88c94bc166e36d7b95b588c0533a45d8d20d52261f28d382f253349.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4106f1faa6e3a506efcdbbfb47cce44ddb3307d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

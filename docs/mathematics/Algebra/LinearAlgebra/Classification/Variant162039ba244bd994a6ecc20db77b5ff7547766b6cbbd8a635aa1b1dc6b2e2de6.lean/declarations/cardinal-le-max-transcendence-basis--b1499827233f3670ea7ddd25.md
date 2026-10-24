# cardinal_le_max_transcendence_basis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e9fa658-4f82-5af5-b66e-b0b28b4c13f2",
  "kind": "theorem",
  "lexical_name": "cardinal_le_max_transcendence_basis",
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
  "slug": "cardinal-le-max-transcendence-basis--b1499827233f3670ea7ddd25",
  "source": {
    "blob": "270728153a7c2fec8da030f5dfd954dacecba74c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 96,
    "path": "GRWTSK/Algebra/LinearAlgebra/Classification/Variant162039ba244bd994a6ecc20db77b5ff7547766b6cbbd8a635aa1b1dc6b2e2de6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1499827233f3670ea7ddd25146babb75617379cf97d38f27f2c0f82960694b4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Classification/Variant162039ba244bd994a6ecc20db77b5ff7547766b6cbbd8a635aa1b1dc6b2e2de6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e9fa658-4f82-5af5-b66e-b0b28b4c13f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cardinal_le_max_transcendence_basis (hv : IsTranscendenceBasis R v) :
    Cardinal.lift.{max u w} #K ≤ max (max (Cardinal.lift.{max v w} #R)
      (Cardinal.lift.{max u v} #ι)) ℵ₀ :=
  calc
    Cardinal.lift.{max u w} #K ≤ Cardinal.lift.{max u w}
        (max #(Algebra.adjoin R (Set.range v)) ℵ₀) := by
      letI := isAlgClosure_of_transcendence_basis v hv
      simpa using Algebra.IsAlgebraic.cardinalMk_le_max (Algebra.adjoin R (Set.range v)) K
    _ = Cardinal.lift.{v} (max #(MvPolynomial ι R) ℵ₀) := by
      rw [lift_max, ← Cardinal.lift_mk_eq.2 ⟨hv.1.aevalEquiv.toEquiv⟩, lift_aleph0,
        ← lift_aleph0.{max u v w, max u w}, ← lift_max, lift_umax.{max u w, v}]
    _ ≤ Cardinal.lift.{v} (max (max (max (Cardinal.lift #R) (Cardinal.lift #ι)) ℵ₀) ℵ₀) :=
        lift_le.2 (max_le_max MvPolynomial.cardinalMk_le_max_lift le_rfl)
    _ = _ := by simp

/-- The cardinality of an algebraically closed `R`-algebra is less than or equal to
the maximum of of the cardinality of `R`, the cardinality of a transcendence basis and
`ℵ₀`

A less-universe polymorphic, but simpler statement of
`IsAlgClosed.cardinal_le_max_transcendence_basis` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Classification/Variant162039ba244bd994a6ecc20db77b5ff7547766b6cbbd8a635aa1b1dc6b2e2de6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Classification/Variant162039ba244bd994a6ecc20db77b5ff7547766b6cbbd8a635aa1b1dc6b2e2de6.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `270728153a7c2fec8da030f5dfd954dacecba74c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

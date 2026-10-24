# sourcePolarizedForm_basis_eq_arithmeticCrossCoefficient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d9debc2-e363-10c0-5e51-c7f44e38a2cb",
  "kind": "theorem",
  "lexical_name": "sourcePolarizedForm_basis_eq_arithmeticCrossCoefficient",
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
  "slug": "sourcepolarizedform-basis-eq-arithmeticcrosscoefficient--8cab093dba655b9e2cc00183",
  "source": {
    "blob": "8574428b3b3571d303bb739f2f678b6d1a656a7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 52,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentWeilTransportObstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8cab093dba655b9e2cc001834f243c10b5fa5240fd44dad50c20a7f16c87104a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalSquareTentWeilTransportObstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d9debc2-e363-10c0-5e51-c7f44e38a2cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourcePolarizedForm_basis_eq_arithmeticCrossCoefficient
    {M : ℕ} (i j : Fin (M + 1)) :
    sourcePolarizedForm (basisCombination i) (basisCombination j) =
      (arithmeticCrossCoefficient i j : ℂ) := by
  classical
  by_cases hij : i = j
  · subst j
    rw [sourcePolarizedForm_eq_diagonal_sum]
    rw [Finset.sum_eq_single i]
    · simp [basisCombination]
    · intro k hk hki
      simp [basisCombination, hki]
    · simp
  · rw [sourcePolarizedForm_eq_diagonal_sum,
      arithmeticCrossCoefficient_offdiag hij]
    apply Finset.sum_eq_zero
    intro k hk
    by_cases hki : k = i
    · subst k
      simp [basisCombination, hij]
    · simp [basisCombination, hki]

/-- A named classical target profile for the Guinand--Weil compact-support
formulation.  Constructing a term requires an actual repository test space,
Hermitian form, source theorem, normalization, and injective realization.
Strings are metadata only; all mathematical content used below is carried by
the typed fields and equalities. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalSquareTentWeilTransportObstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentWeilTransportObstruction.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8574428b3b3571d303bb739f2f678b6d1a656a7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

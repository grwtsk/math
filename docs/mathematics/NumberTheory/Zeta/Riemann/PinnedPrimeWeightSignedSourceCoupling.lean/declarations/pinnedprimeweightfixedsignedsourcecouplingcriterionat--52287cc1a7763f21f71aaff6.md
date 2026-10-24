# PinnedPrimeWeightFixedSignedSourceCouplingCriterionAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a01b4cd80969102e0698e03420366b88602aa9bf6631869eea94a704f60ec90e",
  "kind": "def",
  "lexical_name": "PinnedPrimeWeightFixedSignedSourceCouplingCriterionAt",
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
  "slug": "pinnedprimeweightfixedsignedsourcecouplingcriterionat--52287cc1a7763f21f71aaff6",
  "source": {
    "blob": "9102da31aa4c46d069e457878bac7e738ad6f353",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 158,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightSignedSourceCoupling.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:52287cc1a7763f21f71aaff6ab9895489789c30116c56eecf682a2f2dfb0a583",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightSignedSourceCoupling.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a01b4cd80969102e0698e03420366b88602aa9bf6631869eea94a704f60ec90e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def PinnedPrimeWeightFixedSignedSourceCouplingCriterionAt
    (rule : PinnedPrimeWeightSignedSourceRule)
    (C ρ : ℝ) : Prop :=
  0 ≤ C ∧
  ∀ η : ℝ, 0 < η →
    ∃ R : ℝ, 0 ≤ R ∧
    ∃ j₀ : ℕ,
      ∀ j ≥ j₀,
        (∀ v ∈ pinnedPrimeWeightNextOctave j,
          |rule.response j v| ≤
            C * (pinnedPrimeWeightedAmplitude (dyadicScale j))^2) ∧
        (∀ v ∈ pinnedPrimeWeightNextOctave j,
          |rule.signedResidual j v| + 1 ≤
            pinnedPrimeWeightStageErrorEnvelope j R ρ η)

/-- A variable-budget signed source supplier constructs the corresponding
Bertrand-ratio criterion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightSignedSourceCoupling.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightSignedSourceCoupling.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9102da31aa4c46d069e457878bac7e738ad6f353` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

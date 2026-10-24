# one_le_greenPrincipalResidueLeadingMajorant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fb6bce87-455c-2741-c0d3-b321c293a217",
  "kind": "theorem",
  "lexical_name": "one_le_greenPrincipalResidueLeadingMajorant",
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
  "slug": "one-le-greenprincipalresidueleadingmajorant--1df54d74ce28d5b11a86ea1b",
  "source": {
    "blob": "6e14c536f26cf1eefb931c8262b73de7c7416b3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 46,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenResidueMajorantObstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1df54d74ce28d5b11a86ea1bf364a05812e6d4c9c4fe0674b29bf66fa3316ff9",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenResidueMajorantObstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb6bce87-455c-2741-c0d3-b321c293a217`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem one_le_greenPrincipalResidueLeadingMajorant
    {X Q : ℕ} (hX : 1 ≤ X) :
    1 ≤ greenPrincipalResidueLeadingMajorant X Q := by
  unfold greenPrincipalResidueLeadingMajorant
  have hrmem : (1 : ℤ) ∈ Finset.Icc 1 X := by simp [hX]
  have hqmem : (0 : ℤ) ∈ Finset.Icc (-(Q : ℤ)) (Q : ℤ) := by simp
  have hnonneg : ∀ r ∈ Finset.Icc (1 : ℤ) X,
      ∀ q ∈ Finset.Icc (-(Q : ℤ)) (Q : ℤ),
      0 ≤ greenResidueLeadingSquareMajorant X r q := by
    intro r hr q hq
    unfold greenResidueLeadingSquareMajorant
    positivity
  have hsingle :
      greenResidueLeadingSquareMajorant X 1 0 ≤
        greenPrincipalResidueLeadingMajorant X Q := by
    apply Finset.single_le_sum
    · intro r hr
      apply Finset.sum_nonneg
      intro q hq
      exact hnonneg r hr q hq
    · exact hrmem
    · apply Finset.single_le_sum
      · intro q hq
        exact hnonneg 1 hrmem q hq
      · exact hqmem
  rw [greenResidueLeadingSquareMajorant_one_zero] at hsingle
  exact hsingle

/-- Epistemic conclusion: this particular residue-majorant route cannot by
itself establish an X->infinity vanishing bound, because its finite heads are
already bounded below by one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenResidueMajorantObstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenResidueMajorantObstruction.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e14c536f26cf1eefb931c8262b73de7c7416b3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

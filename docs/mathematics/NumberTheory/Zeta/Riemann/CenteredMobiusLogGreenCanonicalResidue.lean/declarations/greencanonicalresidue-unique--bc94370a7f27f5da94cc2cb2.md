# greenCanonicalResidue_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9bf9229c-7dbf-f81a-7478-de177588db1f",
  "kind": "theorem",
  "lexical_name": "greenCanonicalResidue_unique",
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
  "slug": "greencanonicalresidue-unique--bc94370a7f27f5da94cc2cb2",
  "source": {
    "blob": "6b1ac6239c36988faf6579aa0eb4370a3925e9c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 75,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenCanonicalResidue.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc94370a7f27f5da94cc2cb2f0d707f81035f97ace91071ad10f93419a60c789",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenCanonicalResidue.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9bf9229c-7dbf-f81a-7478-de177588db1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem greenCanonicalResidue_unique
    {X : ℕ} (hX : 1 ≤ X)
    {r s : ℤ}
    (hr : GreenCanonicalResidueCondition X r)
    (hs : GreenCanonicalResidueCondition X s)
    (hcong : r % X = s % X) :
    r = s := by
  have hdvd : (X : ℤ) ∣ r - s :=
    Int.dvd_iff_emod_eq_zero.mpr (by
      rw [Int.sub_emod, hcong]
      simp)
  obtain ⟨z, hz⟩ := hdvd
  unfold GreenCanonicalResidueCondition greenCenteredResidueLower
    greenCenteredResidueUpper at hr hs
  have hwidth : |r - s| < X := by
    omega
  rw [hz, abs_mul] at hwidth
  have hXpos : (0 : ℤ) < X := by omega
  by_cases hz0 : z = 0
  · subst z
    simp at hz
    exact sub_eq_zero.mp hz
  · have : (X : ℤ) ≤ |(X : ℤ) * z| := by
      rw [abs_mul, abs_of_pos hXpos]
      have : (1 : ℤ) ≤ |z| := Int.one_le_abs hz0
      nlinarith
    omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenCanonicalResidue.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenCanonicalResidue.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b1ac6239c36988faf6579aa0eb4370a3925e9c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

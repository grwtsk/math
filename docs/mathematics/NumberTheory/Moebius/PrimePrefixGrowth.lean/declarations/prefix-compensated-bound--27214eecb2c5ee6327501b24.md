# prefix_compensated_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:68ec39e6-48f0-76cf-fc2a-2997d6d84402",
  "kind": "theorem",
  "lexical_name": "prefix_compensated_bound",
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
  "slug": "prefix-compensated-bound--27214eecb2c5ee6327501b24",
  "source": {
    "blob": "3e1f338f352df006cd8a754f22905c03887c8b23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 54,
    "path": "GRWTSK/NumberTheory/Moebius/PrimePrefixGrowth.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27214eecb2c5ee6327501b247166f30d832936df25e4e6a252196b9d63572b5f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/PrimePrefixGrowth.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68ec39e6-48f0-76cf-fc2a-2997d6d84402`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem prefix_compensated_bound {C q T : ℝ} (hT : 0 ≤ T)
    (hstep : ∀ p : ℕ, p.Prime →
      noteEnergy (primeNoteCascade (primePrefix (p+1))) T + (1+T)^q ≤
        exp (C / p) * (noteEnergy (primeNoteCascade (primePrefix p)) T + (1+T)^q)) :
    ∀ n : ℕ, noteEnergy (primeNoteCascade (primePrefix n)) T + (1+T)^q ≤
      exp (C * harmonicPrimeMass (primePrefix n)) * (4*T+(1+T)^q) := by
  intro n
  induction n with
  | zero =>
    simpa [primePrefix, harmonicPrimeMass] using add_le_add_right (baseNote_energy_bound hT) ((1+T)^q)
  | succ n ih =>
    by_cases hp : n.Prime
    · calc
        _ ≤ exp (C / n) * (noteEnergy (primeNoteCascade (primePrefix n)) T + (1+T)^q) := hstep n hp
        _ ≤ exp (C / n) * (exp (C * harmonicPrimeMass (primePrefix n)) * (4*T+(1+T)^q)) :=
          mul_le_mul_of_nonneg_left ih (exp_pos _).le
        _ = _ := by
          rw [primePrefix_succ, if_pos hp]
          simp only [harmonicPrimeMass, Finset.sum_insert (not_mem_primePrefix n), mul_add,
            div_eq_mul_inv]
          rw [exp_add]
          ring
    · simpa only [primePrefix_succ, if_neg hp] using ih

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/PrimePrefixGrowth.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/PrimePrefixGrowth.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e1f338f352df006cd8a754f22905c03887c8b23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# pairAtom_tent_sum_eq_pairTentMass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d790f281-2dee-9525-f841-02165df6b5b9",
  "kind": "theorem",
  "lexical_name": "pairAtom_tent_sum_eq_pairTentMass",
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
  "slug": "pairatom-tent-sum-eq-pairtentmass--767f4f5c9060f5e483705db3",
  "source": {
    "blob": "fe19f7cbc7a45ba8cf9e7cba403ed6e9970cc334",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 220,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalTentAtomStage.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:767f4f5c9060f5e483705db3c70140f2519b02ea3206223dc192176bc34299e8",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalTentAtomStage.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d790f281-2dee-9525-f841-02165df6b5b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pairAtom_tent_sum_eq_pairTentMass (n : ℕ) :
    (∑ kp : SquarePair n,
      atomWeight (pairAtom n kp) *
        squareWeight n (kp.1.2 ^ kp.1.1)) = pairTentMass n := by
  classical
  unfold pairTentMass
  have hu : (Finset.univ : Finset (SquarePair n)) = (primePowerPairs n).attach := by
    ext kp
    simp
  rw [hu]
  calc
    _ = ∑ kp ∈ (primePowerPairs n).attach,
        Real.log kp.1.2 * squareWeight n (kp.1.2 ^ kp.1.1) := by
      apply Finset.sum_congr rfl
      intro kp hkp
      simp only [atomWeight_eq_log, pairAtom_prime_val]
    _ = _ := (primePowerPairs n).sum_attach
      (fun kp => Real.log kp.2 * squareWeight n (kp.2 ^ kp.1))

/-- The source-faithful finite atom readout equals the canonical square-tent
von Mangoldt observable exactly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalTentAtomStage.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalTentAtomStage.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe19f7cbc7a45ba8cf9e7cba403ed6e9970cc334` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

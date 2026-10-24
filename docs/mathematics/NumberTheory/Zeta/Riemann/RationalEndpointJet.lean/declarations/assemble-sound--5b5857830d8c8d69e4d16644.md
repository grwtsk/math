# assemble_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b7e279e-be15-76e7-7a37-18a067ef151d",
  "kind": "theorem",
  "lexical_name": "assemble_sound",
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
  "slug": "assemble-sound--5b5857830d8c8d69e4d16644",
  "source": {
    "blob": "b2f5f44f38e29ac1f1dd6d1e7bdd55cfa161b5ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 156,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/RationalEndpointJet.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b5857830d8c8d69e4d166449ebf3b19ba64857eb1e2b710fea8e52105dce0d4",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/RationalEndpointJet.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b7e279e-be15-76e7-7a37-18a067ef151d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem assemble_sound (bits : ℕ) {s : Coordinates} (hs : toComplex s ≠ 1)
    {N : ℕ} (hN : 1 ≤ N) (p : ℕ) (logs powers : ℕ → Ball)
    (hl : ∀ k ∈ Finset.Icc 1 N, Holds (logs k) (Real.log (k : ℝ) : ℂ))
    (hp : ∀ k ∈ Finset.Icc 1 N, Holds (powers k) ((k : ℂ) ^ (-toComplex s))) :
    Holds (assemble bits s N p logs powers).1 (EndpointCorrectedJet.model N p (toComplex s)) ∧
    Holds (assemble bits s N p logs powers).2 (deriv (EndpointCorrectedJet.model N p) (toComplex s)) := by
  have hprev := prefix_sound bits logs powers N hl hp
  have hlast : N ∈ Finset.Icc 1 N := Finset.mem_Icc.mpr ⟨hN, le_rfl⟩
  have hc := coefficientJet_refines hs N p
  constructor
  · have h := ballAdd_sound bits hprev.1
      (ballScale_sound bits (coefficientJet s N p).1 (hp N hlast))
    simpa only [assemble, EndpointCorrectedJet.model, hc.1, mul_comm] using h
  · have hinner := ballAdd_sound bits (point_sound (coefficientJet s N p).2)
      (ballScale_sound bits (sub zero (coefficientJet s N p).1) (hl N hlast))
    have hinner' : Holds
        (ballAdd bits (point (coefficientJet s N p).2)
          (ballScale bits (sub zero (coefficientJet s N p).1) (logs N)))
        (EndpointCorrectedJet.coefficientSlope N p (toComplex s) -
          (Real.log (N : ℝ) : ℂ) * EndpointCorrectedJet.coefficient N p (toComplex s)) := by
      convert hinner using 1
      simp only [toComplex_sub, toComplex_zero, hc.1, hc.2]
      ring
    have h := ballAdd_sound bits hprev.2 (ballMul_sound bits (hp N hlast) hinner')
    simpa only [assemble, EndpointCorrectedJet.deriv_model hN p hs,
      EndpointCorrectedJet.slope] using h

/-- A final displayed center needs a further displacement charge, even for exact Q data. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/RationalEndpointJet.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/RationalEndpointJet.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2f5f44f38e29ac1f1dd6d1e7bdd55cfa161b5ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

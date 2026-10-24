# raw_quadratic_local_certificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:33100fc5-1efc-bc1b-5e89-2183df308dd5",
  "kind": "theorem",
  "lexical_name": "raw_quadratic_local_certificate",
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
  "slug": "raw-quadratic-local-certificate--5d819400499a931e0b4af2f5",
  "source": {
    "blob": "1fa3e1caab0cc8bd04fd8935202d9fa4b8b16df3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 243,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaTerminalCertificate/Variantd04f0e83496be5952a4e92fccf7f9f3eb1fb78b09431b810b04621b0050df305.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d819400499a931e0b4af2f5cd934342c529dc2e765757a4c5879bbd9a25f589",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaTerminalCertificate/Variantd04f0e83496be5952a4e92fccf7f9f3eb1fb78b09431b810b04621b0050df305.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33100fc5-1efc-bc1b-5e89-2183df308dd5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem raw_quadratic_local_certificate (A : ℝ) (u v c e : ℕ → ℝ)
    (hcert : RawQuadraticCertificate A u v c e) :
    ∀ j < rawCutoff A,
      rawCellReadout A j + quadraticPotential (u (j + 1)) (v (j + 1)) (c (j + 1))
        (physicalMultiplier A j * physicalState A j + physicalForcing A j) -
          quadraticPotential (u j) (v j) (c j) (physicalState A j) ≤ e j := by
  have hLU : (-1 : ℝ) ≤ Real.log 4 + 3 := by
    linarith [Real.log_nonneg (by norm_num : (1 : ℝ) ≤ 4)]
  exact quadratic_local_subaction (physicalState A) (physicalMultiplier A)
    (physicalForcing A) (rawCellCoefficient A) (rawCellOffset A) u v c e (rawCutoff A)
    (-1) (Real.log 4 + 3) hLU (fun j _ => physicalState_bounds A j) hcert

/-- Exact raw arithmetic subactions have the true physical endpoint payment. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaTerminalCertificate/Variantd04f0e83496be5952a4e92fccf7f9f3eb1fb78b09431b810b04621b0050df305.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaTerminalCertificate/Variantd04f0e83496be5952a4e92fccf7f9f3eb1fb78b09431b810b04621b0050df305.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fa3e1caab0cc8bd04fd8935202d9fa4b8b16df3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

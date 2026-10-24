# thetaPhiWhitenedParityCompression_eq_cfc_halfShift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2649e819-2845-32b0-13bd-b6a4c6cbaaec",
  "kind": "theorem",
  "lexical_name": "thetaPhiWhitenedParityCompression_eq_cfc_halfShift",
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
  "slug": "thetaphiwhitenedparitycompression-eq-cfc-halfshift--2169adca9209abfbcdd9ac51",
  "source": {
    "blob": "eb5aa29846757ef3a3c6c38c60f384ca6b2fb2ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 50,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantcd0114fa434ad6d16f983e78085b4ea6f6ca35a38defcac1d4c5ef9a2bfbdb73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2169adca9209abfbcdd9ac51303ce4edf87874c91f47ef0e51c62ee4bd2d6783",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantcd0114fa434ad6d16f983e78085b4ea6f6ca35a38defcac1d4c5ef9a2bfbdb73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2649e819-2845-32b0-13bd-b6a4c6cbaaec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiWhitenedParityCompression_eq_cfc_halfShift
    {k L N : ℕ} (hk : k ≤ L) (hN : 0 < N) (t : ℝ) :
    thetaPhiWhitenedParityCompression k L N t =
      cfc (fun x : ℝ => 1 - 2 * x)
        (thetaPhiWhitenedNegativeParityGram k L N t) := by
  rw [thetaPhiWhitenedParityCompression_eq_one_sub_two_negativeGram
    hk hN t]
  let K := thetaPhiWhitenedNegativeParityGram k L N t
  have hK :
      IsSelfAdjoint K :=
    (thetaPhiWhitenedNegativeParityGram_posSemidef
      k L N t).isHermitian.isSelfAdjoint
  change
    (1 : Matrix (Fin k) (Fin k) ℝ) - (2 : ℝ) • K =
      cfc (fun x : ℝ => 1 - 2 * x) K
  symm
  rw [cfc_sub (fun _ : ℝ => 1) (fun x : ℝ => 2 * x) K,
    cfc_const_one ℝ K hK,
    cfc_const_mul_id (2 : ℝ) K hK]

/-- Determinant of the compressed phase in the eigenbasis of the positive
odd-support Gram operator. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantcd0114fa434ad6d16f983e78085b4ea6f6ca35a38defcac1d4c5ef9a2bfbdb73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantcd0114fa434ad6d16f983e78085b4ea6f6ca35a38defcac1d4c5ef9a2bfbdb73.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb5aa29846757ef3a3c6c38c60f384ca6b2fb2ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

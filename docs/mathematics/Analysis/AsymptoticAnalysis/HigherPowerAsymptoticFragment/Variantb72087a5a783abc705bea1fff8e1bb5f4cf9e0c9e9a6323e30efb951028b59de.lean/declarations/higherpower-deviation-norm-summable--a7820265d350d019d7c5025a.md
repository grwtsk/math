# higherPower_deviation_norm_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32d6c296-371f-0d97-3ce9-7ddc6b2c0347",
  "kind": "theorem",
  "lexical_name": "higherPower_deviation_norm_summable",
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
  "slug": "higherpower-deviation-norm-summable--a7820265d350d019d7c5025a",
  "source": {
    "blob": "28b8f6531473d17bfaf0f3c4b25f8df29cbacc76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 78,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticFragment/Variantb72087a5a783abc705bea1fff8e1bb5f4cf9e0c9e9a6323e30efb951028b59de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7820265d350d019d7c5025ae00d4650bc8ef4a6802c365659341ea11d2f7a80",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticFragment/Variantb72087a5a783abc705bea1fff8e1bb5f4cf9e0c9e9a6323e30efb951028b59de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32d6c296-371f-0d97-3ce9-7ddc6b2c0347`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem higherPower_deviation_norm_summable (A : ℝ) (hA : 1 ≤ A) :
    Summable (fun q : {p : ℕ // p.Prime} × {k : ℕ // 3 ≤ k} =>
      ‖Real.log (q.1.val : ℝ) / (q.1.val : ℝ) ^ ((q.2.val : ℝ) / 2) *
        (sourceCorrelation explicitSecondDerivative A
          ((q.2.val : ℝ) * Real.log (q.1.val : ℝ)) - 1)‖) := by
  apply Summable.of_nonneg_of_le (fun _ => norm_nonneg _) _
    (primeHigherMoment_summable.mul_left (65 / (6 * A ^ 2)))
  intro q
  simpa only [Real.norm_eq_abs, higherMoment] using
    higherPower_deviation_term_bound A q.1.val q.2.val hA

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticFragment/Variantb72087a5a783abc705bea1fff8e1bb5f4cf9e0c9e9a6323e30efb951028b59de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticFragment/Variantb72087a5a783abc705bea1fff8e1bb5f4cf9e0c9e9a6323e30efb951028b59de.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28b8f6531473d17bfaf0f3c4b25f8df29cbacc76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

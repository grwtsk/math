# cutoff_variation_eq_divisor_cost

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:56a97c52-3acf-aad4-513d-5b1e16f5abe2",
  "kind": "theorem",
  "lexical_name": "cutoff_variation_eq_divisor_cost",
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
  "slug": "cutoff-variation-eq-divisor-cost--dbd7e5374e80f92c8ad3a9c3",
  "source": {
    "blob": "bd92e5c72cd0e6f94b3214789d932623c699276f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 53,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/56d8eae0789a12569f7caca84727a79e7ed3e6dee4a438010d0fe8b2b51cefd3ReplayAudit/Variantd74c9674e2d8ff6ef2927332f9805dcb70ac21525be6f3a22d37e21794c6f41d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dbd7e5374e80f92c8ad3a9c3e90e20a1bb9567214b1bc17afd355df010b4b828",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/56d8eae0789a12569f7caca84727a79e7ed3e6dee4a438010d0fe8b2b51cefd3ReplayAudit/Variantd74c9674e2d8ff6ef2927332f9805dcb70ac21525be6f3a22d37e21794c6f41d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56a97c52-3acf-aad4-513d-5b1e16f5abe2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cutoff_variation_eq_divisor_cost (a b n : ℕ) (hn : 0 < n) :
    cutoffVariation (fun U => longDivisorRow U n) a b =
      ∑ U ∈ Finset.Ico a b,
        if U + 1 ∣ n then |(moebius (U + 1) : ℝ)| else 0 := by
  apply Finset.sum_congr rfl
  intro U _
  rw [long_divisor_row_increment U n hn, abs_neg]
  split_ifs <;> simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/56d8eae0789a12569f7caca84727a79e7ed3e6dee4a438010d0fe8b2b51cefd3ReplayAudit/Variantd74c9674e2d8ff6ef2927332f9805dcb70ac21525be6f3a22d37e21794c6f41d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/56d8eae0789a12569f7caca84727a79e7ed3e6dee4a438010d0fe8b2b51cefd3ReplayAudit/Variantd74c9674e2d8ff6ef2927332f9805dcb70ac21525be6f3a22d37e21794c6f41d.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd92e5c72cd0e6f94b3214789d932623c699276f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

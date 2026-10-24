# polynomial_upper_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c8053c67-f12b-3f51-a4f2-ffb36b836bef",
  "kind": "theorem",
  "lexical_name": "polynomial_upper_add",
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
  "slug": "polynomial-upper-add--926f198298366ea094b25db1",
  "source": {
    "blob": "6a7f31e36d7d82f01d4e0d94e52072631aa74142",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 24,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PolynomialComposition/Variantcf06448bf0668934a9e6b3542f05392bcbc077ed9a16d606984ab967ba466e3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:926f198298366ea094b25db167fe6bf44da63c7e21740e5ff20a08f591182b03",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PolynomialComposition/Variantcf06448bf0668934a9e6b3542f05392bcbc077ed9a16d606984ab967ba466e3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8053c67-f12b-3f51-a4f2-ffb36b836bef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem polynomial_upper_add {f g : ℝ → ℝ}
    (hf : EventuallyPolynomialUpper f) (hg : EventuallyPolynomialUpper g) :
    EventuallyPolynomialUpper (fun A => f A + g A) := by
  obtain ⟨m, D, R, hD, hR, hf⟩ := hf
  obtain ⟨n, E, T, hE, hT, hg⟩ := hg
  refine ⟨m + n, D + E, max R T, add_nonneg hD hE, hR.trans (le_max_left _ _), ?_⟩
  intro A hA
  have hRA := (le_max_left R T).trans hA
  have hTA := (le_max_right R T).trans hA
  have hA1 := hR.trans hRA
  have hm : A ^ m ≤ A ^ (m + n) := pow_le_pow_right₀ hA1 (by omega)
  have hn : A ^ n ≤ A ^ (m + n) := pow_le_pow_right₀ hA1 (by omega)
  calc
    _ ≤ D * A ^ m + E * A ^ n := add_le_add (hf A hRA) (hg A hTA)
    _ ≤ D * A ^ (m + n) + E * A ^ (m + n) :=
      add_le_add (mul_le_mul_of_nonneg_left hm hD) (mul_le_mul_of_nonneg_left hn hE)
    _ = _ := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PolynomialComposition/Variantcf06448bf0668934a9e6b3542f05392bcbc077ed9a16d606984ab967ba466e3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PolynomialComposition/Variantcf06448bf0668934a9e6b3542f05392bcbc077ed9a16d606984ab967ba466e3d.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a7f31e36d7d82f01d4e0d94e52072631aa74142` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

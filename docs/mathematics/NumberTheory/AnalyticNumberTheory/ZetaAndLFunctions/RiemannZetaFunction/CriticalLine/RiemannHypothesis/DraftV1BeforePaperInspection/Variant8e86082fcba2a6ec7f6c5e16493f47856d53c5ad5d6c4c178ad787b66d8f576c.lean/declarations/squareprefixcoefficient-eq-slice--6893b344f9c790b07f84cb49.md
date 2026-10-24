# squarePrefixCoefficient_eq_slice

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f0bedc577c56e4c181f05c107f4f8736323b21ed",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 53,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8e/8e86082fcba2a6ec7f6c5e16493f47856d53c5ad5d6c4c178ad787b66d8f576c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:afda38b4-911d-0ce2-fe8e-63b702802a97",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c68ee864-dbd5-6df0-feec-52a95aca4875",
  "kind": "theorem",
  "lexical_name": "squarePrefixCoefficient_eq_slice",
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
  "slug": "squareprefixcoefficient-eq-slice--6893b344f9c790b07f84cb49",
  "source": {
    "blob": "f0bedc577c56e4c181f05c107f4f8736323b21ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 53,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DraftV1BeforePaperInspection/Variant8e86082fcba2a6ec7f6c5e16493f47856d53c5ad5d6c4c178ad787b66d8f576c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6893b344f9c790b07f84cb496edb70c8d692b507c6658d9fcec241a113dc1234",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DraftV1BeforePaperInspection/Variant8e86082fcba2a6ec7f6c5e16493f47856d53c5ad5d6c4c178ad787b66d8f576c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c68ee864-dbd5-6df0-feec-52a95aca4875`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squarePrefixCoefficient_eq_slice (p : Nat.Primes) :
    squarePrefixCoefficient p = higherAtomWeight (p, 1) := by
  have hp0 : 0 < ((p : ℕ) : ℝ) := by exact_mod_cast p.property.pos
  have he : primeRatio p ^ 4 = (((p : ℕ) : ℝ)^2)⁻¹ := by
    unfold primeRatio
    rw [← Real.rpow_mul_natCast hp0.le]
    rw [show (-(1 : ℝ)/2)*(4 : ℕ) = -(2 : ℝ) by norm_num,
      Real.rpow_neg hp0.le, Real.rpow_two]
  simp only [higherAtomWeight, higherAtomExponent]
  norm_num only [Nat.reduceAdd]
  rw [he]
  simp only [squarePrefixCoefficient, div_eq_mul_inv]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DraftV1BeforePaperInspection/Variant8e86082fcba2a6ec7f6c5e16493f47856d53c5ad5d6c4c178ad787b66d8f576c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DraftV1BeforePaperInspection/Variant8e86082fcba2a6ec7f6c5e16493f47856d53c5ad5d6c4c178ad787b66d8f576c.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0bedc577c56e4c181f05c107f4f8736323b21ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

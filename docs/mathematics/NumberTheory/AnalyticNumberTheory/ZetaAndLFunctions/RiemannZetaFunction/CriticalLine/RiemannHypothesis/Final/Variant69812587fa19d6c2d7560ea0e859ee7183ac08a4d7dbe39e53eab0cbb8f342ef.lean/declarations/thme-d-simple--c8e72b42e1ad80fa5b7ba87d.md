# thmE_D₀_simple

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bcdb9d9ee9dee46e1561b8d82834056b298fff37",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 135,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/69/69812587fa19d6c2d7560ea0e859ee7183ac08a4d7dbe39e53eab0cbb8f342ef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d81b7266-45bd-be8f-8460-7f2dab54edf6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e814db3a-8bfd-01f4-cd98-3e6644b6a361",
  "kind": "theorem",
  "lexical_name": "thmE_D₀_simple",
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
  "slug": "thme-d-simple--c8e72b42e1ad80fa5b7ba87d",
  "source": {
    "blob": "bcdb9d9ee9dee46e1561b8d82834056b298fff37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 135,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant69812587fa19d6c2d7560ea0e859ee7183ac08a4d7dbe39e53eab0cbb8f342ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8e72b42e1ad80fa5b7ba87d40af4d6df250d28111ffe2e1904392483260c287",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant69812587fa19d6c2d7560ea0e859ee7183ac08a4d7dbe39e53eab0cbb8f342ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e814db3a-8bfd-01f4-cd98-3e6644b6a361`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thmE_D₀_simple (hq : 1 < q) (hprim : χ.IsPrimitive) :
    ∀ ε > 0, ∃ T₀ : ℝ, ∀ T ≥ T₀,
      (2 * cStar 1 - 1 - ε) * (NcountL χ T (2 * T) : ℝ) ≤ N0simpleL χ T (2 * T) :=
  eps_form_twoCStar (N := fun T => (NcountL χ T (2 * T) : ℝ))
    (lower := fun T => (N0simpleL χ T (2 * T) : ℝ))
    (fun _ => Nat.cast_nonneg _) fun lam h1 h2 => thmE_D_simple_lam hq hprim (by linarith) h2

/-- **[thm:E] "Theorem D holds likewise", third constant, NO hypotheses**:
N_{d,χ}(T,2T) ≥ (c₁* − ε)·N_χ(T,2T) — distinct zeros (0.7532…). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant69812587fa19d6c2d7560ea0e859ee7183ac08a4d7dbe39e53eab0cbb8f342ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant69812587fa19d6c2d7560ea0e859ee7183ac08a4d7dbe39e53eab0cbb8f342ef.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcdb9d9ee9dee46e1561b8d82834056b298fff37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# source_power_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0fb9a448ce2dd7daeccde3f88174f335abed1030",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 11,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/aa/aac481cacd86c4ee16cc8d7b8395bc59f3e53e7366759b178f5045a03d27dd9c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3c744f6f-4622-6c03-690c-c6cedf190200",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:efa49265-84eb-6f17-95b0-5f1158b2c4d1",
  "kind": "theorem",
  "lexical_name": "source_power_integrable",
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
  "slug": "source-power-integrable--7e22af04b6f59c64dd10b28c",
  "source": {
    "blob": "0fb9a448ce2dd7daeccde3f88174f335abed1030",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 24,
    "line": 11,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Aac481cacd86c4ee16cc8d7b8395bc59f3e53e7366759b178f5045a03d27dd9cDerivativeAudit/Variantaac481cacd86c4ee16cc8d7b8395bc59f3e53e7366759b178f5045a03d27dd9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e22af04b6f59c64dd10b28cd2c0b3da53034e956a53eb5f99773709eca2e9bd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Aac481cacd86c4ee16cc8d7b8395bc59f3e53e7366759b178f5045a03d27dd9cDerivativeAudit/Variantaac481cacd86c4ee16cc8d7b8395bc59f3e53e7366759b178f5045a03d27dd9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:efa49265-84eb-6f17-95b0-5f1158b2c4d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 11–24.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_power_integrable (n : ℕ) (t : ℝ) :
    IntegrableOn (fun u => thetaPhi u * u ^ n) (Ici t) := by
  have h0 : IntegrableOn (fun u => thetaPhi u * u ^ n) (Ici (0 : ℝ)) := by
    have h := (thetaTail_integrable n (le_refl 0)).mul_const (n.factorial : ℝ)
    simpa only [IntegrableOn, sub_zero, div_mul_cancel₀ _ (by positivity : (n.factorial : ℝ) ≠ 0)] using h
  by_cases ht : 0 ≤ t
  · exact h0.mono_set (Ici_subset_Ici.mpr ht)
  · apply (((continuous_thetaPhi.mul (continuous_id.pow n)).continuousOn.integrableOn_Icc
      (a := t) (b := 0)).union h0).mono_set
    intro u hu
    by_cases hu0 : 0 ≤ u
    · exact Or.inr hu0
    · exact Or.inl ⟨hu, le_of_not_ge hu0⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Aac481cacd86c4ee16cc8d7b8395bc59f3e53e7366759b178f5045a03d27dd9cDerivativeAudit/Variantaac481cacd86c4ee16cc8d7b8395bc59f3e53e7366759b178f5045a03d27dd9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Aac481cacd86c4ee16cc8d7b8395bc59f3e53e7366759b178f5045a03d27dd9cDerivativeAudit/Variantaac481cacd86c4ee16cc8d7b8395bc59f3e53e7366759b178f5045a03d27dd9c.lean#L11).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fb9a448ce2dd7daeccde3f88174f335abed1030` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

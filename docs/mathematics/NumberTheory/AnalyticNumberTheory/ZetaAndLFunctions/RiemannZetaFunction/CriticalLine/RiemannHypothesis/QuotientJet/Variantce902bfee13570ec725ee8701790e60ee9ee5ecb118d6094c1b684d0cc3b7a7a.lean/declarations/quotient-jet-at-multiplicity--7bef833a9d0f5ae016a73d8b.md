# quotient_jet_at_multiplicity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "104bb07f9572ac6c8e6af40504e7411f7408759d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 33,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ce/ce902bfee13570ec725ee8701790e60ee9ee5ecb118d6094c1b684d0cc3b7a7a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a6ad91c3-9ca1-3772-47fd-b0e1ce7c59d9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:23ded1b6-891c-cc11-d9a4-6fe87bb49398",
  "kind": "theorem",
  "lexical_name": "quotient_jet_at_multiplicity",
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
  "slug": "quotient-jet-at-multiplicity--7bef833a9d0f5ae016a73d8b",
  "source": {
    "blob": "104bb07f9572ac6c8e6af40504e7411f7408759d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 33,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/QuotientJet/Variantce902bfee13570ec725ee8701790e60ee9ee5ecb118d6094c1b684d0cc3b7a7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7bef833a9d0f5ae016a73d8b59a5af04a17f37a58efc341a5df75363e4958c72",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/QuotientJet/Variantce902bfee13570ec725ee8701790e60ee9ee5ecb118d6094c1b684d0cc3b7a7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23ded1b6-891c-cc11-d9a4-6fe87bb49398`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quotient_jet_at_multiplicity
    {u v : ℂ → ℂ} {z₀ du dv : ℂ} {m : ℕ}
    (hu : HasDerivAt u du z₀) (hv : HasDerivAt v dv z₀)
    (hu₀ : u z₀ ≠ 0) (hm : 0 < m)
    (hvalue : v z₀ = (m : ℂ) * u z₀) :
    HasDerivAt (fun z : ℂ ↦ (z - z₀) * u z / v z) (m : ℂ)⁻¹ z₀ := by
  exact derivative_of_normalized_removable_quotient hu hv hu₀
    (by exact_mod_cast (Nat.ne_of_gt hm)) hvalue

end FormalResearch.RiemannHypothesis.QuotientJet
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/QuotientJet/Variantce902bfee13570ec725ee8701790e60ee9ee5ecb118d6094c1b684d0cc3b7a7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/QuotientJet/Variantce902bfee13570ec725ee8701790e60ee9ee5ecb118d6094c1b684d0cc3b7a7a.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `104bb07f9572ac6c8e6af40504e7411f7408759d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

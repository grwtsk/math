# MeromorphicNFAt.meromorphicOrderAt_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2f847eede3c3cd158a154044da915c22e9eadc6b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 156,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/800305362d3d82c70c7364f83795ae9ee2301b4744d0529c4a0985fbbb9d122e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bdd8b60d-6320-c98f-5a7d-2f1a351ceb05",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:50ad8197-bee0-d23e-03a1-d712abff7f42",
  "kind": "theorem",
  "lexical_name": "MeromorphicNFAt.meromorphicOrderAt_eq_zero_iff",
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
  "slug": "meromorphicnfat-meromorphicorderat-eq-zero-iff--79a2f47fbecc53e922be5f2a",
  "source": {
    "blob": "2f847eede3c3cd158a154044da915c22e9eadc6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 156,
    "path": "GRWTSK/Analysis/ComplexAnalysis/NormalForm/Variant800305362d3d82c70c7364f83795ae9ee2301b4744d0529c4a0985fbbb9d122e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79a2f47fbecc53e922be5f2ac00797a82be5420ab41ae3de735b14356cbd8ad2",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/NormalForm/Variant800305362d3d82c70c7364f83795ae9ee2301b4744d0529c4a0985fbbb9d122e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50ad8197-bee0-d23e-03a1-d712abff7f42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MeromorphicNFAt.meromorphicOrderAt_eq_zero_iff (hf : MeromorphicNFAt f x) :
    meromorphicOrderAt f x = 0 ↔ f x ≠ 0 := by
  constructor
  · intro h₁f
    have h₂f := hf.meromorphicOrderAt_nonneg_iff_analyticAt.1 (le_of_eq h₁f.symm)
    rw [← h₂f.analyticOrderAt_eq_zero, ← ENat.map_natCast_eq_zero (α := ℤ)]
    rwa [h₂f.meromorphicOrderAt_eq] at h₁f
  · intro h
    rcases id hf with h₁ | ⟨n, g, h₁g, h₂g, h₃g⟩
    · have := h₁.eq_of_nhds
      tauto
    · have : n = 0 := by
        by_contra hContra
        have := h₃g.eq_of_nhds
        simp only [Pi.smul_apply', Pi.pow_apply, sub_self, zero_zpow n hContra, zero_smul] at this
        tauto
      simp only [this, zpow_zero] at h₃g
      apply (meromorphicOrderAt_eq_int_iff hf.meromorphicAt).2
      use g, h₁g, h₂g
      simp only [zpow_zero]
      exact h₃g.filter_mono nhdsWithin_le_nhds

/-!
### Local nature of the definition and local identity theorem
-/

/--
**Local identity theorem**: two meromorphic functions in normal form agree in a neighborhood iff
they agree in a pointed neighborhood.

See `ContinuousAt.eventuallyEq_nhds_iff_eventuallyEq_nhdsNE` for the analogous statement for
continuous functions.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/NormalForm/Variant800305362d3d82c70c7364f83795ae9ee2301b4744d0529c4a0985fbbb9d122e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/NormalForm/Variant800305362d3d82c70c7364f83795ae9ee2301b4744d0529c4a0985fbbb9d122e.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f847eede3c3cd158a154044da915c22e9eadc6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

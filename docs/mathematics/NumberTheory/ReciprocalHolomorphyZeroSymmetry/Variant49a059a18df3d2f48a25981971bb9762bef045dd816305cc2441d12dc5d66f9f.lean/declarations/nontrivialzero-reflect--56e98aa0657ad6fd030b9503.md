# NontrivialZero.reflect

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "48c190cd3df3c2d6e58624e68a5178eb0a69f1d5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 123,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/GRWTSK/NumberTheory/Zeta/ReciprocalHolomorphyZeroSymmetry.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:68e1f2a2-c1f6-3fc9-a3c6-dddd2a8e839c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e6cb9a86-1006-a27e-edec-02b97e09f090",
  "kind": "theorem",
  "lexical_name": "NontrivialZero.reflect",
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
  "slug": "nontrivialzero-reflect--56e98aa0657ad6fd030b9503",
  "source": {
    "blob": "48c190cd3df3c2d6e58624e68a5178eb0a69f1d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 123,
    "path": "GRWTSK/NumberTheory/ReciprocalHolomorphyZeroSymmetry/Variant49a059a18df3d2f48a25981971bb9762bef045dd816305cc2441d12dc5d66f9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56e98aa0657ad6fd030b95030e3cf65fc3e5180507da9eac3cd520e5ce5471ff",
  "verification": {
    "reference": "docs/verification/NumberTheory/ReciprocalHolomorphyZeroSymmetry/Variant49a059a18df3d2f48a25981971bb9762bef045dd816305cc2441d12dc5d66f9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6cb9a86-1006-a27e-edec-02b97e09f090`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem NontrivialZero.reflect {s : ℂ} (hs : NontrivialZero s) :
    NontrivialZero (1 - s) := by
  have hcompleted : completedRiemannZeta s = 0 := by
    have h := hs.1
    rw [riemannZeta_def_of_ne_zero hs.ne_zero] at h
    exact (div_eq_zero_iff.mp h).resolve_right hs.gamma_real_ne_zero
  have hreflect : 1 - s ≠ 0 := sub_ne_zero.mpr (Ne.symm hs.2.2)
  refine ⟨?_, ?_, ?_⟩
  · rw [riemannZeta_def_of_ne_zero hreflect, completedRiemannZeta_one_sub,
      hcompleted, zero_div]
  · rintro ⟨n, hn⟩
    have hlarge : 1 ≤ s.re := by
      have hreal := congrArg Complex.re hn
      simp at hreal
      have hn_nonneg : (0 : ℝ) ≤ n := Nat.cast_nonneg n
      linarith
    exact riemannZeta_ne_zero_of_one_le_re hlarge hs.1
  · intro h
    apply hs.ne_zero
    linear_combination -h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/ReciprocalHolomorphyZeroSymmetry/Variant49a059a18df3d2f48a25981971bb9762bef045dd816305cc2441d12dc5d66f9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ReciprocalHolomorphyZeroSymmetry/Variant49a059a18df3d2f48a25981971bb9762bef045dd816305cc2441d12dc5d66f9f.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48c190cd3df3c2d6e58624e68a5178eb0a69f1d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

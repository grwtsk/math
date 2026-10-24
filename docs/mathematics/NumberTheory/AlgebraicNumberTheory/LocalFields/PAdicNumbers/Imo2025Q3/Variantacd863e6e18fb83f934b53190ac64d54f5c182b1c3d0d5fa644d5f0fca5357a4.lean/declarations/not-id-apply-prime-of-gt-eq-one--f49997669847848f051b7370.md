# not_id_apply_prime_of_gt_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fa09bcc0c3fa865b9ef049fb56560c9cfd7ad0e5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 78,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/acd863e6e18fb83f934b53190ac64d54f5c182b1c3d0d5fa644d5f0fca5357a4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:88597c31-7b41-7b50-b60e-cbd2005e489d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:18743097-a7f3-d2bf-bf89-22517d9d8196",
  "kind": "theorem",
  "lexical_name": "not_id_apply_prime_of_gt_eq_one",
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
  "slug": "not-id-apply-prime-of-gt-eq-one--f49997669847848f051b7370",
  "source": {
    "blob": "fa09bcc0c3fa865b9ef049fb56560c9cfd7ad0e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 78,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Imo2025Q3/Variantacd863e6e18fb83f934b53190ac64d54f5c182b1c3d0d5fa644d5f0fca5357a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f49997669847848f051b737029f6aa45dd3b51bd85ec24a4f41595d410147c05",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Imo2025Q3/Variantacd863e6e18fb83f934b53190ac64d54f5c182b1c3d0d5fa644d5f0fca5357a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18743097-a7f3-d2bf-bf89-22517d9d8196`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_id_apply_prime_of_gt_eq_one (hf : IsBonza f) (hnf : ¬ ∀ x > (0 : ℕ), f x = x) :
    ∃ N, ∀ p > N, p.Prime → f p = 1 := by
  obtain ⟨b, hb, ne⟩ : ∃ b, 0 < b ∧ f b ≠ b := Set.not_subset.mp hnf
  use ((b : ℤ) - (f b : ℤ)).natAbs
  intro p _ pp
  have : f p = 1 ∨ (p : ℤ) ∣ (b : ℤ) - (f b : ℤ) :=
    Or.casesOn (hf.apply_prime_eq_one_or_dvd_self_sub_apply pp) (by grind) (by grind)
  rcases this with ch | ch
  · exact ch
  · have : p ≤ ((b : ℤ) - (f b : ℤ)).natAbs := natAbs_le_of_dvd_ne_zero ch (by grind)
    linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Imo2025Q3/Variantacd863e6e18fb83f934b53190ac64d54f5c182b1c3d0d5fa644d5f0fca5357a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Imo2025Q3/Variantacd863e6e18fb83f934b53190ac64d54f5c182b1c3d0d5fa644d5f0fca5357a4.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa09bcc0c3fa865b9ef049fb56560c9cfd7ad0e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

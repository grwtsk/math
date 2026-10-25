# IsCycle.pow_eq_pow_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "872c6e8318bb5cdfd4a7da8912e14238e2077040",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 589,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/96/9676b8bc55e2147cba287fe535e48dafd0a74c2cf2ae45e692267bdd1c68477a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ae1d3b4d-50c3-40e4-60fc-7ebe0a9d57c4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cd1dd886-71a5-7e1b-81f7-2da39a89c1ce",
  "kind": "theorem",
  "lexical_name": "IsCycle.pow_eq_pow_iff",
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
  "slug": "iscycle-pow-eq-pow-iff--92e23fae1435f0304a3e959c",
  "source": {
    "blob": "872c6e8318bb5cdfd4a7da8912e14238e2077040",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 611,
    "line": 589,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9676b8bc55e2147cba287fe535e48dafd0a74c2cf2ae45e692267bdd1c68477a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92e23fae1435f0304a3e959c0516573594c07b45f3be439d186294b7be735614",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9676b8bc55e2147cba287fe535e48dafd0a74c2cf2ae45e692267bdd1c68477a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd1dd886-71a5-7e1b-81f7-2da39a89c1ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 589–611.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsCycle.pow_eq_pow_iff [Finite β] {f : Perm β} (hf : IsCycle f) {a b : ℕ} :
    f ^ a = f ^ b ↔ ∃ x, f x ≠ x ∧ (f ^ a) x = (f ^ b) x := by
  classical
    cases nonempty_fintype β
    constructor
    · intro h
      obtain ⟨x, hx, -⟩ := id hf
      exact ⟨x, hx, by simp [h]⟩
    · rintro ⟨x, hx, hx'⟩
      wlog hab : a ≤ b generalizing a b
      · exact (this hx'.symm (le_of_not_le hab)).symm
      suffices f ^ (b - a) = 1 by
        rw [pow_sub _ hab, mul_inv_eq_one] at this
        rw [this]
      rw [hf.pow_eq_one_iff]
      by_cases hfa : (f ^ a) x ∈ f.support
      · refine ⟨(f ^ a) x, mem_support.mp hfa, ?_⟩
        simp only [pow_sub _ hab, Equiv.Perm.coe_mul, Function.comp_apply, inv_apply_self, ← hx']
      · have h := @Equiv.Perm.zpow_apply_comm _ f 1 a x
        simp only [zpow_one, zpow_natCast] at h
        rw [notMem_support, h, Function.Injective.eq_iff (f ^ a).injective] at hfa
        contradiction

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9676b8bc55e2147cba287fe535e48dafd0a74c2cf2ae45e692267bdd1c68477a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9676b8bc55e2147cba287fe535e48dafd0a74c2cf2ae45e692267bdd1c68477a.lean#L589).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `872c6e8318bb5cdfd4a7da8912e14238e2077040` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

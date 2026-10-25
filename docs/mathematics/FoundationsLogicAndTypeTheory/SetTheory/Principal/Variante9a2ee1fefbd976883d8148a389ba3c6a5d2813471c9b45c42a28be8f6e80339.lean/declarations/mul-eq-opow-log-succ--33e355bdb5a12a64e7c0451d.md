# mul_eq_opow_log_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "381c49ba5d1fc9201783573147a9fba2c7790c26",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 493,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e9/e9a2ee1fefbd976883d8148a389ba3c6a5d2813471c9b45c42a28be8f6e80339.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:40f6e8d5-48b9-3e0e-b11d-f4131f3857b0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f05ef11c-a72d-5113-13c8-94f91257ff96",
  "kind": "theorem",
  "lexical_name": "mul_eq_opow_log_succ",
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
  "slug": "mul-eq-opow-log-succ--33e355bdb5a12a64e7c0451d",
  "source": {
    "blob": "381c49ba5d1fc9201783573147a9fba2c7790c26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 512,
    "line": 493,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variante9a2ee1fefbd976883d8148a389ba3c6a5d2813471c9b45c42a28be8f6e80339.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33e355bdb5a12a64e7c0451d006344804ab4fbad87ee6316848149ccd99f0b6e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variante9a2ee1fefbd976883d8148a389ba3c6a5d2813471c9b45c42a28be8f6e80339.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f05ef11c-a72d-5113-13c8-94f91257ff96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 493–512.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_eq_opow_log_succ (ha : a ≠ 0) (hb : IsPrincipal (· * ·) b) (hb₂ : 2 < b) :
    a * b = b ^ succ (log b a) := by
  apply le_antisymm
  · have hbl := isSuccLimit_of_isPrincipal_mul hb₂ hb
    rw [(isNormal_mul_right (pos_iff_ne_zero.2 ha)).apply_of_isSuccLimit hbl,
      Ordinal.iSup_le_iff]
    intro ⟨c, hcb⟩
    have hb₁ : 1 < b := one_lt_two.trans hb₂
    have hbo₀ : b ^ log b a ≠ 0 := pos_iff_ne_zero.1 (opow_pos _ (zero_lt_one.trans hb₁))
    apply (mul_le_mul_left (le_of_lt (lt_mul_succ_div a hbo₀)) c).trans
    rw [mul_assoc]
    conv_rhs => rw [succ_eq_add_one, opow_add_one]
    gcongr
    refine (hb (hbl.succ_lt ?_) hcb).le
    rw [← lt_mul_iff_div_lt hbo₀, ← opow_add_one]
    simpa [succ_eq_add_one] using lt_opow_succ_log_self hb₁ _
  · grw [succ_eq_add_one, opow_add_one, opow_log_le_self b ha]

/-! #### Exponential principal ordinals -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variante9a2ee1fefbd976883d8148a389ba3c6a5d2813471c9b45c42a28be8f6e80339.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variante9a2ee1fefbd976883d8148a389ba3c6a5d2813471c9b45c42a28be8f6e80339.lean#L493).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `381c49ba5d1fc9201783573147a9fba2c7790c26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# lcs_le_lcs_of_is_nilpotent_span_sup_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6eb8124bd3544fda957c017ee7b875e6d4284068",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 107,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d32e3f74fdeb217af169652a161829fdce67e82ca5ab024bf62b41e4ffa605b4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f15969bd-095a-3a23-d522-23928b3d9067",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5d507dae-0464-36a9-ebec-2e94823b8bcd",
  "kind": "theorem",
  "lexical_name": "lcs_le_lcs_of_is_nilpotent_span_sup_eq_top",
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
  "slug": "lcs-le-lcs-of-is-nilpotent-span-sup-eq-top--006072c98681b78d70825bc5",
  "source": {
    "blob": "6eb8124bd3544fda957c017ee7b875e6d4284068",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 107,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Engel/Variantd32e3f74fdeb217af169652a161829fdce67e82ca5ab024bf62b41e4ffa605b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:006072c98681b78d70825bc54ca6a6e29835cb62845f250e294c86b0e6904e65",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Engel/Variantd32e3f74fdeb217af169652a161829fdce67e82ca5ab024bf62b41e4ffa605b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d507dae-0464-36a9-ebec-2e94823b8bcd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lcs_le_lcs_of_is_nilpotent_span_sup_eq_top {n i j : ℕ}
    (hxn : toEndomorphism R L M x ^ n = 0) (hIM : lowerCentralSeries R L M i ≤ I.lcs M j) :
    lowerCentralSeries R L M (i + n) ≤ I.lcs M (j + 1) := by
  suffices
    ∀ l,
      ((⊤ : LieIdeal R L).lcs M (i + l) : Submodule R M) ≤
        (I.lcs M j : Submodule R M).map (toEndomorphism R L M x ^ l) ⊔
          (I.lcs M (j + 1) : Submodule R M)
    by simpa only [bot_sup_eq, LieIdeal.incl_coe, Submodule.map_zero, hxn] using this n
  intro l
  induction' l with l ih
  · simp only [Nat.zero_eq, add_zero, LieIdeal.lcs_succ, pow_zero, LinearMap.one_eq_id,
      Submodule.map_id]
    exact le_sup_of_le_left hIM
  · simp only [LieIdeal.lcs_succ, i.add_succ l, lie_top_eq_of_span_sup_eq_top hxI, sup_le_iff]
    refine' ⟨(Submodule.map_mono ih).trans _, le_sup_of_le_right _⟩
    · rw [Submodule.map_sup, ← Submodule.map_comp, ← LinearMap.mul_eq_comp, ← pow_succ, ←
        I.lcs_succ]
      exact sup_le_sup_left coe_map_toEndomorphism_le _
    · refine' le_trans (mono_lie_right _ _ I _) (mono_lie_right _ _ I hIM)
      exact antitone_lowerCentralSeries R L M le_self_add
#align lie_submodule.lcs_le_lcs_of_is_nilpotent_span_sup_eq_top LieSubmodule.lcs_le_lcs_of_is_nilpotent_span_sup_eq_top

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Engel/Variantd32e3f74fdeb217af169652a161829fdce67e82ca5ab024bf62b41e4ffa605b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Engel/Variantd32e3f74fdeb217af169652a161829fdce67e82ca5ab024bf62b41e4ffa605b4.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6eb8124bd3544fda957c017ee7b875e6d4284068` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

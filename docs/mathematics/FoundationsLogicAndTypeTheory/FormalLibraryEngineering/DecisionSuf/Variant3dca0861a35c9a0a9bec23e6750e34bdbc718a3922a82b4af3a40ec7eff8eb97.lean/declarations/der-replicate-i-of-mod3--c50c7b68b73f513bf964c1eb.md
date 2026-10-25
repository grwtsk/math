# der_replicate_I_of_mod3

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cbe8ad188f6bb5aa23a45759ba677f2cf75a9972",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 178,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3d/3dca0861a35c9a0a9bec23e6750e34bdbc718a3922a82b4af3a40ec7eff8eb97.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:efcf10a3-5bcc-6ee0-90a1-f02e6daa9034",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3697ee77-fe22-f64b-45df-31a09091769c",
  "kind": "theorem",
  "lexical_name": "der_replicate_I_of_mod3",
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
  "slug": "der-replicate-i-of-mod3--c50c7b68b73f513bf964c1eb",
  "source": {
    "blob": "cbe8ad188f6bb5aa23a45759ba677f2cf75a9972",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 178,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecisionSuf/Variant3dca0861a35c9a0a9bec23e6750e34bdbc718a3922a82b4af3a40ec7eff8eb97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c50c7b68b73f513bf964c1ebba85c90c3ac94a870699fcb852ddb763fa820fdb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecisionSuf/Variant3dca0861a35c9a0a9bec23e6750e34bdbc718a3922a82b4af3a40ec7eff8eb97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3697ee77-fe22-f64b-45df-31a09091769c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem der_replicate_I_of_mod3 (c : ℕ) (h : c % 3 = 1 ∨ c % 3 = 2) :
    Derivable (M :: replicate c I) := by
  -- From `der_cons_replicate`, we can derive the `Miustr` `M::w` described in the introduction.
  obtain ⟨m, hm⟩ := le_pow2_and_pow2_eq_mod3 c h -- `2^m` will be the number of `I`s in `M::w`
  have hw₂ : Derivable (M :: replicate (2 ^ m) I ++ replicate ((2 ^ m - c) / 3 % 2) U) := by
    rcases mod_two_eq_zero_or_one ((2 ^ m - c) / 3) with h_zero | h_one
    · -- `(2^m - c)/3 ≡ 0 [MOD 2]`
      simp only [der_cons_replicate m, append_nil, List.replicate, h_zero]
    · -- case `(2^m - c)/3 ≡ 1 [MOD 2]`
      rw [h_one, ← replicate_pow_minus_append, append_assoc]
      apply Derivable.r1
      rw [replicate_pow_minus_append]
      exact der_cons_replicate m
  have hw₃ : Derivable (M :: replicate c I ++
      replicate ((2 ^ m - c) / 3) U ++ replicate ((2 ^ m - c) / 3 % 2) U) := by
    apply
      der_cons_replicate_I_replicate_U_append_of_der_cons_replicate_I_append c ((2 ^ m - c) / 3) h
    convert hw₂ using 4
    -- now we must show `c + 3 * ((2 ^ m - c) / 3) = 2 ^ m`
    rw [Nat.mul_div_cancel']
    · exact add_tsub_cancel_of_le hm.1
    · exact (modEq_iff_dvd' hm.1).mp hm.2.symm
  rw [append_assoc, ← replicate_add _ _] at hw₃
  obtain ⟨t, ht⟩ := add_mod2 ((2 ^ m - c) / 3)
  rw [ht] at hw₃
  exact der_of_der_append_replicate_U_even hw₃

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecisionSuf/Variant3dca0861a35c9a0a9bec23e6750e34bdbc718a3922a82b4af3a40ec7eff8eb97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecisionSuf/Variant3dca0861a35c9a0a9bec23e6750e34bdbc718a3922a82b4af3a40ec7eff8eb97.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbe8ad188f6bb5aa23a45759ba677f2cf75a9972` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

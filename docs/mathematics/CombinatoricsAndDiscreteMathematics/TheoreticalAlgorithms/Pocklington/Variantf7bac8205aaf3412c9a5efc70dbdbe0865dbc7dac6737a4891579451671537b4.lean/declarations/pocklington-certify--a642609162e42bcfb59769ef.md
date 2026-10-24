# pocklington_certify

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3c1b10936ddf9673d6608c8057531ce7b793927a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 144,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f7bac8205aaf3412c9a5efc70dbdbe0865dbc7dac6737a4891579451671537b4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dc0cfc0e-648f-769b-cef1-b8aab5970fca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ca84d994-e05c-0c10-13da-e938d09e66ff",
  "kind": "theorem",
  "lexical_name": "pocklington_certify",
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
  "slug": "pocklington-certify--a642609162e42bcfb59769ef",
  "source": {
    "blob": "3c1b10936ddf9673d6608c8057531ce7b793927a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 144,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variantf7bac8205aaf3412c9a5efc70dbdbe0865dbc7dac6737a4891579451671537b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a642609162e42bcfb59769ef70898a9d64ab528f49011c2707f24d6cebdd5822",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variantf7bac8205aaf3412c9a5efc70dbdbe0865dbc7dac6737a4891579451671537b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca84d994-e05c-0c10-13da-e938d09e66ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pocklington_certify (N F₁ : ℕ) (h2n : 2 ≤ N) (hf₁ : F₁ ∣ N - 1) (hf₁' : N.sqrt < F₁)
    (root : ℕ) (psp : root ^ (N - 1) ≡ 1 [MOD N])
    (primitive : PocklingtonPred N root F₁) :
    Nat.Prime N := by
  by_contra hn
  rw [Nat.sqrt_lt, ← sq] at hf₁'
  have := pocklington_test N F₁ (by grind) hf₁ (fun p hp ↦ ⟨root, psp, primitive p hp⟩)
    N.minFac (N.minFac_prime (by grind)) N.minFac_dvd
  have h1p : 2 ≤ N.minFac := (N.minFac_prime (by grind)).two_le
  rw [Nat.ModEq.comm, Nat.modEq_iff_dvd' (by grind)] at this
  have := Nat.succ_le_iff.mp <| (Nat.le_sub_iff_add_le (by grind)).mp <|
    Nat.le_of_dvd (by grind) this
  exact lt_asymm hf₁' <| ((Nat.pow_lt_pow_iff_left (by grind)).mpr this).trans_le <|
    Nat.minFac_sq_le_self (by grind) hn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variantf7bac8205aaf3412c9a5efc70dbdbe0865dbc7dac6737a4891579451671537b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variantf7bac8205aaf3412c9a5efc70dbdbe0865dbc7dac6737a4891579451671537b4.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c1b10936ddf9673d6608c8057531ce7b793927a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

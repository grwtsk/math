# tedious

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b6a0a2b52d61cb66b1bda0c11fcd1b9e649c3502",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 40,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/ea65739d52a338e525607c01b7aec4424f599455b761916a057f9919bf8c031b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:51b95856-cfef-5475-420e-46112b8eea08",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:76dc412b-6dcf-7a19-7e94-eff288291308",
  "kind": "theorem",
  "lexical_name": "tedious",
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
  "slug": "tedious--ee79a0def380cdfcf861205e",
  "source": {
    "blob": "b6a0a2b52d61cb66b1bda0c11fcd1b9e649c3502",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 40,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Imo1994Q1/Variantea65739d52a338e525607c01b7aec4424f599455b761916a057f9919bf8c031b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee79a0def380cdfcf861205ed065c103ab34c0f50c6acff8f1357a0fe067f0b6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Imo1994Q1/Variantea65739d52a338e525607c01b7aec4424f599455b761916a057f9919bf8c031b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76dc412b-6dcf-7a19-7e94-eff288291308`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tedious (m : ℕ) (k : Fin (m + 1)) : m - (m + (m + 1 - ↑k)) % (m + 1) = ↑k := by
  cases' k with k hk
  rw [Nat.lt_succ_iff, le_iff_exists_add] at hk
  rcases hk with ⟨c, rfl⟩
  have : k + c + (k + c + 1 - k) = c + (k + c + 1) := by
    simp only [add_assoc, add_tsub_cancel_left, add_left_comm]
  rw [Fin.val_mk, this, Nat.add_mod_right, Nat.mod_eq_of_lt, Nat.add_sub_cancel]
  linarith
#align imo1994_q1.tedious Imo1994Q1.tedious

end Imo1994Q1

open Imo1994Q1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Imo1994Q1/Variantea65739d52a338e525607c01b7aec4424f599455b761916a057f9919bf8c031b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Imo1994Q1/Variantea65739d52a338e525607c01b7aec4424f599455b761916a057f9919bf8c031b.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6a0a2b52d61cb66b1bda0c11fcd1b9e649c3502` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

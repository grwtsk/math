# existsUnique_zpow_near_of_one_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "79cf73c914f625a55d598faf96e56ab883aec722",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 88,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/eb/ebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9b0e36ec-d144-b631-0eba-8c4576a25e5b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:777e678c-13ab-73bf-fe96-384dbbccb781",
  "kind": "theorem",
  "lexical_name": "existsUnique_zpow_near_of_one_lt",
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
  "slug": "existsunique-zpow-near-of-one-lt--fd250339a6bcb8c1c27608c7",
  "source": {
    "blob": "79cf73c914f625a55d598faf96e56ab883aec722",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 88,
    "path": "GRWTSK/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd250339a6bcb8c1c27608c70041e2ae281223fd407a826d5c0f2ec4de3f53ca",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:777e678c-13ab-73bf-fe96-384dbbccb781`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem existsUnique_zpow_near_of_one_lt {a : G} (ha : 1 < a) (g : G) :
    ∃! k : ℤ, a ^ k ≤ g ∧ g < a ^ (k + 1) := by
  let s : Set ℤ := { n : ℤ | a ^ n ≤ g }
  obtain ⟨k, hk : g⁻¹ ≤ a ^ k⟩ := MulArchimedean.arch g⁻¹ ha
  have h_ne : s.Nonempty := ⟨-k, by simpa [s] using inv_le_inv' hk⟩
  obtain ⟨k, hk⟩ := MulArchimedean.arch g ha
  have h_bdd : ∀ n ∈ s, n ≤ (k : ℤ) := by
    intro n hn
    apply (zpow_le_zpow_iff_right ha).mp
    rw [← zpow_natCast] at hk
    exact le_trans hn hk
  obtain ⟨m, hm, hm'⟩ := Int.exists_greatest_of_bdd ⟨k, h_bdd⟩ h_ne
  have hm'' : g < a ^ (m + 1) := by
    contrapose! hm'
    exact ⟨m + 1, hm', lt_add_one _⟩
  refine ⟨m, ⟨hm, hm''⟩, fun n hn => (hm' n hn.1).antisymm <| Int.le_of_lt_add_one ?_⟩
  rw [← zpow_lt_zpow_iff_right ha]
  exact lt_of_le_of_lt hm hn.2

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79cf73c914f625a55d598faf96e56ab883aec722` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

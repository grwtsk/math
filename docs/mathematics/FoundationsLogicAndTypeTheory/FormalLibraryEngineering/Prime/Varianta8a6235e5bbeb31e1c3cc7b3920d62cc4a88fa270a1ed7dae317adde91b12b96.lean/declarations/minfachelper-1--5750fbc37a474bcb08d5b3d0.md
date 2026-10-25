# minFacHelper_1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b610fc566b1f2a59d697b98154c4b62e827115af",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 68,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a8/a8a6235e5bbeb31e1c3cc7b3920d62cc4a88fa270a1ed7dae317adde91b12b96.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:df8f54d5-8318-6048-a5a6-dd8421c66135",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c44c7fea-9a5f-b129-9988-eac495578f00",
  "kind": "theorem",
  "lexical_name": "minFacHelper_1",
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
  "slug": "minfachelper-1--5750fbc37a474bcb08d5b3d0",
  "source": {
    "blob": "b610fc566b1f2a59d697b98154c4b62e827115af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 68,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Varianta8a6235e5bbeb31e1c3cc7b3920d62cc4a88fa270a1ed7dae317adde91b12b96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5750fbc37a474bcb08d5b3d0b3aa1a294c1e35e233c7cf820837025753c20a23",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Varianta8a6235e5bbeb31e1c3cc7b3920d62cc4a88fa270a1ed7dae317adde91b12b96.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c44c7fea-9a5f-b129-9988-eac495578f00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem minFacHelper_1 {n k k' : ℕ} (e : k + 2 = k') (h : MinFacHelper n k)
  (np : minFac n ≠ k) : MinFacHelper n k' := by
  rw [← e]
  refine ⟨Nat.lt_add_right _ _ _ h.1, ?_, ?_⟩
  · rw [add_mod, mod_self, add_zero, mod_mod]
    exact h.2.1
  rcases h.2.2.eq_or_lt with rfl|h2
  · exact (np rfl).elim
  rcases (succ_le_of_lt h2).eq_or_lt with h2|h2
  · refine ((h.1.trans_le h.2.2).ne ?_).elim
    have h3 : 2 ∣ minFac n
    · rw [Nat.dvd_iff_mod_eq_zero, ← h2, succ_eq_add_one, add_mod, h.2.1]
      norm_num
    rw [dvd_prime <| minFac_prime h.one_lt.ne'] at h3
    norm_num at h3
    exact h3
  exact h2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Varianta8a6235e5bbeb31e1c3cc7b3920d62cc4a88fa270a1ed7dae317adde91b12b96.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Varianta8a6235e5bbeb31e1c3cc7b3920d62cc4a88fa270a1ed7dae317adde91b12b96.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b610fc566b1f2a59d697b98154c4b62e827115af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

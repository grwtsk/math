# ind_hyp_suf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:501a07f4-3b5e-564e-4442-a4e0620ba985",
  "kind": "theorem",
  "lexical_name": "ind_hyp_suf",
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
  "slug": "ind-hyp-suf--93e8876d85bc0e60f93e8ccd",
  "source": {
    "blob": "3e20c6b7c3f9326d1ba00fe3472ea384bb45213c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 322,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecisionSuf/Variant8075df47419e43d531b4a507989da6b67e8445c33e7a65ffb26049c6e78d542b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93e8876d85bc0e60f93e8ccd82dcbbdc1917e8f5852de200b2f1cafcb54ad833",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecisionSuf/Variant8075df47419e43d531b4a507989da6b67e8445c33e7a65ffb26049c6e78d542b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:501a07f4-3b5e-564e-4442-a4e0620ba985`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 322–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ind_hyp_suf (k : ℕ) (ys : Miustr) (hu : count U ys = succ k) (hdec : Decstr ys) :
    ∃ as bs : Miustr,
      ys = M :: as ++ U :: bs ∧
      count U (↑(M :: as) ++ ↑[I, I, I] ++ bs : Miustr) = k ∧
      Decstr (↑(M :: as) ++ ↑[I, I, I] ++ bs) := by
  rcases hdec with ⟨⟨mhead, nmtail⟩, hic⟩
  have : ys ≠ nil := by rintro rfl; contradiction
  rcases exists_cons_of_ne_nil this with ⟨z, zs, rfl⟩
  rcases mhead
  simp only [count_cons, if_false] at hu
  rcases eq_append_cons_U_of_count_U_pos hu with ⟨as, bs, rfl⟩
  use as, bs
  refine ⟨rfl, ?_, ?_, ?_⟩
  · -- Porting note: `simp_rw [count_append]` didn't work
    rw [count_append] at hu; simp_rw [count_cons, if_true, add_succ, succ_inj'] at hu
    rwa [count_append, count_append]
  · apply And.intro rfl
    rw [cons_append, cons_append]
    dsimp [tail] at nmtail ⊢
    rw [mem_append] at nmtail
    simpa only [mem_append, mem_cons, false_or_iff, or_false_iff] using nmtail
  · rw [count_append, count_append]; rw [← cons_append, count_append] at hic
    simp only [count_cons_self, count_nil, count_cons, if_false] at hic ⊢
    rw [add_right_comm, add_mod_right]; exact hic
#align miu.ind_hyp_suf Miu.ind_hyp_suf

/-- `der_of_decstr` states that `Derivable en` follows from `Decstr en`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecisionSuf/Variant8075df47419e43d531b4a507989da6b67e8445c33e7a65ffb26049c6e78d542b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecisionSuf/Variant8075df47419e43d531b4a507989da6b67e8445c33e7a65ffb26049c6e78d542b.lean#L322).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e20c6b7c3f9326d1ba00fe3472ea384bb45213c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

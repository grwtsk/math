# formPerm_eq_formPerm_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "08f69ba1f5c6710f2d2d4b766b8c2cb8e14ef8e5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 340,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e444b23be1e34e847e5501b50dde3b2ac318229cd4fdd902788dd065897e0b4a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bb0dd72f-e4b9-91df-c232-a51c4f29bc34",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8ae29deb-a652-a05d-3e2e-b93296ec2ff9",
  "kind": "theorem",
  "lexical_name": "formPerm_eq_formPerm_iff",
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
  "slug": "formperm-eq-formperm-iff--575315b69b2dfc57179a42ed",
  "source": {
    "blob": "08f69ba1f5c6710f2d2d4b766b8c2cb8e14ef8e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 359,
    "line": 340,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variante444b23be1e34e847e5501b50dde3b2ac318229cd4fdd902788dd065897e0b4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:575315b69b2dfc57179a42ede7de689dcf94bb8b95adf26055dbcd3ad49450d3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variante444b23be1e34e847e5501b50dde3b2ac318229cd4fdd902788dd065897e0b4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ae29deb-a652-a05d-3e2e-b93296ec2ff9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 340–359.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem formPerm_eq_formPerm_iff {l l' : List α} (hl : l.Nodup) (hl' : l'.Nodup) :
    l.formPerm = l'.formPerm ↔ l ~r l' ∨ l.length ≤ 1 ∧ l'.length ≤ 1 := by
  rcases l with (_ | ⟨x, _ | ⟨y, l⟩⟩)
  · suffices l'.length ≤ 1 ↔ l' = nil ∨ l'.length ≤ 1 by
      simpa [eq_comm, formPerm_eq_one_iff, hl, hl', length_eq_zero_iff]
    refine ⟨fun h => Or.inr h, ?_⟩
    rintro (rfl | h)
    · simp
    · exact h
  · suffices l'.length ≤ 1 ↔ [x] ~r l' ∨ l'.length ≤ 1 by
      simpa [eq_comm, formPerm_eq_one_iff, hl, hl', length_eq_zero_iff, le_rfl]
    refine ⟨fun h => Or.inr h, ?_⟩
    rintro (h | h)
    · simp [← h.perm.length_eq]
    · exact h
  · rcases l' with (_ | ⟨x', _ | ⟨y', l'⟩⟩)
    · simp [formPerm_eq_one_iff _ hl, -formPerm_cons_cons]
    · simp [formPerm_eq_one_iff _ hl, -formPerm_cons_cons]
    · simp [-formPerm_cons_cons, formPerm_ext_iff hl hl', Nat.succ_le_succ_iff]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variante444b23be1e34e847e5501b50dde3b2ac318229cd4fdd902788dd065897e0b4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variante444b23be1e34e847e5501b50dde3b2ac318229cd4fdd902788dd065897e0b4a.lean#L340).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08f69ba1f5c6710f2d2d4b766b8c2cb8e14ef8e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

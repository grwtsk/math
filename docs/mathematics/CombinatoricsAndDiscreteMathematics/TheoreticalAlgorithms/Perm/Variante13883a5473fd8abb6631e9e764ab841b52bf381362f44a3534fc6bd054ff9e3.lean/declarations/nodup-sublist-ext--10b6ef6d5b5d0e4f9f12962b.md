# Nodup.sublist_ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:591b6188-df47-3650-9f47-8521bd59a5f8",
  "kind": "theorem",
  "lexical_name": "Nodup.sublist_ext",
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
  "slug": "nodup-sublist-ext--10b6ef6d5b5d0e4f9f12962b",
  "source": {
    "blob": "0ef91f6ed37dde24d8ba79d67a1f28e00b970e96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 772,
    "line": 751,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variante13883a5473fd8abb6631e9e764ab841b52bf381362f44a3534fc6bd054ff9e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10b6ef6d5b5d0e4f9f12962bb162bb5e093ca07d563ec113e1abe9f69382ccb9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variante13883a5473fd8abb6631e9e764ab841b52bf381362f44a3534fc6bd054ff9e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:591b6188-df47-3650-9f47-8521bd59a5f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 751–772.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Nodup.sublist_ext {l₁ l₂ l : List α} (d : Nodup l) (s₁ : l₁ <+ l) (s₂ : l₂ <+ l) :
    l₁ ~ l₂ ↔ l₁ = l₂ :=
  ⟨fun h => by
    induction' s₂ with l₂ l a s₂ IH l₂ l a _ IH generalizing l₁
    · exact h.eq_nil
    · simp at d
      cases' s₁ with _ _ _ s₁ l₁ _ _ s₁
      · exact IH d.2 s₁ h
      · apply d.1.elim
        exact Subperm.subset ⟨_, h.symm, s₂⟩ (mem_cons_self _ _)
    · simp at d
      cases' s₁ with _ _ _ s₁ l₁ _ _ s₁
      · apply d.1.elim
        exact Subperm.subset ⟨_, h, s₁⟩ (mem_cons_self _ _)
      · rw [IH d.2 s₁ h.cons_inv], fun h => by rw [h]⟩
#align list.nodup.sublist_ext List.Nodup.sublist_ext

section

variable [DecidableEq α]

-- attribute [congr]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variante13883a5473fd8abb6631e9e764ab841b52bf381362f44a3534fc6bd054ff9e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variante13883a5473fd8abb6631e9e764ab841b52bf381362f44a3534fc6bd054ff9e3.lean#L751).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ef91f6ed37dde24d8ba79d67a1f28e00b970e96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

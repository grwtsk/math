# range_lmapDomain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6264203f-7c9c-413c-32e0-05ff54861192",
  "kind": "lemma",
  "lexical_name": "range_lmapDomain",
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
  "slug": "range-lmapdomain--5f29bfba77fe448fca9d2934",
  "source": {
    "blob": "cabde7662017f8bc31fa5aeb69cff1149dca3907",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 81,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Span/Variantc9b28f40805e7fb7517228b1d1c03ad70d809b15cfb3e56378c3108e39a84da5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f29bfba77fe448fca9d29345aedc23b713f2db47811602e1c26258148791226",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Span/Variantc9b28f40805e7fb7517228b1d1c03ad70d809b15cfb3e56378c3108e39a84da5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6264203f-7c9c-413c-32e0-05ff54861192`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma range_lmapDomain {β : Type*} (u : α → β) :
    LinearMap.range (lmapDomain R R u) = .span R (.range fun x ↦ single (u x) 1) := by
  refine le_antisymm ?_ ?_
  · rintro x ⟨x, rfl⟩
    induction x using induction_linear with
    | single i s =>
        rw [lmapDomain_apply, mapDomain_single, ← Finsupp.smul_single_one]
        exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨i, rfl⟩)
    | zero => simp
    | add f g hf hg =>
        rw [map_add]
        exact Submodule.add_mem _ hf hg
  · rw [Submodule.span_le, Set.range_subset_iff]
    intro i
    exact ⟨Finsupp.single i 1, by simp⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Span/Variantc9b28f40805e7fb7517228b1d1c03ad70d809b15cfb3e56378c3108e39a84da5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Span/Variantc9b28f40805e7fb7517228b1d1c03ad70d809b15cfb3e56378c3108e39a84da5.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cabde7662017f8bc31fa5aeb69cff1149dca3907` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

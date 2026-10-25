# not_mem_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:023b8d1a-c7f2-0356-a214-6b1b0e237522",
  "kind": "theorem",
  "lexical_name": "not_mem_iff",
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
  "slug": "not-mem-iff--a5b626aed94e869a3bf3439d",
  "source": {
    "blob": "cb0aaba30b8512ee1dc85f0e6534b22e686089d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 96,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Types/Variant8b3edbceda3d59689cb1eda1284b3f62f90b44efd522ac9d4b0a19809839a551.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5b626aed94e869a3bf3439d9a3ca594727de129b2c93e153301d4b3e763b3b2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Types/Variant8b3edbceda3d59689cb1eda1284b3f62f90b44efd522ac9d4b0a19809839a551.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:023b8d1a-c7f2-0356-a214-6b1b0e237522`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_mem_iff (p : T.CompleteType α) (φ : L[[α]].Sentence) : φ.not ∈ p ↔ φ ∉ p :=
  ⟨fun hf ht => by
    have h : ¬IsSatisfiable ({φ, φ.not} : L[[α]].Theory) := by
      rintro ⟨@⟨_, _, h, _⟩⟩
      simp only [model_iff, mem_insert_iff, mem_singleton_iff, forall_eq_or_imp, forall_eq] at h
      exact h.2 h.1
    refine h (p.isMaximal.1.mono ?_)
    rw [insert_subset_iff, singleton_subset_iff]
    exact ⟨ht, hf⟩, (p.mem_or_not_mem φ).resolve_left⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Types/Variant8b3edbceda3d59689cb1eda1284b3f62f90b44efd522ac9d4b0a19809839a551.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Types/Variant8b3edbceda3d59689cb1eda1284b3f62f90b44efd522ac9d4b0a19809839a551.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb0aaba30b8512ee1dc85f0e6534b22e686089d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# piFinset_update_eq_filter_piFinset_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2f23d64c-a4c3-12ae-69f5-2fe89a6db270",
  "kind": "lemma",
  "lexical_name": "piFinset_update_eq_filter_piFinset_mem",
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
  "slug": "pifinset-update-eq-filter-pifinset-mem--b3536cac5b4715a377cd2696",
  "source": {
    "blob": "6a8afcfbb191875bddaa2c438d262100f91ba1bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 123,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Varianta11a439205be641b50e13be0ef8455d1868ba6358adbe7c1a6779a50683eaed6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3536cac5b4715a377cd269683d0f9684f25b93b04431524e084e25bf3ae284e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Pi/Varianta11a439205be641b50e13be0ef8455d1868ba6358adbe7c1a6779a50683eaed6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f23d64c-a4c3-12ae-69f5-2fe89a6db270`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma piFinset_update_eq_filter_piFinset_mem (s : ∀ i, Finset (δ i)) (i : α) {t : Finset (δ i)}
    (hts : t ⊆ s i) : piFinset (Function.update s i t) = {f ∈ piFinset s | f i ∈ t} := by
  ext f
  simp only [mem_piFinset, mem_filter]
  refine ⟨fun h ↦ ?_, fun h j ↦ ?_⟩
  · have := by simpa using h i
    refine ⟨fun j ↦ ?_, this⟩
    obtain rfl | hji := eq_or_ne j i
    · exact hts this
    · simpa [hji] using h j
  · obtain rfl | hji := eq_or_ne j i
    · simpa using h.2
    · simpa [hji] using h.1 j

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Pi/Varianta11a439205be641b50e13be0ef8455d1868ba6358adbe7c1a6779a50683eaed6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Varianta11a439205be641b50e13be0ef8455d1868ba6358adbe7c1a6779a50683eaed6.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a8afcfbb191875bddaa2c438d262100f91ba1bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

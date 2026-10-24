# map_piecewise_sub_map_piecewise

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b05ef16edfa77d6700f89a1c343ed25c7b6bd2d0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1357,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a5ce599e060d28eb7a5dbd8fe6cbe77cea6b27ee08b4a863b050f0286af5ff93.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e167b119-a099-8997-ab6c-623e475b4ae7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9940dd1a-3468-5e9c-710b-908e39ffe56d",
  "kind": "lemma",
  "lexical_name": "map_piecewise_sub_map_piecewise",
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
  "slug": "map-piecewise-sub-map-piecewise--f1ccfbe5d68821729107cb82",
  "source": {
    "blob": "b05ef16edfa77d6700f89a1c343ed25c7b6bd2d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1371,
    "line": 1357,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Varianta5ce599e060d28eb7a5dbd8fe6cbe77cea6b27ee08b4a863b050f0286af5ff93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1ccfbe5d68821729107cb82fab2d51fd435ba0bfe8df4c97d3fe9d64ab7b617",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Varianta5ce599e060d28eb7a5dbd8fe6cbe77cea6b27ee08b4a863b050f0286af5ff93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9940dd1a-3468-5e9c-710b-908e39ffe56d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1357–1371.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_piecewise_sub_map_piecewise [LinearOrder ι] (a b v : (i : ι) → M₁ i) (s : Finset ι) :
    f (s.piecewise a v) - f (s.piecewise b v) = ∑ i ∈ s, f
      fun j ↦ if j ∈ s then if j < i then a j else if j = i then a j - b j else b j else v j := by
  rw [← s.piecewise_idem_right b a, map_sub_map_piecewise]
  refine Finset.sum_congr rfl fun i hi ↦ congr_arg f <| funext fun j ↦ ?_
  by_cases hjs : j ∈ s
  · rw [ite_eq_left hjs]; by_cases hji : j < i
    · rw [ite_eq_left fun _ ↦ hji, ite_eq_left hji, s.piecewise_eq_of_mem _ _ hjs]
    rw [ite_eq_right (Classical.not_imp.mpr ⟨hjs, hji⟩), ite_eq_right hji]
    obtain rfl | hij := eq_or_ne i j
    · rw [ite_eq_left rfl, ite_eq_left rfl, s.piecewise_eq_of_mem _ _ hi]
    · rw [ite_eq_right hij, ite_eq_right hij.symm]
  · rw [ite_eq_right hjs, ite_eq_left fun h ↦ (hjs h).elim, s.piecewise_eq_of_notMem _ _ hjs]

open Finset in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Varianta5ce599e060d28eb7a5dbd8fe6cbe77cea6b27ee08b4a863b050f0286af5ff93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Varianta5ce599e060d28eb7a5dbd8fe6cbe77cea6b27ee08b4a863b050f0286af5ff93.lean#L1357).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b05ef16edfa77d6700f89a1c343ed25c7b6bd2d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

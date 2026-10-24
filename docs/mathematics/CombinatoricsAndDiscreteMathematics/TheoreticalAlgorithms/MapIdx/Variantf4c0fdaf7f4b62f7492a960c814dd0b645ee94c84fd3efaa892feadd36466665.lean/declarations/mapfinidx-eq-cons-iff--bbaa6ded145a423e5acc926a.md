# mapFinIdx_eq_cons_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "70197e3ea3c3b7d0acadb849de6a797396cb8922",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 221,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f4c0fdaf7f4b62f7492a960c814dd0b645ee94c84fd3efaa892feadd36466665.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:25d3e748-14c6-7101-ef74-503354cd2dc2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3f77b584-e632-d156-f316-46f70117c074",
  "kind": "theorem",
  "lexical_name": "mapFinIdx_eq_cons_iff",
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
  "slug": "mapfinidx-eq-cons-iff--bbaa6ded145a423e5acc926a",
  "source": {
    "blob": "70197e3ea3c3b7d0acadb849de6a797396cb8922",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 221,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapIdx/Variantf4c0fdaf7f4b62f7492a960c814dd0b645ee94c84fd3efaa892feadd36466665.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bbaa6ded145a423e5acc926a5aa9c9054e976759e0c99f470b8294955f7f4df2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapIdx/Variantf4c0fdaf7f4b62f7492a960c814dd0b645ee94c84fd3efaa892feadd36466665.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f77b584-e632-d156-f316-46f70117c074`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mapFinIdx_eq_cons_iff {l : List α} {b : β} {f : (i : Nat) → α → (h : i < l.length) → β} :
    l.mapFinIdx f = b :: l₂ ↔
      ∃ (a : α) (l₁ : List α) (w : l = a :: l₁),
        f 0 a (by simp [w]) = b ∧ l₁.mapFinIdx (fun i a h => f (i + 1) a (by simp [w]; omega)) = l₂ := by
  cases l with
  | nil => simp
  | cons x l' =>
    simp only [mapFinIdx_cons, cons.injEq,
      ]
    constructor
    · rintro ⟨rfl, rfl⟩
      refine ⟨x, l', ⟨rfl, rfl⟩, by simp⟩
    · rintro ⟨a, l', ⟨rfl, rfl⟩, ⟨rfl, rfl⟩⟩
      exact ⟨rfl, by simp⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapIdx/Variantf4c0fdaf7f4b62f7492a960c814dd0b645ee94c84fd3efaa892feadd36466665.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapIdx/Variantf4c0fdaf7f4b62f7492a960c814dd0b645ee94c84fd3efaa892feadd36466665.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70197e3ea3c3b7d0acadb849de6a797396cb8922` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

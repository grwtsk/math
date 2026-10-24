# zipWith_eq_append_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d1b9bbe136cb117d6c4f99ce304e467b2e953096",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 146,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c2d84286-ed63-9f23-8f9e-66eea737f659",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:da23c825-10f7-01de-ef67-02b485d73c2c",
  "kind": "theorem",
  "lexical_name": "zipWith_eq_append_iff",
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
  "slug": "zipwith-eq-append-iff--cb99f1bd318eb3f8bb6e34ce",
  "source": {
    "blob": "d1b9bbe136cb117d6c4f99ce304e467b2e953096",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 146,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb99f1bd318eb3f8bb6e34ce610dc1cef832bf8cc57a4e8a1ce1abdf89665ffb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da23c825-10f7-01de-ef67-02b485d73c2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zipWith_eq_append_iff {f : α → β → γ} {as : Vector α (n + m)} {bs : Vector β (n + m)} :
    zipWith f as bs = xs ++ ys ↔
      ∃ as₁ as₂ bs₁ bs₂, as = as₁ ++ as₂ ∧ bs = bs₁ ++ bs₂ ∧ xs = zipWith f as₁ bs₁ ∧ ys = zipWith f as₂ bs₂ := by
  rcases as with ⟨as, h₁⟩
  rcases bs with ⟨bs, h₂⟩
  rcases xs with ⟨xs, rfl⟩
  rcases ys with ⟨ys, rfl⟩
  simp only [mk_zipWith_mk, mk_append_mk, eq_mk, Array.zipWith_eq_append_iff,
    mk_eq, toArray_append, toArray_zipWith]
  constructor
  · rintro ⟨as₁, as₂, bs₁, bs₂, h, rfl, rfl, rfl, rfl⟩
    simp only [Array.size_append, Array.size_zipWith] at h₁ h₂
    exact ⟨mk as₁ (by simp; omega), mk as₂ (by simp; omega), mk bs₁ (by simp; omega), mk bs₂ (by simp; omega), by simp⟩
  · rintro ⟨⟨as₁, hw⟩, ⟨as₂, hx⟩, ⟨bs₁, hy⟩, ⟨bs₂, hz⟩, rfl, rfl, w₁, w₂⟩
    simp only at w₁ w₂
    exact ⟨as₁, as₂, bs₁, bs₂, by simpa [hw, hy] using ⟨w₁, w₂⟩⟩

@[simp, grind =]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1b9bbe136cb117d6c4f99ce304e467b2e953096` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

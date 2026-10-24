# normalize_mul_normalize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "25e60337418d159da20aba20848fa063a6b4ae37",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 282,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/08ed40bf64de6b43a9557f216f7ec325753dc15b1edda465dc0e1ef143308547.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ed2b829c-0894-7c7e-557b-e69b69658779",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a9199588-84bc-cedf-66ef-86200f9c762e",
  "kind": "theorem",
  "lexical_name": "normalize_mul_normalize",
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
  "slug": "normalize-mul-normalize--0c1fb112c4cc2c92bb1d83f6",
  "source": {
    "blob": "25e60337418d159da20aba20848fa063a6b4ae37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 282,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant08ed40bf64de6b43a9557f216f7ec325753dc15b1edda465dc0e1ef143308547.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c1fb112c4cc2c92bb1d83f66f49c29eb4db06d2aee0e982c37eb28b3b78ce7a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant08ed40bf64de6b43a9557f216f7ec325753dc15b1edda465dc0e1ef143308547.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9199588-84bc-cedf-66ef-86200f9c762e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 282–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalize_mul_normalize (n₁ n₂) {d₁ d₂} (z₁ z₂) :
    normalize n₁ d₁ z₁ * normalize n₂ d₂ z₂ =
    normalize (n₁ * n₂) (d₁ * d₂) (Nat.mul_ne_zero z₁ z₂) := by
  cases e₁ : normalize n₁ d₁ z₁; rcases normalize_num_den e₁ with ⟨g₁, zg₁, rfl, rfl⟩
  cases e₂ : normalize n₂ d₂ z₂; rcases normalize_num_den e₂ with ⟨g₂, zg₂, rfl, rfl⟩
  simp only [mul_def]; rw [← normalize_mul_right _ (Nat.mul_ne_zero zg₁ zg₂)]; congr 1
  · simp [Int.natCast_mul, Int.mul_assoc, Int.mul_left_comm]
  · simp [Nat.mul_left_comm, Nat.mul_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant08ed40bf64de6b43a9557f216f7ec325753dc15b1edda465dc0e1ef143308547.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant08ed40bf64de6b43a9557f216f7ec325753dc15b1edda465dc0e1ef143308547.lean#L282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25e60337418d159da20aba20848fa063a6b4ae37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

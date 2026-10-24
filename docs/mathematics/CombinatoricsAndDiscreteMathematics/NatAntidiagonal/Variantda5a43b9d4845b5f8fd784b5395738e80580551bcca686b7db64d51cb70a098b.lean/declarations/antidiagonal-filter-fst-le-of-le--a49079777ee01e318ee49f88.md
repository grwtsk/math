# antidiagonal_filter_fst_le_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:356fa182-16ad-d92a-c05a-bbaa03b2f751",
  "kind": "lemma",
  "lexical_name": "antidiagonal_filter_fst_le_of_le",
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
  "slug": "antidiagonal-filter-fst-le-of-le--a49079777ee01e318ee49f88",
  "source": {
    "blob": "771015f6a33f51c9234454e28fb7d3f4b1461f0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 122,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantda5a43b9d4845b5f8fd784b5395738e80580551bcca686b7db64d51cb70a098b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a49079777ee01e318ee49f888b30cf70c9e5be447e067e0460d436d766413dbf",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantda5a43b9d4845b5f8fd784b5395738e80580551bcca686b7db64d51cb70a098b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:356fa182-16ad-d92a-c05a-bbaa03b2f751`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma antidiagonal_filter_fst_le_of_le {n k : ℕ} (h : k ≤ n) :
    {a ∈ antidiagonal n | a.fst ≤ k} = (antidiagonal k).map
      (Embedding.prodMap (Embedding.refl ℕ) ⟨_, add_left_injective (n - k)⟩) := by
  have aux₁ : fun a ↦ a.fst ≤ k = (fun a ↦ a.snd ≤ k) ∘ (Equiv.prodComm ℕ ℕ).symm := rfl
  have aux₂ : ∀ i j, (∃ a b, a + b = k ∧ b = i ∧ a + (n - k) = j) ↔
                      ∃ a b, a + b = k ∧ a = i ∧ b + (n - k) = j :=
    fun i j ↦ by rw [exists_comm]; exact exists₂_congr (fun a b ↦ by rw [add_comm])
  rw [← map_prodComm_antidiagonal]
  simp_rw [aux₁, ← map_filter, antidiagonal_filter_snd_le_of_le h, map_map]
  ext ⟨i, j⟩
  simpa using aux₂ i j

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantda5a43b9d4845b5f8fd784b5395738e80580551bcca686b7db64d51cb70a098b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantda5a43b9d4845b5f8fd784b5395738e80580551bcca686b7db64d51cb70a098b.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `771015f6a33f51c9234454e28fb7d3f4b1461f0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

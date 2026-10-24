# antidiagonal_filter_le_snd_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c9cbe72-b89c-6cf5-5b08-461f559e5866",
  "kind": "lemma",
  "lexical_name": "antidiagonal_filter_le_snd_of_le",
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
  "slug": "antidiagonal-filter-le-snd-of-le--54d34ed2ef95ac32a45f6aaa",
  "source": {
    "blob": "3c426ccfe858215afcaccfe4d9169353fb01f3b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 185,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantebd101782203876092df611912aa2e7d4bcd48d5e23f6ef1e9fd0a32ffa37b67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54d34ed2ef95ac32a45f6aaa151cb8c607ef7da71993ee5090b37fb3f2e408e5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantebd101782203876092df611912aa2e7d4bcd48d5e23f6ef1e9fd0a32ffa37b67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c9cbe72-b89c-6cf5-5b08-461f559e5866`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma antidiagonal_filter_le_snd_of_le {n k : ℕ} (h : k ≤ n) :
    (antidiagonal n).filter (fun a ↦ k ≤ a.snd) = (antidiagonal (n - k)).map
      (Embedding.prodMap (Embedding.refl ℕ) ⟨_, add_left_injective k⟩) := by
  have aux₁ : fun a ↦ k ≤ a.snd = (fun a ↦ k ≤ a.fst) ∘ (Equiv.prodComm ℕ ℕ).symm := rfl
  have aux₂ : ∀ i j, (∃ a b, a + b = n - k ∧ b = i ∧ a + k = j) ↔
                      ∃ a b, a + b = n - k ∧ a = i ∧ b + k = j :=
    fun i j ↦ by rw [exists_comm]; exact exists₂_congr (fun a b ↦ by rw [add_comm])
  rw [← map_prodComm_antidiagonal]
  simp_rw [aux₁, ← map_filter, antidiagonal_filter_le_fst_of_le h, map_map]
  ext ⟨i, j⟩
  simpa using aux₂ i j

section EquivProd

/-- The disjoint union of antidiagonals `Σ (n : ℕ), antidiagonal n` is equivalent to the product
    `ℕ × ℕ`. This is such an equivalence, obtained by mapping `(n, (k, l))` to `(k, l)`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantebd101782203876092df611912aa2e7d4bcd48d5e23f6ef1e9fd0a32ffa37b67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatAntidiagonal/Variantebd101782203876092df611912aa2e7d4bcd48d5e23f6ef1e9fd0a32ffa37b67.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c426ccfe858215afcaccfe4d9169353fb01f3b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

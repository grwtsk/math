# RelCWComplex.finite_of_finite_cells

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "91f3cdc1db6f6bfce3e67411aa09e7d58bdb7543",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 302,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e1957d8f113ef961d85d570001ac792217c7da9e4bda5ecac188d976f69066fb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4fe6603b-8520-4a49-5cf3-4ed7dc144215",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:536fa06d-e598-ab65-b1d8-c7d0021cfba7",
  "kind": "lemma",
  "lexical_name": "RelCWComplex.finite_of_finite_cells",
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
  "slug": "relcwcomplex-finite-of-finite-cells--43eae4cad85797ea9ad4b31c",
  "source": {
    "blob": "91f3cdc1db6f6bfce3e67411aa09e7d58bdb7543",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 302,
    "path": "GRWTSK/Topology/GeneralTopology/Finite/Variante1957d8f113ef961d85d570001ac792217c7da9e4bda5ecac188d976f69066fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43eae4cad85797ea9ad4b31ccd7de460bff4f36391291ee356267d6f4f74fcd6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Finite/Variante1957d8f113ef961d85d570001ac792217c7da9e4bda5ecac188d976f69066fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:536fa06d-e598-ab65-b1d8-c7d0021cfba7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma RelCWComplex.finite_of_finite_cells (finite : _root_.Finite (Σ n, cell C n)) : Finite C where
  eventually_isEmpty_cell := by
    simp only [Filter.eventually_atTop, ge_iff_le]
    by_cases h : IsEmpty (Σ n, cell C n)
    · exact ⟨0, by simp_all⟩
    -- We take the greatest `n` such that there is a `j : cell C n` and show that this fulfills
    -- the necessary conditions.
    rw [not_isEmpty_iff] at h
    have _ := Fintype.ofFinite (Σ n, cell C n)
    classical
    let A := (Finset.univ : Finset (Σ n, cell C n)).image Sigma.fst
    use A.max' (Finset.image_nonempty.2 Finset.univ_nonempty) + 1
    intro m _
    by_contra h'
    have hmA : m ∈ A := by
      simp only [Finset.mem_image, Finset.mem_univ, true_and, A]
      simp only [not_isEmpty_iff, ← exists_true_iff_nonempty] at h'
      obtain ⟨j, _⟩ := h'
      use ⟨m, j⟩
    linarith [A.le_max' m hmA]
  finite_cell _ := Finite.of_injective (Sigma.mk _) sigma_mk_injective

/-- If `C` is finite as a CW complex then the collection of all cells (of any dimension) is
finite. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Finite/Variante1957d8f113ef961d85d570001ac792217c7da9e4bda5ecac188d976f69066fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Finite/Variante1957d8f113ef961d85d570001ac792217c7da9e4bda5ecac188d976f69066fb.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91f3cdc1db6f6bfce3e67411aa09e7d58bdb7543` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

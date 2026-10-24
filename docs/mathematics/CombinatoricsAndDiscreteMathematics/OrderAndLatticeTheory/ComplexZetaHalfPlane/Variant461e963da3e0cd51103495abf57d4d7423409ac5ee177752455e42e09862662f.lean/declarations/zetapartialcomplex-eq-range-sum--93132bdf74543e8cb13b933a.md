# zetaPartialComplex_eq_range_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "85b22dd378dece3fd89f70e8ebb5c58a7a065d97",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 31,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/46/461e963da3e0cd51103495abf57d4d7423409ac5ee177752455e42e09862662f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:23abddb9-81c4-4b43-6c58-dfa6b2c85c49",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f4886b4e-1371-f1e0-3908-b81def5c6b8f",
  "kind": "theorem",
  "lexical_name": "zetaPartialComplex_eq_range_sum",
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
  "slug": "zetapartialcomplex-eq-range-sum--93132bdf74543e8cb13b933a",
  "source": {
    "blob": "85b22dd378dece3fd89f70e8ebb5c58a7a065d97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 31,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ComplexZetaHalfPlane/Variant461e963da3e0cd51103495abf57d4d7423409ac5ee177752455e42e09862662f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93132bdf74543e8cb13b933a66c9ce9ce1545d5621fd70fa54e8876ebcba9950",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ComplexZetaHalfPlane/Variant461e963da3e0cd51103495abf57d4d7423409ac5ee177752455e42e09862662f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f4886b4e-1371-f1e0-3908-b81def5c6b8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zetaPartialComplex_eq_range_sum
    (s : Complex)
    (N : Nat) :
    zetaPartialComplex s N =
      ∑ n ∈ Finset.range (N + 1), complexWeight s n := by
  unfold zetaPartialComplex
  refine Finset.sum_subset ?hsub ?hzero
  · intro n hn
    exact Finset.mem_range.mpr (Nat.lt_succ_of_le (Finset.mem_Icc.mp hn).2)
  · intro n hnrange hnnot
    have hn0 : n = 0 := by
      have hnlt : n < N + 1 := Finset.mem_range.mp hnrange
      by_contra hne
      have hpos : 1 ≤ n := Nat.succ_le_of_lt (Nat.pos_of_ne_zero hne)
      apply hnnot
      exact Finset.mem_Icc.mpr ⟨hpos, Nat.le_of_lt_succ hnlt⟩
    simp [hn0, complexWeight_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ComplexZetaHalfPlane/Variant461e963da3e0cd51103495abf57d4d7423409ac5ee177752455e42e09862662f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ComplexZetaHalfPlane/Variant461e963da3e0cd51103495abf57d4d7423409ac5ee177752455e42e09862662f.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85b22dd378dece3fd89f70e8ebb5c58a7a065d97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

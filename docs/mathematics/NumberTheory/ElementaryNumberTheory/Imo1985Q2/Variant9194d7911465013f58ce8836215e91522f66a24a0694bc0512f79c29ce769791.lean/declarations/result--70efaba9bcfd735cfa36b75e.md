# result

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "26f7109b3f95cc3f93208d1b44a10cd262676ba0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 79,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/91/9194d7911465013f58ce8836215e91522f66a24a0694bc0512f79c29ce769791.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dd41900c-43a5-8298-2513-fc6e592ba226",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:30565d01-791c-c9c3-6602-a7bbd736ae16",
  "kind": "theorem",
  "lexical_name": "result",
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
  "slug": "result--70efaba9bcfd735cfa36b75e",
  "source": {
    "blob": "26f7109b3f95cc3f93208d1b44a10cd262676ba0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 79,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Imo1985Q2/Variant9194d7911465013f58ce8836215e91522f66a24a0694bc0512f79c29ce769791.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70efaba9bcfd735cfa36b75e1c274d640917f9e47cc09e36351a9c81d425fbf9",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Imo1985Q2/Variant9194d7911465013f58ce8836215e91522f66a24a0694bc0512f79c29ce769791.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30565d01-791c-c9c3-6602-a7bbd736ae16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem result {n j : ℕ} (hn : 3 ≤ n) (hj : j ∈ Set.Ico 1 n) (cpj : Coprime n j)
    {C : ℕ → Fin 2} (hC : Condition n j C) {i : ℕ} (hi : i ∈ Set.Ico 1 n) :
    C i = C j := by
  obtain ⟨v, -, hv⟩ := exists_mul_mod_eq_one_of_coprime cpj.symm (by lia)
  have hvi : i = (v * i % n) * j % n := by
    rw [mod_mul_mod, ← mul_rotate, ← mod_mul_mod, hv, one_mul, mod_eq_of_lt hi.2]
  have vib : v * i % n ∈ Set.Ico 1 n := by
    refine ⟨(?_ : 0 < _), mod_lt _ (by lia)⟩
    by_contra! h; rw [le_zero, ← dvd_iff_mod_eq_zero] at h
    rw [mul_comm, ← mod_eq_of_lt (show 1 < n by lia)] at hv
    have i0 := eq_zero_of_dvd_of_lt
      ((coprime_of_mul_modEq_one _ hv).symm.dvd_of_dvd_mul_left h) hi.2
    subst i; simp at hi
  rw [hvi, C_mul_mod hn hj cpj hC vib]

end Imo1985Q2
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Imo1985Q2/Variant9194d7911465013f58ce8836215e91522f66a24a0694bc0512f79c29ce769791.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Imo1985Q2/Variant9194d7911465013f58ce8836215e91522f66a24a0694bc0512f79c29ce769791.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26f7109b3f95cc3f93208d1b44a10cd262676ba0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

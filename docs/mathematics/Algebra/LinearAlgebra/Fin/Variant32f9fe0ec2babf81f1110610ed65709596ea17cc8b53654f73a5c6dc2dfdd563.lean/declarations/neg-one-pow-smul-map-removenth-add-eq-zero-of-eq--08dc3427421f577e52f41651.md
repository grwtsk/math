# neg_one_pow_smul_map_removeNth_add_eq_zero_of_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7d51918ad020ac3ef88033614316e71cd99d386f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 76,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/32f9fe0ec2babf81f1110610ed65709596ea17cc8b53654f73a5c6dc2dfdd563.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6966a6b4-05c6-fa0b-b79a-cc9e42ac9049",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:34b83696-f48d-2391-01c8-e21a8daf627f",
  "kind": "theorem",
  "lexical_name": "neg_one_pow_smul_map_removeNth_add_eq_zero_of_eq",
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
  "slug": "neg-one-pow-smul-map-removenth-add-eq-zero-of-eq--08dc3427421f577e52f41651",
  "source": {
    "blob": "7d51918ad020ac3ef88033614316e71cd99d386f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 76,
    "path": "GRWTSK/Algebra/LinearAlgebra/Fin/Variant32f9fe0ec2babf81f1110610ed65709596ea17cc8b53654f73a5c6dc2dfdd563.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08dc3427421f577e52f4165179d0db84f37c56e13d5c4df533b1eeaadf32e7ca",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Fin/Variant32f9fe0ec2babf81f1110610ed65709596ea17cc8b53654f73a5c6dc2dfdd563.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34b83696-f48d-2391-01c8-e21a8daf627f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem neg_one_pow_smul_map_removeNth_add_eq_zero_of_eq (f : M [⋀^Fin n]→ₗ[R] N)
    {v : Fin (n + 1) → M} {i j : Fin (n + 1)} (hvij : v i = v j) (hij : i ≠ j) :
    (-1) ^ (i : ℕ) • f (i.removeNth v) + (-1) ^ (j : ℕ) • f (j.removeNth v) = 0 := by
  rcases exists_succAbove_eq hij with ⟨i, rfl⟩
  obtain ⟨m, rfl⟩ : ∃ m, m + 1 = n := by simp [i.pos]
  rw [← (i.predAbove j).insertNth_self_removeNth (removeNth _ _), ← removeNth_removeNth_eq_swap,
    removeNth, succAbove_succAbove_predAbove, map_insertNth, ← neg_one_pow_smul_map_insertNth,
    insertNth_removeNth, update_eq_self_iff.2, smul_smul, ← pow_add,
    neg_one_pow_succAbove_add_predAbove, neg_smul, pow_add, mul_smul,
    smul_smul (_ ^ i.val), ← sq, ← pow_mul, pow_mul', neg_one_pow_two, one_pow, one_smul,
    neg_add_cancel]
  exact hvij.symm

/-- Given a function which is linear in the first argument
and is alternating in the other `n` arguments,
build an alternating form in `n + 1` arguments.

The function is given by
```
alternatizeUncurryFin f v = ∑ i : Fin (n + 1), (-1) ^ (i : ℕ) • f (v i) (removeNth i v)
```

Note that the round-trip with `curryFin` multiplies the form by `n + 1`,
since we want to avoid division in this definition. -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Fin/Variant32f9fe0ec2babf81f1110610ed65709596ea17cc8b53654f73a5c6dc2dfdd563.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Fin/Variant32f9fe0ec2babf81f1110610ed65709596ea17cc8b53654f73a5c6dc2dfdd563.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d51918ad020ac3ef88033614316e71cd99d386f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

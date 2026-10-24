# natDegree_basis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0507f8cfc109876f1c55fd293eb5667198b30ea8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 263,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f3/f3ba8dbae934751bd24cfd1de5980daf30b1da376dceb541b1d305e7dcc1cf54.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:41aee923-daa1-e6fb-b478-7dd2283bed62",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a64e0bfd-c43d-4aa1-e237-f7d708d80359",
  "kind": "theorem",
  "lexical_name": "natDegree_basis",
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
  "slug": "natdegree-basis--a77398d7cfc29d81d3fc7230",
  "source": {
    "blob": "0507f8cfc109876f1c55fd293eb5667198b30ea8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 263,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lagrange/Variantf3ba8dbae934751bd24cfd1de5980daf30b1da376dceb541b1d305e7dcc1cf54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a77398d7cfc29d81d3fc7230394c40e82c5b3f3658201161a70ed31c00173f5a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Lagrange/Variantf3ba8dbae934751bd24cfd1de5980daf30b1da376dceb541b1d305e7dcc1cf54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a64e0bfd-c43d-4aa1-e237-f7d708d80359`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natDegree_basis (hvs : Set.InjOn v s) (hi : i ∈ s) :
    (Lagrange.basis s v i).natDegree = s.card - 1 := by
  have H : ∀ j, j ∈ s.erase i → basisDivisor (v i) (v j) ≠ 0 := by
    simp_rw [Ne.def, mem_erase, basisDivisor_eq_zero_iff]
    exact fun j ⟨hij₁, hj⟩ hij₂ => hij₁ (hvs hj hi hij₂.symm)
  rw [← card_erase_of_mem hi, card_eq_sum_ones]
  convert natDegree_prod _ _ H using 1
  refine' sum_congr rfl fun j hj => (natDegree_basisDivisor_of_ne _).symm
  rw [Ne.def, ← basisDivisor_eq_zero_iff]
  exact H _ hj
#align lagrange.nat_degree_basis Lagrange.natDegree_basis

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Lagrange/Variantf3ba8dbae934751bd24cfd1de5980daf30b1da376dceb541b1d305e7dcc1cf54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Lagrange/Variantf3ba8dbae934751bd24cfd1de5980daf30b1da376dceb541b1d305e7dcc1cf54.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0507f8cfc109876f1c55fd293eb5667198b30ea8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

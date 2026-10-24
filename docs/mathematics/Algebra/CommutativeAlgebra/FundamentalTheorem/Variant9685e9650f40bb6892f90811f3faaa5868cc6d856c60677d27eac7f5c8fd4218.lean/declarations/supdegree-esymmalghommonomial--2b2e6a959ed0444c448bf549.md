# supDegree_esymmAlgHomMonomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5c4736c30e82459d8bb087ca2f4ce876ddb6c1a9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 222,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/96/9685e9650f40bb6892f90811f3faaa5868cc6d856c60677d27eac7f5c8fd4218.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:11096874-f39d-7d9d-f5ae-6937e96b2d4d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:39b07a4f-af9b-8283-e999-c8da62f6a4dd",
  "kind": "lemma",
  "lexical_name": "supDegree_esymmAlgHomMonomial",
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
  "slug": "supdegree-esymmalghommonomial--2b2e6a959ed0444c448bf549",
  "source": {
    "blob": "5c4736c30e82459d8bb087ca2f4ce876ddb6c1a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 222,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant9685e9650f40bb6892f90811f3faaa5868cc6d856c60677d27eac7f5c8fd4218.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b2e6a959ed0444c448bf5495d4f300c13c24ab7bf9ab4f9b71e01ea4726f35a",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant9685e9650f40bb6892f90811f3faaa5868cc6d856c60677d27eac7f5c8fd4218.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39b07a4f-af9b-8283-e999-c8da62f6a4dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma supDegree_esymmAlgHomMonomial (hr : r ≠ 0) (t : Fin n →₀ ℕ) (hnm : n ≤ m) :
    ofLex (supDegree toLex <| esymmAlgHomMonomial (Fin m) t r) = accumulate n m t := by
  nontriviality R
  induction t using Finsupp.induction₂ with
  | zero => simp_rw [esymmAlgHom_zero, supDegree_toLex_C, ofLex_zero, Finsupp.coe_zero, map_zero]
  | add_single i _ _ _ _ ih =>
    have := i.2.trans_le hnm
    rw [esymmAlgHomMonomial_add, esymmAlgHomMonomial_single_one,
        Monic.supDegree_mul_of_ne_zero_left toLex.injective toLex_add, ofLex_add, Finsupp.coe_add,
        ih, Finsupp.coe_add, map_add, Monic.supDegree_pow rfl toLex_add toLex.injective, ofLex_smul,
        Finsupp.coe_smul, supDegree_esymm this, ← map_nsmul, ← Finsupp.coe_smul,
        Finsupp.smul_single, nsmul_one, Nat.cast_id]
    · exact monic_esymm this
    · exact (monic_esymm this).pow toLex_add toLex.injective
    · rwa [Ne, ← leadingCoeff_eq_zero toLex.injective, leadingCoeff_esymmAlgHomMonomial _ hnm]

omit [Fintype σ] in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant9685e9650f40bb6892f90811f3faaa5868cc6d856c60677d27eac7f5c8fd4218.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant9685e9650f40bb6892f90811f3faaa5868cc6d856c60677d27eac7f5c8fd4218.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c4736c30e82459d8bb087ca2f4ce876ddb6c1a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# repr_pow_isIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9c1884cb23871ab9cbec2e99827dadc01ecbdeb4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 139,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3f48091aa5862c2451f46fc0a5b02a8246ae115b58f5d7195ad0fa405db73c5f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cbc8eea3-a9be-bdf6-ecbe-af7006e8beb5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:335729a6-f1d0-af83-f0e0-a0a965f82748",
  "kind": "theorem",
  "lexical_name": "repr_pow_isIntegral",
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
  "slug": "repr-pow-isintegral--8929074dc39c615d7bd573f3",
  "source": {
    "blob": "9c1884cb23871ab9cbec2e99827dadc01ecbdeb4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 139,
    "path": "GRWTSK/Algebra/PowerBasis/Variant3f48091aa5862c2451f46fc0a5b02a8246ae115b58f5d7195ad0fa405db73c5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8929074dc39c615d7bd573f3d4c76862b2f6e44980f9a52927689ab95ceaa2dc",
  "verification": {
    "reference": "docs/verification/Algebra/PowerBasis/Variant3f48091aa5862c2451f46fc0a5b02a8246ae115b58f5d7195ad0fa405db73c5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:335729a6-f1d0-af83-f0e0-a0a965f82748`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem repr_pow_isIntegral (hB : IsIntegral R B.gen) {x : A}
    (hx : ∀ i, IsIntegral R (B.basis.repr x i))
    (hmin : minpoly S B.gen = (minpoly R B.gen).map (algebraMap R S)) (n : ℕ) :
    ∀ i, IsIntegral R (B.basis.repr (x ^ n) i) := by
  nontriviality A using Subsingleton.elim (x ^ n) 0, isIntegral_zero
  revert hx
  refine Nat.case_strong_induction_on
    -- Porting note: had to hint what to induct on
    (p := fun n ↦ _ → ∀ (i : Fin B.dim), IsIntegral R (B.basis.repr (x ^ n) i))
    n ?_ fun n hn => ?_
  · intro _ i
    rw [pow_zero, ← pow_zero B.gen, ← Fin.val_mk B.dim_pos, ← B.basis_eq_pow,
      B.basis.repr_self_apply]
    split_ifs
    · exact isIntegral_one
    · exact isIntegral_zero
  · intro hx
    rw [pow_succ]
    exact repr_mul_isIntegral hB (fun _ => hn _ le_rfl (fun _ => hx _) _) hx hmin

/-- Let `B B' : PowerBasis K S` be such that `IsIntegral R B.gen`, and let `P : R[X]` be such that
`aeval B.gen P = B'.gen`. Then `IsIntegral R (B.basis.to_matrix B'.basis i j)` for all `i` and `j`
if `minpoly K B.gen = (minpoly R B.gen).map (algebraMap R L)`. This is the case
if `R` is a GCD domain and `K` is its fraction ring. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PowerBasis/Variant3f48091aa5862c2451f46fc0a5b02a8246ae115b58f5d7195ad0fa405db73c5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PowerBasis/Variant3f48091aa5862c2451f46fc0a5b02a8246ae115b58f5d7195ad0fa405db73c5f.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c1884cb23871ab9cbec2e99827dadc01ecbdeb4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

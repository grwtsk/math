# eq_X_sub_C_of_algebraMap_inj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "252a3ae8d64fb066d2026f2515502030871db24a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 201,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/30/3085dbbd8201bc8454c75a379fd8993955a927cecf85b7c11258b4ddbceb76bb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:07d8b1b2-cd1a-9206-c740-4eb943c3af68",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7b0ac30e-786d-d3b8-07a0-e7900fb490b2",
  "kind": "theorem",
  "lexical_name": "eq_X_sub_C_of_algebraMap_inj",
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
  "slug": "eq-x-sub-c-of-algebramap-inj--9431d2c88d3b28dd28595685",
  "source": {
    "blob": "252a3ae8d64fb066d2026f2515502030871db24a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 201,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant3085dbbd8201bc8454c75a379fd8993955a927cecf85b7c11258b4ddbceb76bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9431d2c88d3b28dd28595685b3d5ea15a7a7165389f1aef77730457b0cd5a5d5",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant3085dbbd8201bc8454c75a379fd8993955a927cecf85b7c11258b4ddbceb76bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b0ac30e-786d-d3b8-07a0-e7900fb490b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_X_sub_C_of_algebraMap_inj (a : A) (hf : Function.Injective (algebraMap A B)) :
    minpoly A (algebraMap A B a) = X - C a := by
  nontriviality A
  refine' (unique' A _ (monic_X_sub_C a) _ _).symm
  · rw [map_sub, aeval_C, aeval_X, sub_self]
  simp_rw [or_iff_not_imp_left]
  intro q hl h0
  rw [← natDegree_lt_natDegree_iff h0, natDegree_X_sub_C, Nat.lt_one_iff] at hl
  rw [eq_C_of_natDegree_eq_zero hl] at h0 ⊢
  rwa [aeval_C, map_ne_zero_iff _ hf, ← C_ne_zero]
set_option linter.uppercaseLean3 false in
#align minpoly.eq_X_sub_C_of_algebra_map_inj minpoly.eq_X_sub_C_of_algebraMap_inj

end Ring

section IsDomain

variable [Ring B] [Algebra A B]

variable {x : B}

/-- If `a` strictly divides the minimal polynomial of `x`, then `x` cannot be a root for `a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant3085dbbd8201bc8454c75a379fd8993955a927cecf85b7c11258b4ddbceb76bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant3085dbbd8201bc8454c75a379fd8993955a927cecf85b7c11258b4ddbceb76bb.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `252a3ae8d64fb066d2026f2515502030871db24a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# dvd_of_infinite_eval_dvd_eval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ea47ed65a027729e75532e896cac84790169d110",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 364,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ee/ee694c0b315b63087f6918133bccfb1797cf785fca574432fc861e15d7f41d7c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1ec997cd-45e3-61f6-f2ee-843e9e79ac53",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a5fea532-781b-fb3b-b0f3-4427798dc4f4",
  "kind": "theorem",
  "lexical_name": "dvd_of_infinite_eval_dvd_eval",
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
  "slug": "dvd-of-infinite-eval-dvd-eval--9c40d631c4ce7efe3c71f810",
  "source": {
    "blob": "ea47ed65a027729e75532e896cac84790169d110",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 376,
    "line": 364,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantee694c0b315b63087f6918133bccfb1797cf785fca574432fc861e15d7f41d7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c40d631c4ce7efe3c71f8107c20cd4c219e130a53fc95f08631af2d571ecdec",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variantee694c0b315b63087f6918133bccfb1797cf785fca574432fc861e15d7f41d7c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5fea532-781b-fb3b-b0f3-4427798dc4f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 364–376.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dvd_of_infinite_eval_dvd_eval
    {P Q : ℤ[X]} (mQ : Q.Monic) (h : {a | Q.eval a ∣ P.eval a}.Infinite) : Q ∣ P := by
  have eqR := modByMonic_add_div P Q
  have degR := degree_modByMonic_lt P mQ
  rw [← modByMonic_eq_zero_iff_dvd mQ]
  set R := P %ₘ Q
  apply eq_zero_of_infinite_isRoot
  refine (h.sdiff (finite_abs_eval_le_of_degree_lt degR)).mono fun x mx ↦ ?_
  simp only [Set.mem_sdiff, Set.mem_ofPred_eq, not_le] at mx
  rw [← eqR, eval_add, eval_mul, Int.dvd_add_self_mul, ← abs_dvd] at mx
  exact Int.eq_zero_of_abs_lt_dvd mx.1 mx.2

end Polynomial
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variantee694c0b315b63087f6918133bccfb1797cf785fca574432fc861e15d7f41d7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantee694c0b315b63087f6918133bccfb1797cf785fca574432fc861e15d7f41d7c.lean#L364).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea47ed65a027729e75532e896cac84790169d110` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

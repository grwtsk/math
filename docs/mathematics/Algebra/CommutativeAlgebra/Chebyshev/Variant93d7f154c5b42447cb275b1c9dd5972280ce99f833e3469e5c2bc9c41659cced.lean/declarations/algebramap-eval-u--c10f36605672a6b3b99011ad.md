# algebraMap_eval_U

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "01c2e7a722cc81b731f3f2a86c49b98e92281184",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 45,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/93/93d7f154c5b42447cb275b1c9dd5972280ce99f833e3469e5c2bc9c41659cced.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9f65ae56-7a52-762b-54e7-432999e87733",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a3744396-f6ff-760b-3b36-0c9eefeef323",
  "kind": "theorem",
  "lexical_name": "algebraMap_eval_U",
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
  "slug": "algebramap-eval-u--c10f36605672a6b3b99011ad",
  "source": {
    "blob": "01c2e7a722cc81b731f3f2a86c49b98e92281184",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 45,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Chebyshev/Variant93d7f154c5b42447cb275b1c9dd5972280ce99f833e3469e5c2bc9c41659cced.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c10f36605672a6b3b99011ada3aa1ef24781878c9960bb369b6dbeeb51e0848a",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Chebyshev/Variant93d7f154c5b42447cb275b1c9dd5972280ce99f833e3469e5c2bc9c41659cced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3744396-f6ff-760b-3b36-0c9eefeef323`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem algebraMap_eval_U (x : R) (n : ℕ) :
    algebraMap R A ((U R n).eval x) = (U A n).eval (algebraMap R A x) := by
  rw [← aeval_algebraMap_apply_eq_algebraMap_eval, aeval_U]
#align polynomial.chebyshev.algebra_map_eval_U Polynomial.Chebyshev.algebraMap_eval_U

-- Porting note: added type ascriptions to the statement
@[simp, norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Chebyshev/Variant93d7f154c5b42447cb275b1c9dd5972280ce99f833e3469e5c2bc9c41659cced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Chebyshev/Variant93d7f154c5b42447cb275b1c9dd5972280ce99f833e3469e5c2bc9c41659cced.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01c2e7a722cc81b731f3f2a86c49b98e92281184` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

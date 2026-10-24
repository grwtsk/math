# eval₂AlgHom_X

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3177f4b02a50c85cc97780f4c1f33b049cc698fa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 738,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/61/617a2278665e02a00684f6f17b96f9925a473c54e456fc53eb6dae299c0fd89f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7b887fa5-ecc9-cff8-713b-728f259d1734",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:55aa1063-28a8-f0ae-4436-44059358a27e",
  "kind": "theorem",
  "lexical_name": "eval₂AlgHom_X",
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
  "slug": "eval-alghom-x--614a9e7ce4d2d52d08a7666c",
  "source": {
    "blob": "3177f4b02a50c85cc97780f4c1f33b049cc698fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 749,
    "line": 738,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Eval/Variant617a2278665e02a00684f6f17b96f9925a473c54e456fc53eb6dae299c0fd89f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:614a9e7ce4d2d52d08a7666ce0a0ebede0eb01f33f07f0a9669e0445686b819f",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Eval/Variant617a2278665e02a00684f6f17b96f9925a473c54e456fc53eb6dae299c0fd89f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55aa1063-28a8-f0ae-4436-44059358a27e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 738–749.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eval₂AlgHom_X (i : σ) :
    eval₂AlgHom R g (X i : MvPolynomial σ R) = g i := eval₂_X (algebraMap R S₁) g i

end Algebra

section AevalTower

variable {S A : Type*} [CommSemiring S] [CommSemiring A]
variable [Algebra S R] [Algebra S A]

/-- Version of `aeval` for defining algebra homs out of `MvPolynomial σ R` over a smaller base ring
  than `R`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Eval/Variant617a2278665e02a00684f6f17b96f9925a473c54e456fc53eb6dae299c0fd89f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Eval/Variant617a2278665e02a00684f6f17b96f9925a473c54e456fc53eb6dae299c0fd89f.lean#L738).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3177f4b02a50c85cc97780f4c1f33b049cc698fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

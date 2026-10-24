# FredholmPackage.isQuasiInverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6f8abc5c8ad7e3a26fd394d750df66c48b4079e4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 213,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fd/fd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4f424436-6292-8b48-427a-705126ddd641",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:60be5525-3d0f-cf19-e5a3-3c199a6b5e2d",
  "kind": "lemma",
  "lexical_name": "FredholmPackage.isQuasiInverse",
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
  "slug": "fredholmpackage-isquasiinverse--391510d9f6d8be1875b87dfa",
  "source": {
    "blob": "6f8abc5c8ad7e3a26fd394d750df66c48b4079e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 213,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:391510d9f6d8be1875b87dfa7b56e8f713e4dae4cf7212b590b7a40c6662fac8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60be5525-3d0f-cf19-e5a3-3c199a6b5e2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma FredholmPackage.isQuasiInverse {u : E →L[𝕜] F} (pkg : FredholmPackage u) :
    pkg.quasiInverse.IsQuasiInverse u := by
  nth_rw 2 [pkg.eq_equiv]
  have hdom : IsQuasiInverse pkg.decDom.X₁.subtype pkg.decDom.proj :=
    have := pkg.decDom.finite_X₀
    isQuasiInverse_subtype_projectionOnto _
  have hcodom : IsQuasiInverse pkg.decCodom.X₁.subtype pkg.decCodom.proj :=
    have := pkg.decCodom.finite_X₀
    isQuasiInverse_subtype_projectionOnto _
  -- For some reason `exact` and `refine` are slow here!
  apply hdom.comp (pkg.equiv.isQuasiInverse.comp hcodom.symm)

end FredholmPackage

variable [T2Space E] [T2Space F] in
/-- Assume that `u : E →L[𝕜] F` has a continuous quasi-inverse. Then there are closed
subspaces of finite codimensions `E₁` and `F₁` between which `u` induces an isomorphism.

This statement is private because it is superseded by later results: using `isFredholm_tfae`,
you can build a `FredholmPackage` for `u`, and then apply `FredholmPackage.isInvertible_restrict`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f8abc5c8ad7e3a26fd394d750df66c48b4079e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

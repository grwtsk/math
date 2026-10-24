# quotEquivQuotMap_symm_apply_mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ddd9f807-e54e-c532-c770-0b8e5ca8d515",
  "kind": "theorem",
  "lexical_name": "quotEquivQuotMap_symm_apply_mk",
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
  "slug": "quotequivquotmap-symm-apply-mk--c6a7afd5b98815407db48ddc",
  "source": {
    "blob": "0464c1179296fc28d15f00be3f8982bf8c70a7e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 896,
    "line": 876,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/AdjoinRoot/Variant6ebbc071e189a9d84dce89e0584ae5cec439b41e110778b0bb4eb3454bd4c85c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6a7afd5b98815407db48ddcf71945094e846a79be7cecdc7eabcdb751edd806",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/AdjoinRoot/Variant6ebbc071e189a9d84dce89e0584ae5cec439b41e110778b0bb4eb3454bd4c85c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ddd9f807-e54e-c532-c770-0b8e5ca8d515`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 876–896.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quotEquivQuotMap_symm_apply_mk (f g : R[X]) (I : Ideal R) :
    (AdjoinRoot.quotEquivQuotMap f I).symm (Ideal.Quotient.mk _
      (Polynomial.map (Ideal.Quotient.mk I) g)) =
        Ideal.Quotient.mk (Ideal.map (of f) I) (AdjoinRoot.mk f g) := by
  rw [AdjoinRoot.quotEquivQuotMap_symm_apply,
    AdjoinRoot.quotAdjoinRootEquivQuotPolynomialQuot_symm_mk_mk]
#align adjoin_root.quot_equiv_quot_map_symm_apply_mk AdjoinRoot.quotEquivQuotMap_symm_apply_mk

end

end AdjoinRoot

namespace PowerBasis

open AdjoinRoot AlgEquiv

variable [CommRing R] [CommRing S] [Algebra R S]

/-- Let `α` have minimal polynomial `f` over `R` and `I` be an ideal of `R`,
then `R[α] / (I) = (R[x] / (f)) / pS = (R/p)[x] / (f mod p)`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/AdjoinRoot/Variant6ebbc071e189a9d84dce89e0584ae5cec439b41e110778b0bb4eb3454bd4c85c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/AdjoinRoot/Variant6ebbc071e189a9d84dce89e0584ae5cec439b41e110778b0bb4eb3454bd4c85c.lean#L876).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0464c1179296fc28d15f00be3f8982bf8c70a7e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

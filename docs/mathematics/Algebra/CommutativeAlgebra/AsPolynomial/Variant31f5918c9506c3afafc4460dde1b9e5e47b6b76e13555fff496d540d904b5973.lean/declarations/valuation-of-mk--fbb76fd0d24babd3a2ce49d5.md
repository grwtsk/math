# valuation_of_mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24582b8b-01f7-902c-82d9-909e601a00be",
  "kind": "theorem",
  "lexical_name": "valuation_of_mk",
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
  "slug": "valuation-of-mk--fbb76fd0d24babd3a2ce49d5",
  "source": {
    "blob": "f16677b972ddcc5799d64ad657be6713cc60ee9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 213,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/AsPolynomial/Variant31f5918c9506c3afafc4460dde1b9e5e47b6b76e13555fff496d540d904b5973.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fbb76fd0d24babd3a2ce49d5a55600a10558796a92881f2bb62db807121a8d68",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/AsPolynomial/Variant31f5918c9506c3afafc4460dde1b9e5e47b6b76e13555fff496d540d904b5973.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24582b8b-01f7-902c-82d9-909e601a00be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem valuation_of_mk (f : Polynomial K) {g : Polynomial K} (hg : g ≠ 0) :
    (Polynomial.idealX K).valuation _ (RatFunc.mk f g) =
      (Polynomial.idealX K).intValuation f / (Polynomial.idealX K).intValuation g := by
  simp only [RatFunc.mk_eq_mk' _ hg, valuation_of_mk']

end Polynomial

namespace RatFunc

open scoped Multiplicative

open Polynomial

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/AsPolynomial/Variant31f5918c9506c3afafc4460dde1b9e5e47b6b76e13555fff496d540d904b5973.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/AsPolynomial/Variant31f5918c9506c3afafc4460dde1b9e5e47b6b76e13555fff496d540d904b5973.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f16677b972ddcc5799d64ad657be6713cc60ee9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# innerSL_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7a323bc3-bc62-75b6-08f2-2d2492f3ed34",
  "kind": "theorem",
  "lexical_name": "innerSL_norm",
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
  "slug": "innersl-norm--7f103d73f8a5068aad2a8f15",
  "source": {
    "blob": "84b796de47caf0fc659e8a03f551cbf7cd585826",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 83,
    "path": "GRWTSK/Algebra/LinearAlgebra/Dual/Variant1ae14e2fc74fc657dafa35d601a2e9a7611d35738d01b02a8d09a96ee7aeef9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f103d73f8a5068aad2a8f158d14174ca1a3c42706ad28e4fbf0d244ad3551ee",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Dual/Variant1ae14e2fc74fc657dafa35d601a2e9a7611d35738d01b02a8d09a96ee7aeef9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a323bc3-bc62-75b6-08f2-2d2492f3ed34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem innerSL_norm [Nontrivial E] : ‖(innerSL 𝕜 : E →L⋆[𝕜] E →L[𝕜] 𝕜)‖ = 1 :=
  show ‖(toDualMap 𝕜 E).toContinuousLinearMap‖ = 1 from LinearIsometry.norm_toContinuousLinearMap _
set_option linter.uppercaseLean3 false in
#align inner_product_space.innerSL_norm InnerProductSpace.innerSL_norm

variable {𝕜}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Dual/Variant1ae14e2fc74fc657dafa35d601a2e9a7611d35738d01b02a8d09a96ee7aeef9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Dual/Variant1ae14e2fc74fc657dafa35d601a2e9a7611d35738d01b02a8d09a96ee7aeef9d.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84b796de47caf0fc659e8a03f551cbf7cd585826` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

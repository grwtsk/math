# InnerProductSpace.toCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e03f84b46ed4b575f77303bff734749ec5c722cb01bcdea8c84ea805ddf7b8ca",
  "kind": "def",
  "lexical_name": "InnerProductSpace.toCore",
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
  "slug": "innerproductspace-tocore--ec11183061e44837fbbf85a4",
  "source": {
    "blob": "c6bb8e59ba6929738bdb13de5934cd78d0636b2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 164,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantcacb19052f1b51bb12b44fc6e5d8fa1112e3c2d1d5d9ddaf968da23c50b512aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec11183061e44837fbbf85a4190f68e212a4bc1b5f26e3b70927f02a2cc32179",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantcacb19052f1b51bb12b44fc6e5d8fa1112e3c2d1d5d9ddaf968da23c50b512aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e03f84b46ed4b575f77303bff734749ec5c722cb01bcdea8c84ea805ddf7b8ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def InnerProductSpace.toCore [NormedAddCommGroup E] [c : InnerProductSpace 𝕜 E] :
    InnerProductSpace.Core 𝕜 E :=
  { c with
    nonneg_re := fun x => by
      rw [← InnerProductSpace.norm_sq_eq_inner]
      apply sq_nonneg
    definite := fun x hx =>
      norm_eq_zero.1 <| pow_eq_zero (n := 2) <| by
        rw [InnerProductSpace.norm_sq_eq_inner (𝕜 := 𝕜) x, hx, map_zero] }
#align inner_product_space.to_core InnerProductSpace.toCore

namespace InnerProductSpace.Core

variable [AddCommGroup F] [Module 𝕜 F] [c : InnerProductSpace.Core 𝕜 F]

local notation "⟪" x ", " y "⟫" => @inner 𝕜 F _ x y

local notation "normSqK" => @IsROrC.normSq 𝕜 _

local notation "reK" => @IsROrC.re 𝕜 _

local notation "ext_iff" => @IsROrC.ext_iff 𝕜 _

local postfix:90 "†" => starRingEnd _

/-- Inner product defined by the `InnerProductSpace.Core` structure. We can't reuse
`inner_product_space.core.to_has_inner` because it takes `InnerProductSpace.Core` as an explicit
argument. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantcacb19052f1b51bb12b44fc6e5d8fa1112e3c2d1d5d9ddaf968da23c50b512aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantcacb19052f1b51bb12b44fc6e5d8fa1112e3c2d1d5d9ddaf968da23c50b512aa.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6bb8e59ba6929738bdb13de5934cd78d0636b2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

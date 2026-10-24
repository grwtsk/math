# InnerProductSpace.toCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eb0a60dcf3513c6efc76051569c8ff39382498da107ef8692dd8da65706c0055",
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
  "slug": "innerproductspace-tocore--aaf614268c1fe8927c660919",
  "source": {
    "blob": "59c53f0d833e2920a53d96b06c36d59b7143c86a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 187,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Defs/Variantbb9e18a317e780b8947eaba0d1fce9a781ff759aeb3689a9ab47a433bb01f52a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aaf614268c1fe8927c66091942f2a55b0fa9fed7a5998881a01c2a37e1fee3b9",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Defs/Variantbb9e18a317e780b8947eaba0d1fce9a781ff759aeb3689a9ab47a433bb01f52a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eb0a60dcf3513c6efc76051569c8ff39382498da107ef8692dd8da65706c0055`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def InnerProductSpace.toCore [NormedAddCommGroup E] [c : InnerProductSpace 𝕜 E] :
    InnerProductSpace.Core 𝕜 E :=
  { c with
    re_inner_nonneg := fun x => by
      rw [← InnerProductSpace.norm_sq_eq_re_inner]
      apply sq_nonneg
    definite := fun x hx =>
      norm_eq_zero.1 <| eq_zero_of_pow_eq_zero (n := 2) <| by
        rw [InnerProductSpace.norm_sq_eq_re_inner (𝕜 := 𝕜) x, hx, map_zero] }

namespace InnerProductSpace.Core

section PreInnerProductSpace.Core

variable [AddCommGroup F] [Module 𝕜 F] [c : PreInnerProductSpace.Core 𝕜 F]

local notation "⟪" x ", " y "⟫" => inner 𝕜 x y

/-- Local notation for `RCLike.ext_iff 𝕜` -/
local notation "ext_iff" => @RCLike.ext_iff 𝕜 _

/-- Local notation for `starRingEnd _` -/
local postfix:90 "†" => starRingEnd _

/-- Inner product defined by the `PreInnerProductSpace.Core` structure. We can't reuse
`PreInnerProductSpace.Core.toInner` because it takes `PreInnerProductSpace.Core` as an explicit
argument. -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Defs/Variantbb9e18a317e780b8947eaba0d1fce9a781ff759aeb3689a9ab47a433bb01f52a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Defs/Variantbb9e18a317e780b8947eaba0d1fce9a781ff759aeb3689a9ab47a433bb01f52a.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59c53f0d833e2920a53d96b06c36d59b7143c86a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

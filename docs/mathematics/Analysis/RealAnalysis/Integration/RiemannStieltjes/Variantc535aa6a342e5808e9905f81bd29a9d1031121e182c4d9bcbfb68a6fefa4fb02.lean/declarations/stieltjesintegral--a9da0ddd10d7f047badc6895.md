# stieltjesIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c170c4e4269b1d9371c11373630d128eaaa3974594cf1cc39cf303a69b8cb8d6",
  "kind": "def",
  "lexical_name": "stieltjesIntegral",
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
  "slug": "stieltjesintegral--a9da0ddd10d7f047badc6895",
  "source": {
    "blob": "4cb5cefcb7f1b4fb936a1b6e367d49d783cc80ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 213,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RiemannStieltjes/Variantc535aa6a342e5808e9905f81bd29a9d1031121e182c4d9bcbfb68a6fefa4fb02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a9da0ddd10d7f047badc689519e70fa0d7be94336815a71b9cfb58bd5a01d0a1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RiemannStieltjes/Variantc535aa6a342e5808e9905f81bd29a9d1031121e182c4d9bcbfb68a6fefa4fb02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c170c4e4269b1d9371c11373630d128eaaa3974594cf1cc39cf303a69b8cb8d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def stieltjesIntegral : G :=
  if h : StieltjesIntegrable a b B f g then h.choose else 0

/-- Notation `∫ˢ x in a..b, f x ∂[B; g]` for the Riemann–Stieltjes integral of `f` against the
integrator `g`, paired by the bilinear map `B`.  Mirrors the vector-measure integral notation
`∫ᵛ x, f x ∂[B; μ]`, and parallels `∫ x in a..b, f x ∂μ` for `intervalIntegral`. -/
scoped notation3 "∫ˢ "(...)" in "a".."b", "r:60:(scoped f => f)" ∂["B:70"; "g:70"]" =>
  stieltjesIntegral a b B r g

/-- The special case of `∫ˢ x in a..b, f x ∂[B; g]` with `f` real-valued, `g` vector-valued, and
`B = ContinuousLinearMap.lsmul ℝ ℝ`. -/
scoped notation3 "∫ˢ "(...)" in "a".."b", "r:60:(scoped f => f)" ∂•"g:70 =>
  stieltjesIntegral a b (lsmul ℝ ℝ) r g

/-- The special case of `∫ˢ x in a..b, f x ∂[B; g]` with `f` vector-valued, `g` real-valued, and
`B = (ContinuousLinearMap.lsmul ℝ ℝ).flip`. -/
scoped notation3 "∫ˢ "(...)" in "a".."b", "r:60:(scoped f => f)" ∂<•"g:70 =>
  stieltjesIntegral a b (lsmul ℝ ℝ).flip r g

-- The case where `f` and `g` are both real- or both complex-valued (`B = .mul ℝ E`) has no
-- dedicated shorthand; write it with the general notation as `∫ˢ x in a..b, f x ∂[.mul ℝ E; g]`.

/-! ### The Riemann integral
-/

variable (L : E)

/-- `HasRiemannIntegral a b f L` is defined to equal
`HasStieltjesIntegral a b (lsmul ℝ ℝ).flip f id L`.  Use `unfold HasRiemannIntegral` or similar
to access the Stieltjes integral API. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RiemannStieltjes/Variantc535aa6a342e5808e9905f81bd29a9d1031121e182c4d9bcbfb68a6fefa4fb02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RiemannStieltjes/Variantc535aa6a342e5808e9905f81bd29a9d1031121e182c4d9bcbfb68a6fefa4fb02.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cb5cefcb7f1b4fb936a1b6e367d49d783cc80ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

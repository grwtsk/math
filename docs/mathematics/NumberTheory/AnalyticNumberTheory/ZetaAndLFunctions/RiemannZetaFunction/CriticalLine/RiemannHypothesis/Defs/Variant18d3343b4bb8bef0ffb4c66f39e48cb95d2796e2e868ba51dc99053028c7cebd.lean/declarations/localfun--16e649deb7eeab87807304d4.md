# LocalFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:179eb0876f12d4c83237af15d73d136da718c8f6d0684c3321fafd150607de44",
  "kind": "structure",
  "lexical_name": "LocalFun",
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
  "slug": "localfun--16e649deb7eeab87807304d4",
  "source": {
    "blob": "d8f3956393109e9062fccd12cd418e462c70c68f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 120,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defs/Variant18d3343b4bb8bef0ffb4c66f39e48cb95d2796e2e868ba51dc99053028c7cebd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:16e649deb7eeab87807304d4a896c788bbd431e2c1f87109ddedb013cd9b7b6f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defs/Variant18d3343b4bb8bef0ffb4c66f39e48cb95d2796e2e868ba51dc99053028c7cebd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:179eb0876f12d4c83237af15d73d136da718c8f6d0684c3321fafd150607de44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LocalFun where
  /-- `φ̂` restricted to ℝ (real-valued: φ is real and even) [§2.2]. -/
  phiHat : ℝ → ℝ
  /-- `Φ := (φ²)^` restricted to ℝ (real, even, entire) [eq:PhigA]. -/
  Phi : ℝ → ℝ
  /-- `A_φ := φ ⋆ φ`, `(v⋆v)(y) := ∫ v(u)v(u+y)du` [eq:PhigA]. -/
  Aphi : ℝ → ℝ
  /-- `g := φ² ⋆ φ²` [eq:PhigA]. -/
  g : ℝ → ℝ
  /-- `a := L⁻¹ ∫ φ²` [eq:abdef]. -/
  a : ℝ
  /-- `b := L⁻¹ ∫ φ⁴` [eq:abdef]. -/
  b : ℝ

variable (p : Setting) (F : LocalFun)

/-- The prime-side matrix entry (second expression in [eq:Gdef], §2.2):
`G_{kl} = ∫_ℝ φ̂(τ−τ_k) φ̂(τ−τ_l) ν_X(τ) dτ`, with `ν_X = Zeta23.nuX X` [eq:nudef] CONCRETE
(same shape as `Zeta23.Params.Gentry`, which is the case `F.phiHat := P.phiHatR T`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defs/Variant18d3343b4bb8bef0ffb4c66f39e48cb95d2796e2e868ba51dc99053028c7cebd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defs/Variant18d3343b4bb8bef0ffb4c66f39e48cb95d2796e2e868ba51dc99053028c7cebd.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8f3956393109e9062fccd12cd418e462c70c68f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

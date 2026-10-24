# coeFnAlgHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:295680a9cc248075cf885f392192c5301fc341085780e24df89313d03951965d",
  "kind": "def",
  "lexical_name": "coeFnAlgHom",
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
  "slug": "coefnalghom--30f770ff617aedd372fd5f42",
  "source": {
    "blob": "fa50aeb1bd9d06f3baac27589adf30c1791f6c46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 301,
    "path": "GRWTSK/Geometry/DifferentialGeometry/SmoothFunctions/Variantc549d157c7522fd9d1b4cd3a52376eabb5df7f025d91155e8f8dbf96e719ccf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:30f770ff617aedd372fd5f42280dcbbf62d600a43b7729219e781fefd77fd391",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/SmoothFunctions/Variantc549d157c7522fd9d1b4cd3a52376eabb5df7f025d91155e8f8dbf96e719ccf3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:295680a9cc248075cf885f392192c5301fc341085780e24df89313d03951965d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 301–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coeFnAlgHom : C^n⟮I, N; 𝓘(𝕜, A), A⟯ →ₐ[𝕜] N → A where
  toFun := (↑)
  commutes' _ := rfl
  -- `(ContMDiffMap.coeFnRingHom : C^n⟮I, N; 𝓘(𝕜, A), A⟯ →+* _) with` times out for some reason
  map_zero' := ContMDiffMap.coe_zero
  map_one' := ContMDiffMap.coe_one
  map_add' := ContMDiffMap.coe_add
  map_mul' := ContMDiffMap.coe_mul

end AlgebraStructure

section ModuleOverContinuousFunctions

/-!
### Structure as module over scalar functions

If `V` is a module over `𝕜`, then we show that the space of `C^n` functions from `N` to `V`
is naturally a vector space over the ring of `C^n` functions from `N` to `𝕜`. -/

/-- `C^n` scalar-valued functions act by left-multiplication on `C^n` functions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/SmoothFunctions/Variantc549d157c7522fd9d1b4cd3a52376eabb5df7f025d91155e8f8dbf96e719ccf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/SmoothFunctions/Variantc549d157c7522fd9d1b4cd3a52376eabb5df7f025d91155e8f8dbf96e719ccf3.lean#L301).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa50aeb1bd9d06f3baac27589adf30c1791f6c46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

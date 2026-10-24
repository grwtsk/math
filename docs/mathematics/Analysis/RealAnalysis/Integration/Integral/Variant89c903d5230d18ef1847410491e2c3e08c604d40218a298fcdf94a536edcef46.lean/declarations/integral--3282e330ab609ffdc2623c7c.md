# integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e131cb928dc474fef360a0c49b7849c648066b7767edfcbdb206160193af52e8",
  "kind": "def",
  "lexical_name": "integral",
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
  "slug": "integral--3282e330ab609ffdc2623c7c",
  "source": {
    "blob": "e4cd6d51dc28138c2a2aa05ca63204735a9a5c22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 250,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variant89c903d5230d18ef1847410491e2c3e08c604d40218a298fcdf94a536edcef46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3282e330ab609ffdc2623c7cd2783d725d53862ca3b8573d4ae11581931ffeef",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integral/Variant89c903d5230d18ef1847410491e2c3e08c604d40218a298fcdf94a536edcef46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e131cb928dc474fef360a0c49b7849c648066b7767edfcbdb206160193af52e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def integral (μ : VectorMeasure X F) (f : X → E) (B : E →L[ℝ] F →L[ℝ] G) : G :=
  setToFun μ.variation (μ.transpose B)
    (dominatedFinMeasAdditive_cbmApplyMeasure μ B) f

@[inherit_doc integral]
notation3 "∫ᵛ "(...)", "r:60:(scoped f => f)" ∂["B:65"; "μ:65"]" => integral μ r B

/-- The special case of the pairing integral where the pairing is just the scalar multiplication by
`ℝ` on `F` and `f` is real-valued. The resulting integral is `F`-valued.-/
notation3 "∫ᵛ "(...)", "r:60:(scoped f => f)" ∂•"μ:70 => integral μ r (lsmul ℝ ℝ)

/-- The special case of the pairing integral where the pairing is just the flip of scalar
multiplication by `ℝ` on `F` and `f` is `F`-valued and `μ` is a signed measure.
The resulting integral is `F`-valued.-/
notation3 "∫ᵛ "(...)", "r:60:(scoped f => f)" ∂<•"μ:70 => integral μ r (lsmul ℝ ℝ).flip

@[inherit_doc integral]
notation3 "∫ᵛ "(...)" in "s", "r:60:(scoped f => f)" ∂["B:70"; "μ:70"]" =>
  integral (VectorMeasure.restrict μ s) r B

/-- The special case of the pairing integral in a set where the pairing is just the scalar
multiplication by `ℝ` on `F` and `f` is real-valued. The resulting integral is `F`-valued.-/
notation3 "∫ᵛ "(...)" in "s", "r:60:(scoped f => f)" ∂•"μ:70 =>
  integral (VectorMeasure.restrict μ s) r (lsmul ℝ ℝ)

/-- The special case of the pairing integral in a set where the pairing is just the flip of the
scalar multiplication by `ℝ` on `F` and `f` is `F`-valued and `μ` is a signed measure.
The resulting integral is `F`-valued.-/
notation3 "∫ᵛ "(...)" in "s", "r:60:(scoped f => f)" ∂<•"μ:70 =>
  integral (VectorMeasure.restrict μ s) r (lsmul ℝ ℝ).flip

variable {μ ν B}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integral/Variant89c903d5230d18ef1847410491e2c3e08c604d40218a298fcdf94a536edcef46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variant89c903d5230d18ef1847410491e2c3e08c604d40218a298fcdf94a536edcef46.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4cd6d51dc28138c2a2aa05ca63204735a9a5c22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

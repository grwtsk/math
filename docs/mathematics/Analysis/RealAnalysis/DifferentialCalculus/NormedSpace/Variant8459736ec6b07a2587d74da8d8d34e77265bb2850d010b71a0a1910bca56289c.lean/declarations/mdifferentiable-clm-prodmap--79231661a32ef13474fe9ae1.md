# MDifferentiable.clm_prodMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:079e7b18-66bf-ca9f-4dfd-17f217e7a5f4",
  "kind": "theorem",
  "lexical_name": "MDifferentiable.clm_prodMap",
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
  "slug": "mdifferentiable-clm-prodmap--79231661a32ef13474fe9ae1",
  "source": {
    "blob": "6451c31dfa6c23e7a3354924b201e95600ffaac5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 298,
    "line": 273,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant8459736ec6b07a2587d74da8d8d34e77265bb2850d010b71a0a1910bca56289c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79231661a32ef13474fe9ae12287afde2dff749bf7519684e6cdad69f9d31689",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant8459736ec6b07a2587d74da8d8d34e77265bb2850d010b71a0a1910bca56289c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:079e7b18-66bf-ca9f-4dfd-17f217e7a5f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–298.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MDifferentiable.clm_prodMap {g : M → F₁ →L[𝕜] F₃} {f : M → F₂ →L[𝕜] F₄}
    (hg : MDiff g) (hf : MDiff f) : MDiff fun x ↦ (g x).prodMap (f x) :=
  fun x ↦ (hg x).clm_prodMap (hf x)

/-! ### Differentiability of scalar multiplication -/

section smul

open NormedSpace ContinuousLinearMap

variable {V : Type*} [NormedAddCommGroup V] [NormedSpace 𝕜 V]
variable {f : M → 𝕜} {g : M → V}

-- TODO: investigate inlining this proof entirely!
/-- Given maps `f`, `g` from a manifold into a field `𝕜` and `𝕜`-vector space `V`, respectively, if
at some point `x`, `f` has differential `f' : TangentSpace I x →L[𝕜] 𝕜` and `g` has differential
`g' : TangentSpace I x →L[𝕜] V` (both phrased using the predicate `HasMFDerivAt`), it follows that
their scalar multiplication `f • g` has differential `f x • g' + toSpanSingleton 𝕜 (g x) ∘L f'`.

In fact, the statement above is not literally true, because, for example, the differential of `g`
really takes values in the tangent space to `V` at `g x`, rather than in `V` itself. Of course, this
tangent space can be canonically identified with `V`.

This lemma phrases the formula using the equiv `NormedSpace.fromTangentSpace`, which provides this
canonical identification. (It would also be possible to phrase the formula without this equiv,
instead using casting and definitional abuse.) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant8459736ec6b07a2587d74da8d8d34e77265bb2850d010b71a0a1910bca56289c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant8459736ec6b07a2587d74da8d8d34e77265bb2850d010b71a0a1910bca56289c.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6451c31dfa6c23e7a3354924b201e95600ffaac5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

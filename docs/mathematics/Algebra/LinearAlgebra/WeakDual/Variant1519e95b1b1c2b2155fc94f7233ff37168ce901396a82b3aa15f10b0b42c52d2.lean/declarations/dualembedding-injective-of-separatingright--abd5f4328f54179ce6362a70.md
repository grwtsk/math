# dualEmbedding_injective_of_separatingRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c5bf2469-53c1-ff21-5061-ff8ac6cc36e8",
  "kind": "lemma",
  "lexical_name": "dualEmbedding_injective_of_separatingRight",
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
  "slug": "dualembedding-injective-of-separatingright--abd5f4328f54179ce6362a70",
  "source": {
    "blob": "ec12ffe16920ff1577d627ad05b1be24b22c2dd9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 99,
    "path": "GRWTSK/Algebra/LinearAlgebra/WeakDual/Variant1519e95b1b1c2b2155fc94f7233ff37168ce901396a82b3aa15f10b0b42c52d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:abd5f4328f54179ce6362a70a80422af421da711f03ea22e4bb3e4960eb3e05a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/WeakDual/Variant1519e95b1b1c2b2155fc94f7233ff37168ce901396a82b3aa15f10b0b42c52d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5bf2469-53c1-ff21-5061-ff8ac6cc36e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma dualEmbedding_injective_of_separatingRight (B : E →ₗ[𝕜] F →ₗ[𝕜] 𝕜) (hr : B.SeparatingRight) :
    Function.Injective (WeakBilin.eval B) :=
  (injective_iff_map_eq_zero _).mpr (fun f hf ↦
    (separatingRight_iff_linear_flip_nontrivial.mp hr) f (ContinuousLinearMap.coe_inj.mpr hf))

variable {ι 𝕜 E F : Type*}

open TopologicalSpace

open scoped Topology NNReal

section

section TopologicalRing

variable [Finite ι] [Field 𝕜] [t𝕜 : TopologicalSpace 𝕜] [IsTopologicalRing 𝕜]
  [AddCommGroup E] [Module 𝕜 E] [T0Space 𝕜]

/-- A linear functional `φ` can be expressed as a linear combination of linear functionals `f₁,…,fₙ`
if and only if `φ` is continuous with respect to the topology induced by `f₁,…,fₙ`. See
`LinearMap.mem_span_iff_continuous` for a result about arbitrary collections of linear functionals.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/WeakDual/Variant1519e95b1b1c2b2155fc94f7233ff37168ce901396a82b3aa15f10b0b42c52d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/WeakDual/Variant1519e95b1b1c2b2155fc94f7233ff37168ce901396a82b3aa15f10b0b42c52d2.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec12ffe16920ff1577d627ad05b1be24b22c2dd9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

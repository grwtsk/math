# MeromorphicOn.logDeriv_finprod_eventuallyEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c9693dd6fd57e2c98bf3b3875399f196429a420d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 96,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/ed579333273557078eea0ef7fe72cb4785f20e5f2d91bc6153933699a3c9b573.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9632fd39-76f4-2e35-47bc-5b07c93d713c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:66a9fbe1-e269-3af5-48a5-29d1bd2ffe6a",
  "kind": "theorem",
  "lexical_name": "MeromorphicOn.logDeriv_finprod_eventuallyEq",
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
  "slug": "meromorphicon-logderiv-finprod-eventuallyeq--9c518f87a487bb9b2085ff14",
  "source": {
    "blob": "c9693dd6fd57e2c98bf3b3875399f196429a420d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 96,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Varianted579333273557078eea0ef7fe72cb4785f20e5f2d91bc6153933699a3c9b573.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c518f87a487bb9b2085ff14cb667d4860102c10d03220f830f37fa674e3e8b1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Varianted579333273557078eea0ef7fe72cb4785f20e5f2d91bc6153933699a3c9b573.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66a9fbe1-e269-3af5-48a5-29d1bd2ffe6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MeromorphicOn.logDeriv_finprod_eventuallyEq {ι : Type*} {F : ι → 𝕜 → 𝕜'}
    (hF : (mulSupport F).Finite) (h : ∀ i, MeromorphicOn (F i) U)
    (h' : ∀ i, ∀ x ∈ U, meromorphicOrderAt (F i) x ≠ ⊤) :
    logDeriv (∏ᶠ i, F i) =ᶠ[codiscreteWithin U] ∑ᶠ i, logDeriv (F i) := by
  have hsub : support (fun i ↦ logDeriv (F i)) ⊆ hF.toFinset := by
    simp +contextual [Set.subset_def, not_imp_not, Pi.one_def]
  rw [finprod_eq_prod_of_mulSupport_subset F (s := hF.toFinset) (by simp),
    finsum_eq_sum_of_support_subset _ hsub]
  exact logDeriv_prod_eventuallyEq (fun i _ ↦ h i) (fun i _ ↦ h' i)

/--
The logarithmic derivative converts products into sums: away from a codiscrete subset of `𝕜`, the
logarithmic derivative of a finite product of meromorphic functions is the sum of the logarithmic
derivatives.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Varianted579333273557078eea0ef7fe72cb4785f20e5f2d91bc6153933699a3c9b573.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Varianted579333273557078eea0ef7fe72cb4785f20e5f2d91bc6153933699a3c9b573.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9693dd6fd57e2c98bf3b3875399f196429a420d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

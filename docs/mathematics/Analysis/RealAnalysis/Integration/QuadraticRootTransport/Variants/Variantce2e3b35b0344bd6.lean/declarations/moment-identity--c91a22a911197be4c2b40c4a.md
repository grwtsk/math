# moment_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e94ae8bf-7b67-7902-1641-6f79039cc709",
  "kind": "lemma",
  "lexical_name": "moment_identity",
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
  "slug": "moment-identity--c91a22a911197be4c2b40c4a",
  "source": {
    "blob": "f4ee4a176e608ec7d8273c98b492b8f4b2dfd055",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 32,
    "path": "GRWTSK/Analysis/Integral/QuadraticRootTransport.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c91a22a911197be4c2b40c4a6825247e9ea62d2061d01b16c20480af6be76423",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/QuadraticRootTransport/Variants/Variantce2e3b35b0344bd6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e94ae8bf-7b67-7902-1641-6f79039cc709`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma moment_identity {f g : X → ℝ}
    (hf : Integrable (fun x => (f x)^2) μ)
    (hg : Integrable (fun x => (g x)^2) μ)
    (hc : Integrable (fun x => f x*g x) μ) (t : ℝ) :
    energy μ (fun x => t*f x+g x) =
      t^2*energy μ f+2*t*cross μ f g+energy μ g := by
  unfold energy cross
  calc
    (∫ x, (t*f x+g x)^2 ∂μ) =
        ∫ x, (t^2*(f x)^2+(2*t)*(f x*g x))+(g x)^2 ∂μ := by
      apply integral_congr_ae
      exact Filter.Eventually.of_forall (fun _ => by ring)
    _ = (∫ x, t^2*(f x)^2+(2*t)*(f x*g x) ∂μ)+(∫ x, (g x)^2 ∂μ) :=
      integral_add ((hf.const_mul _).add (hc.const_mul _)) hg
    _ = _ := by
      rw [integral_add (hf.const_mul _) (hc.const_mul _),
        integral_const_mul, integral_const_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/RealAnalysis/Integration/QuadraticRootTransport/Variants/Variantce2e3b35b0344bd6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Integral/QuadraticRootTransport.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4ee4a176e608ec7d8273c98b492b8f4b2dfd055` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

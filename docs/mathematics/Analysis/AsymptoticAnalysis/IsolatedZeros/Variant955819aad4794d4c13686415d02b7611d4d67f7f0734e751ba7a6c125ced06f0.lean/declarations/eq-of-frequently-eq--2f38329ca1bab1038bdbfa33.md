# eq_of_frequently_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fa50aa5f-7124-1d2e-55f2-6a491e1f72b3",
  "kind": "theorem",
  "lexical_name": "eq_of_frequently_eq",
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
  "slug": "eq-of-frequently-eq--2f38329ca1bab1038bdbfa33",
  "source": {
    "blob": "d16050821aedfcb0aae8d954d325f0233bd19f99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 269,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant955819aad4794d4c13686415d02b7611d4d67f7f0734e751ba7a6c125ced06f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f38329ca1bab1038bdbfa33930ad11b6d2f1fc9fcd878752586c12eadd25c96",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant955819aad4794d4c13686415d02b7611d4d67f7f0734e751ba7a6c125ced06f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa50aa5f-7124-1d2e-55f2-6a491e1f72b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_of_frequently_eq [ConnectedSpace 𝕜] (hf : AnalyticOnNhd 𝕜 f univ)
    (hg : AnalyticOnNhd 𝕜 g univ) (hfg : ∃ᶠ z in 𝓝[≠] z₀, f z = g z) : f = g :=
  funext fun x =>
    eqOn_of_preconnected_of_frequently_eq hf hg isPreconnected_univ (mem_univ z₀) hfg (mem_univ x)

section Mul
/-!
### Vanishing of products of analytic functions
-/

variable {A : Type*} [NormedRing A] [NormedAlgebra 𝕜 A]
  {B : Type*} [NormedAddCommGroup B] [NormedSpace 𝕜 B] [Module A B]

/-- If `f, g` are analytic on a neighbourhood of the preconnected open set `U`, and `f • g = 0`
on `U`, then either `f = 0` on `U` or `g = 0` on `U`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant955819aad4794d4c13686415d02b7611d4d67f7f0734e751ba7a6c125ced06f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant955819aad4794d4c13686415d02b7611d4d67f7f0734e751ba7a6c125ced06f0.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d16050821aedfcb0aae8d954d325f0233bd19f99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

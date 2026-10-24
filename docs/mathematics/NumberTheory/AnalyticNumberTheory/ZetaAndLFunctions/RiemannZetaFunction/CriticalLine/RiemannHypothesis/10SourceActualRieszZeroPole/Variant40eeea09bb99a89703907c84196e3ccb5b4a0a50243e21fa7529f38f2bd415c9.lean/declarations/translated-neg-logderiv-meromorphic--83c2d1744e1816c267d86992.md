# translated_neg_logDeriv_meromorphic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8495655e-6678-cef4-418a-da567a4ae40f",
  "kind": "theorem",
  "lexical_name": "translated_neg_logDeriv_meromorphic",
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
  "slug": "translated-neg-logderiv-meromorphic--83c2d1744e1816c267d86992",
  "source": {
    "blob": "2b19a4ea71ac4ca8adc797d7d05f5f2deb3021c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 62,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/10SourceActualRieszZeroPole/Variant40eeea09bb99a89703907c84196e3ccb5b4a0a50243e21fa7529f38f2bd415c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83c2d1744e1816c267d869929dc5a4756cbc097b07e1e7aa8c553c9538e5cd66",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/10SourceActualRieszZeroPole/Variant40eeea09bb99a89703907c84196e3ccb5b4a0a50243e21fa7529f38f2bd415c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8495655e-6678-cef4-418a-da567a4ae40f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem translated_neg_logDeriv_meromorphic
    (ρ : (zetaZeros zetaSeam).carrier) :
    MeromorphicAt (fun z : ℂ => -logDeriv riemannZeta (1 / 2 + z))
      ((ρ : ℂ) - 1 / 2) := by
  have ha := Zeta23.WeilEF.analyticAt_riemannZeta (actual_zero_ne_one ρ)
  have hm : MeromorphicAt (fun z : ℂ => -logDeriv riemannZeta z) (ρ : ℂ) := by
    unfold logDeriv
    fun_prop
  have ht := meromorphicAt_fun_comp_add_const_iff_meromorphicAt
    (f := fun z : ℂ => -logDeriv riemannZeta z)
    (x := (ρ : ℂ) - 1 / 2) (c := (1 / 2 : ℂ))
  have ht' := ht.mpr (by simpa only [sub_add_cancel] using hm)
  simpa only [add_comm (1 / 2 : ℂ)] using ht'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/10SourceActualRieszZeroPole/Variant40eeea09bb99a89703907c84196e3ccb5b4a0a50243e21fa7529f38f2bd415c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/10SourceActualRieszZeroPole/Variant40eeea09bb99a89703907c84196e3ccb5b4a0a50243e21fa7529f38f2bd415c9.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b19a4ea71ac4ca8adc797d7d05f5f2deb3021c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

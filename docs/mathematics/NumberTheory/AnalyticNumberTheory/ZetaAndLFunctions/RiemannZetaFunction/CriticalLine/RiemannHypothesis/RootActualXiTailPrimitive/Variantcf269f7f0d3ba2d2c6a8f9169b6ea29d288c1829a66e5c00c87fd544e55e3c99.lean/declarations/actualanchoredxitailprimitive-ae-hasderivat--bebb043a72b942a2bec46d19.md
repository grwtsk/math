# actualAnchoredXiTailPrimitive_ae_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:79e7d162-1844-7fe8-79de-2fd282fba6cd",
  "kind": "theorem",
  "lexical_name": "actualAnchoredXiTailPrimitive_ae_hasDerivAt",
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
  "slug": "actualanchoredxitailprimitive-ae-hasderivat--bebb043a72b942a2bec46d19",
  "source": {
    "blob": "386c92f2f31d00526c46e950e395fb7b22412ffb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 110,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualXiTailPrimitive/Variantcf269f7f0d3ba2d2c6a8f9169b6ea29d288c1829a66e5c00c87fd544e55e3c99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bebb043a72b942a2bec46d19c406efc0e5b07f98b1234afd075a8419007794d6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualXiTailPrimitive/Variantcf269f7f0d3ba2d2c6a8f9169b6ea29d288c1829a66e5c00c87fd544e55e3c99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79e7d162-1844-7fe8-79de-2fd282fba6cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualAnchoredXiTailPrimitive_ae_hasDerivAt {b : ℝ} (hb : Real.log 7 ≤ b) :
    ∀ᵐ t, t ∈ uIcc (Real.log 7) b →
      HasDerivAt actualAnchoredXiTailPrimitive (actualXiTailTimeDensity t) t := by
  filter_upwards [(actualXiTailTimeDensity_intervalIntegrable hb).ae_hasDerivAt_integral]
    with t ht hm
  exact ht hm (Real.log 7) (by simp)

end
end FormalResearch.RiemannHypothesis.RootActualXiTailPrimitive
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualXiTailPrimitive/Variantcf269f7f0d3ba2d2c6a8f9169b6ea29d288c1829a66e5c00c87fd544e55e3c99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualXiTailPrimitive/Variantcf269f7f0d3ba2d2c6a8f9169b6ea29d288c1829a66e5c00c87fd544e55e3c99.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `386c92f2f31d00526c46e950e395fb7b22412ffb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

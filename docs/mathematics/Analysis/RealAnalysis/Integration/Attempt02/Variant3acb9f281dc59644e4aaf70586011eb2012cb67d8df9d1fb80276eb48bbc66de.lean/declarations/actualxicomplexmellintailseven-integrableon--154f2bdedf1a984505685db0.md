# actualXiComplexMellinTailSeven_integrableOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:409471d3-7c34-9ded-5f85-dc2ac7505f9e",
  "kind": "theorem",
  "lexical_name": "actualXiComplexMellinTailSeven_integrableOn",
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
  "slug": "actualxicomplexmellintailseven-integrableon--154f2bdedf1a984505685db0",
  "source": {
    "blob": "885f6cbc8eb9019fea96aac739ce5f3673aa5470",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 100,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt02/Variant3acb9f281dc59644e4aaf70586011eb2012cb67d8df9d1fb80276eb48bbc66de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:154f2bdedf1a984505685db07d0a18b5468f352d54ebe5ff5a20f17472fa9db7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt02/Variant3acb9f281dc59644e4aaf70586011eb2012cb67d8df9d1fb80276eb48bbc66de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:409471d3-7c34-9ded-5f85-dc2ac7505f9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiComplexMellinTailSeven_integrableOn {s : ℂ} (hs : 1 < s.re) :
    IntegrableOn (fun y : ℝ => (shiftedActualChebyshev y : ℂ) * (y : ℂ) ^ (-(s + 1)))
      (Ioi (7 : ℝ)) := by
  have hpsi := actualPsiComplexMellinTailSeven_integrableOn hs
  have hp : IntegrableOn (fun y : ℝ => (y : ℂ) ^ (-s)) (Ioi (7 : ℝ)) :=
    integrableOn_Ioi_cpow_of_lt (by simpa using (show -s.re < -1 by linarith)) (by norm_num)
  have hc : IntegrableOn (fun y : ℝ =>
      ((2 * (Real.eulerMascheroniConstant + 1 - Real.log 2) : ℝ) : ℂ) *
        (y : ℂ) ^ (-(s + 1))) (Ioi (7 : ℝ)) :=
    (integrableOn_Ioi_cpow_of_lt
      (by simpa using (show -(s.re + 1) < -1 by linarith)) (by norm_num)).const_mul _
  apply ((hpsi.sub hp).add hc).congr_fun _ measurableSet_Ioi
  intro y hy
  dsimp only
  unfold shiftedActualChebyshev
  push_cast
  rw [← positive_cpow_product (s := s) (lt_trans (by norm_num : (0 : ℝ) < 7) hy)]
  ring

/-- The original source Mellin identity retains the gamma term and continuous pole exactly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt02/Variant3acb9f281dc59644e4aaf70586011eb2012cb67d8df9d1fb80276eb48bbc66de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt02/Variant3acb9f281dc59644e4aaf70586011eb2012cb67d8df9d1fb80276eb48bbc66de.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `885f6cbc8eb9019fea96aac739ce5f3673aa5470` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# headlineW_quartic_unconditional

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e977c23ce5839e0cbd49741cf48f80606e3e8071",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 555,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/57e722729934f01f4f108ddde3c330ddb487f0edc7c0b9bc2f38f10505586553.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e5dc5af4-4da5-946b-a58e-582c4947bec0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c5164576-3ee2-60f8-e95e-385520529f59",
  "kind": "theorem",
  "lexical_name": "headlineW_quartic_unconditional",
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
  "slug": "headlinew-quartic-unconditional--5a1249e0364054b33ad9d866",
  "source": {
    "blob": "e977c23ce5839e0cbd49741cf48f80606e3e8071",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 571,
    "line": 555,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant57e722729934f01f4f108ddde3c330ddb487f0edc7c0b9bc2f38f10505586553.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a1249e0364054b33ad9d8661a9cba115d27a90fe34f3614d1d4370617ee1471",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant57e722729934f01f4f108ddde3c330ddb487f0edc7c0b9bc2f38f10505586553.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5164576-3ee2-60f8-e95e-385520529f59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 555–571.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem headlineW_quartic_unconditional : HeadlineW 0.86864 0.93432 := hardyW_simple_on_line_quartic_std

/-! ## Z′ literally: simple real stationary points of Hardy's Z-function  [XF′ (Z3) + Thm 9.4]

Zeta23/XiPrime/Hardy/ZFunction.lean defines Hardy's Z branch-free: sline t := 1/2 + t·I, Gfun t := Γℝ(sline t),
ephase t := Gfun t / ‖Gfun t‖ (= e^{iϑ(t)} — no arg/log branch), ZC t := ephase t · ζ(sline t), hardyZ t := (ZC t).re, and proves
ZC is real, HasDerivAt ZC (I · ephase t · hardyW (sline t)) t for t ≠ 0 [(Z3)], hence Z′(t) = 0 ↔ W(½+it) = 0 and then
Z″(t) ≠ 0 ↔ the zero is simple, and ncard_simpleStationaryZ : for 0 < T,
  #{t ∈ (T,2T] | Z′(t) = 0 ∧ Z″(t) ≠ 0} = N0simpleW T (2T). -/

section HardyZ

/-- **Simple real stationary points of Hardy's Z — unconditional, no hypotheses** ([XF′ Thm 9.4], flat window):
there is T₀ such that for every T ≥ T₀,
  0.85838 · N_W(T,2T) ≤ #{t ∈ (T,2T] : Z′(t) = 0 and Z″(t) ≠ 0},
N_W(T,2T) = NcountW T (2T) = the number of zeros of W = ζ′ − ½(χ′/χ)ζ with T < Im ≤ 2T, counted with multiplicity
(= N(T,2T) + O(log T), the zeta zero count, by Hardy.Count), Z = hardyZ Hardy's Z-function (ZFunction.lean). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant57e722729934f01f4f108ddde3c330ddb487f0edc7c0b9bc2f38f10505586553.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant57e722729934f01f4f108ddde3c330ddb487f0edc7c0b9bc2f38f10505586553.lean#L555).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e977c23ce5839e0cbd49741cf48f80606e3e8071` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

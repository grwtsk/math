# _root_.GRWTSK.Analysis.AsymptoticAnalysis.Term.Variantb5cb7649e1276d8ce5261efd6d60baa9883e547c4d8a293464621321b482bbc4.riemannZeta_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:da99b01e-3aa6-cf3b-5b11-377fa3f0f6dd",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Analysis.AsymptoticAnalysis.Term.Variantb5cb7649e1276d8ce5261efd6d60baa9883e547c4d8a293464621321b482bbc4.riemannZeta_one",
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
  "slug": "root-grwtsk-analysis-asymptoticanalysis-term-variantb5cb7649e1276d8ce526--5bcbee15d905b3af7111ab1d",
  "source": {
    "blob": "3b456c48485cd8f735dcbcc8ff1141530d916945",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 402,
    "line": 395,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant410d04f1a567a76f6cf025c7c7de5d17bfaf44dd22d1ffd47e5cabde809e59b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5bcbee15d905b3af7111ab1d23b16efe6f9f8148da9b8d56f687cff1707257f8",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant410d04f1a567a76f6cf025c7c7de5d17bfaf44dd22d1ffd47e5cabde809e59b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da99b01e-3aa6-cf3b-5b11-377fa3f0f6dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 395–402.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Analysis.AsymptoticAnalysis.Term.Variantb5cb7649e1276d8ce5261efd6d60baa9883e547c4d8a293464621321b482bbc4.riemannZeta_one : riemannZeta 1 = (γ - Complex.log (4 * ↑π)) / 2 := by
  have := (HurwitzZeta.tendsto_hurwitzZetaEven_sub_one_div_nhds_one 0).mono_left
    <| nhdsWithin_le_nhds (s := {1}ᶜ)
  simp only [HurwitzZeta.hurwitzZetaEven_zero, div_right_comm _ _ (Gammaℝ _)] at this
  exact tendsto_nhds_unique this tendsto_riemannZeta_sub_one_div_Gammaℝ

/-- Formula for `Λ 1`. Note that mathematically `Λ 1` is undefined, but our construction ascribes
this particular value to it. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant410d04f1a567a76f6cf025c7c7de5d17bfaf44dd22d1ffd47e5cabde809e59b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant410d04f1a567a76f6cf025c7c7de5d17bfaf44dd22d1ffd47e5cabde809e59b5.lean#L395).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b456c48485cd8f735dcbcc8ff1141530d916945` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# logDeriv_zeta_analyticAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:02458bf8-1490-0f55-012e-0a877a066dc8",
  "kind": "lemma",
  "lexical_name": "logDeriv_zeta_analyticAt",
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
  "slug": "logderiv-zeta-analyticat--ba7b8a91de8437a99da4687d",
  "source": {
    "blob": "06759d8f9d559acee3bc52992d42d2435e60fc6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 76,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Sides/Variantc406a11898ff301e09ff09e042aeea3637bcdf3dbfef9ba7c9fc750d4a800869.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba7b8a91de8437a99da4687dc378e4e38160feae5603346ee00ca490a4585071",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Sides/Variantc406a11898ff301e09ff09e042aeea3637bcdf3dbfef9ba7c9fc750d4a800869.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02458bf8-1490-0f55-012e-0a877a066dc8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma logDeriv_zeta_analyticAt {s : ℂ} (hs1 : s ≠ 1) (hζ : riemannZeta s ≠ 0) :
    AnalyticAt ℂ (logDeriv riemannZeta) s := by
  have ha := Zeta23.WeilEF.analyticAt_riemannZeta hs1
  have : AnalyticAt ℂ (fun z => deriv riemannZeta z / riemannZeta z) s := ha.deriv.div ha hζ
  exact this.congr (Filter.Eventually.of_forall fun z => (logDeriv_apply _ _).symm)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Sides/Variantc406a11898ff301e09ff09e042aeea3637bcdf3dbfef9ba7c9fc750d4a800869.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Sides/Variantc406a11898ff301e09ff09e042aeea3637bcdf3dbfef9ba7c9fc750d4a800869.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06759d8f9d559acee3bc52992d42d2435e60fc6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

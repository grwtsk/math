# plainProfile_contDiffOn_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ca45fc5-6202-0d38-1b12-bc3652b91061",
  "kind": "theorem",
  "lexical_name": "plainProfile_contDiffOn_pos",
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
  "slug": "plainprofile-contdiffon-pos--f2b4b8c46272a030837655f7",
  "source": {
    "blob": "69f8a2bc7932eb313832a52e87eecec4d44b1d92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 100,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/07be37c4d23da50061263742b82f69950b09f8ec328d02fa7ae4b1f98f079ca6SourcePositiveSa/Variant40f6137e8ab1b98f77ab99699ae682bc3cddbe1bbfc9ea7a8aa121cf4c5f18ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2b4b8c46272a030837655f7acea4d56c219b1def0236d6751775f8ddb29974d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/07be37c4d23da50061263742b82f69950b09f8ec328d02fa7ae4b1f98f079ca6SourcePositiveSa/Variant40f6137e8ab1b98f77ab99699ae682bc3cddbe1bbfc9ea7a8aa121cf4c5f18ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ca45fc5-6202-0d38-1b12-bc3652b91061`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem plainProfile_contDiffOn_pos {A : ℝ} (hA : 0 < A) (k : ℝ) :
    ContDiffOn ℝ 1 (sourcePlainSamplingTerm A k) (Ioi 0) := by
  have hl : ContDiffOn ℝ 1 Real.log (Ioi (0 : ℝ)) :=
    Real.contDiffOn_log.mono (fun u hu ↦ by simpa using ne_of_gt hu)
  have hs : ContDiffOn ℝ 1 (fun u ↦ Real.log k + Real.log u) (Ioi 0) :=
    contDiffOn_const.add hl
  exact ((hs.neg.div_const 2).exp).mul
    ((sourceCorrelation_contDiff A hA).comp_contDiffOn hs)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/07be37c4d23da50061263742b82f69950b09f8ec328d02fa7ae4b1f98f079ca6SourcePositiveSa/Variant40f6137e8ab1b98f77ab99699ae682bc3cddbe1bbfc9ea7a8aa121cf4c5f18ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/07be37c4d23da50061263742b82f69950b09f8ec328d02fa7ae4b1f98f079ca6SourcePositiveSa/Variant40f6137e8ab1b98f77ab99699ae682bc3cddbe1bbfc9ea7a8aa121cf4c5f18ac.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69f8a2bc7932eb313832a52e87eecec4d44b1d92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

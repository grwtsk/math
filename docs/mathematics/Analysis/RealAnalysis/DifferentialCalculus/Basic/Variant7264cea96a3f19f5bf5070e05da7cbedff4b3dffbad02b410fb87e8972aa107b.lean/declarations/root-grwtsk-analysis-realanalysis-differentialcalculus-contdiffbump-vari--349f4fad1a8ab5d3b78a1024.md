# _root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ContDiffBump.Variantf8d802ac3ba774453b365638f69c0fd155f3f185489d6714de03169952188ad9.ContDiffAt.contDiffBump

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2695be4a-cb1c-1bc7-24f4-e677b37ff89e",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ContDiffBump.Variantf8d802ac3ba774453b365638f69c0fd155f3f185489d6714de03169952188ad9.ContDiffAt.contDiffBump",
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
  "slug": "root-grwtsk-analysis-realanalysis-differentialcalculus-contdiffbump-vari--349f4fad1a8ab5d3b78a1024",
  "source": {
    "blob": "93a38d2ae13d0b73ae802faab0a4f17eaf4d788b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 224,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant7264cea96a3f19f5bf5070e05da7cbedff4b3dffbad02b410fb87e8972aa107b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:349f4fad1a8ab5d3b78a1024278a5e88f6463edaf67e03d87a832897c9f047ff",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant7264cea96a3f19f5bf5070e05da7cbedff4b3dffbad02b410fb87e8972aa107b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2695be4a-cb1c-1bc7-24f4-e677b37ff89e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected nonrec theorem _root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ContDiffBump.Variantf8d802ac3ba774453b365638f69c0fd155f3f185489d6714de03169952188ad9.ContDiffAt.contDiffBump {c g : X → E} {f : ∀ x, ContDiffBump (c x)}
    {x : X} (hc : ContDiffAt ℝ n c x) (hr : ContDiffAt ℝ n (fun x => (f x).rIn) x)
    (hR : ContDiffAt ℝ n (fun x => (f x).rOut) x) (hg : ContDiffAt ℝ n g x) :
    ContDiffAt ℝ n (fun x => f x (g x)) x :=
  hc.contDiffBump hr hR hg
#align cont_diff_at.cont_diff_bump ContDiffAt.contDiffBump

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant7264cea96a3f19f5bf5070e05da7cbedff4b3dffbad02b410fb87e8972aa107b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant7264cea96a3f19f5bf5070e05da7cbedff4b3dffbad02b410fb87e8972aa107b.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93a38d2ae13d0b73ae802faab0a4f17eaf4d788b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

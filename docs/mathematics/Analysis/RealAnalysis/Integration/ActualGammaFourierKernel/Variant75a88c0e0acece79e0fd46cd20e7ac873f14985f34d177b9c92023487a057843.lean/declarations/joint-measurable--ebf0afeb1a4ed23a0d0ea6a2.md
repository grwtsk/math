# joint_measurable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7e796970-fd98-5d04-8b31-de549f575879",
  "kind": "theorem",
  "lexical_name": "joint_measurable",
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
  "slug": "joint-measurable--ebf0afeb1a4ed23a0d0ea6a2",
  "source": {
    "blob": "fc6cc2364ebcbbe17592a4aa32f90de128c3a53b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 34,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualGammaFourierKernel/Variant75a88c0e0acece79e0fd46cd20e7ac873f14985f34d177b9c92023487a057843.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ebf0afeb1a4ed23a0d0ea6a2fbe049fcad84781a3dba3447e5def63e1ef6e461",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualGammaFourierKernel/Variant75a88c0e0acece79e0fd46cd20e7ac873f14985f34d177b9c92023487a057843.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e796970-fd98-5d04-8b31-de549f575879`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem joint_measurable {A : ℝ} (hA : 1 ≤ A) : Measurable (jointIntegrand A) := by
  have hs : Measurable (fun p : ℝ × ℝ => sourceFourierSquare A p.1) :=
    (sourceSquare_measurable hA).comp measurable_fst
  unfold jointIntegrand compensatedKernel ArchimedeanKernel.kernel
  fun_prop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualGammaFourierKernel/Variant75a88c0e0acece79e0fd46cd20e7ac873f14985f34d177b9c92023487a057843.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualGammaFourierKernel/Variant75a88c0e0acece79e0fd46cd20e7ac873f14985f34d177b9c92023487a057843.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc6cc2364ebcbbe17592a4aa32f90de128c3a53b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

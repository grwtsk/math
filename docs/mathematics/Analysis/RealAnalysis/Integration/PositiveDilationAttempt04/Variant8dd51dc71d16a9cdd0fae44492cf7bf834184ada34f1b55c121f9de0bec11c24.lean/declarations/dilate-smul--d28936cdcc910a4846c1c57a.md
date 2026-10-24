# dilate_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1a3ef977-e438-7feb-89cc-c3d5bf520e33",
  "kind": "theorem",
  "lexical_name": "dilate_smul",
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
  "slug": "dilate-smul--d28936cdcc910a4846c1c57a",
  "source": {
    "blob": "bc6eee31a9635358fe6bdaf5a339f18124d935cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 121,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilationAttempt04/Variant8dd51dc71d16a9cdd0fae44492cf7bf834184ada34f1b55c121f9de0bec11c24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d28936cdcc910a4846c1c57aac2f66f3eb5e6f8fa91d3e55cf8888f853ab044a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PositiveDilationAttempt04/Variant8dd51dc71d16a9cdd0fae44492cf7bf834184ada34f1b55c121f9de0bec11c24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a3ef977-e438-7feb-89cc-c3d5bf520e33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dilate_smul {a : ℝ} (ha : 0 < a) (c : ℂ) (f : PositiveL2) :
    dilate a ha (c • f) = c • dilate a ha f := by
  apply Lp.ext
  filter_upwards [dilate_ae a ha (c • f),dilate_ae a ha f,
    Lp.coeFn_smul c (dilate a ha f),(positive_mul_quasi ha).ae_eq_comp (Lp.coeFn_smul c f)]
    with x hcf hf hsmul hp
  dsimp only [Pi.smul_apply,Function.comp_apply] at hsmul hp
  rw [hcf,hsmul,hf,dilateFunc,dilateFunc,hp]
  simp only [smul_eq_mul]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PositiveDilationAttempt04/Variant8dd51dc71d16a9cdd0fae44492cf7bf834184ada34f1b55c121f9de0bec11c24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilationAttempt04/Variant8dd51dc71d16a9cdd0fae44492cf7bf834184ada34f1b55c121f9de0bec11c24.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc6eee31a9635358fe6bdaf5a339f18124d935cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# llr_smul_nnreal_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d29a5198-3919-a7b2-4179-3630dcd6093a",
  "kind": "lemma",
  "lexical_name": "llr_smul_nnreal_right",
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
  "slug": "llr-smul-nnreal-right--bfed87648fa69f58a1f79258",
  "source": {
    "blob": "3ea8fbcc92483f27dcafebc1f6e9a61551afabed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 141,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantf54c44096973b1aa4921a357d4debc68a3230f81cfd743d9014d948e875cf5fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bfed87648fa69f58a1f79258145942137632631c281f04ef8d1f5de757e6064c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantf54c44096973b1aa4921a357d4debc68a3230f81cfd743d9014d948e875cf5fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d29a5198-3919-a7b2-4179-3630dcd6093a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma llr_smul_nnreal_right [IsFiniteMeasure μ] [Measure.HaveLebesgueDecomposition μ ν]
    (hμν : μ ≪ ν) (c : ℝ≥0) (hc : c ≠ 0) :
    llr μ (c • ν) =ᵐ[μ] fun x ↦ llr μ ν x - log c := by
  rw [← Measure.coe_nnreal_smul]
  filter_upwards [llr_smul_right hμν (c : ℝ≥0∞) (by simpa) (by simp)] with x hx
  rw [hx]
  simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantf54c44096973b1aa4921a357d4debc68a3230f81cfd743d9014d948e875cf5fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantf54c44096973b1aa4921a357d4debc68a3230f81cfd743d9014d948e875cf5fe.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ea8fbcc92483f27dcafebc1f6e9a61551afabed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

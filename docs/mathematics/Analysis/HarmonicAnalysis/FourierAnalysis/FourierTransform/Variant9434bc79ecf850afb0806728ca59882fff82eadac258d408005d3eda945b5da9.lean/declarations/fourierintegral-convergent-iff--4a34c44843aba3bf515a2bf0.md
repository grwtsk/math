# fourierIntegral_convergent_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:efc411e0-e956-755c-ecbf-a452cb6ffede",
  "kind": "theorem",
  "lexical_name": "fourierIntegral_convergent_iff",
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
  "slug": "fourierintegral-convergent-iff--4a34c44843aba3bf515a2bf0",
  "source": {
    "blob": "4889c4d03294dd51943ba8e4f9d437045364e808",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 130,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant9434bc79ecf850afb0806728ca59882fff82eadac258d408005d3eda945b5da9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a34c44843aba3bf515a2bf0c4e2cebac3fd293ef75fad3dd888db76b20abfb5",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant9434bc79ecf850afb0806728ca59882fff82eadac258d408005d3eda945b5da9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:efc411e0-e956-755c-ecbf-a452cb6ffede`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fourierIntegral_convergent_iff (he : Continuous e)
    (hL : Continuous fun p : V × W ↦ L p.1 p.2) {f : V → E} (w : W) :
    Integrable (fun v : V ↦ e (-L v w) • f v) μ ↔ Integrable f μ := by
  -- first prove one-way implication
  have aux {g : V → E} (hg : Integrable g μ) (x : W) :
      Integrable (fun v : V ↦ e (-L v x) • g v) μ := by
    have c : Continuous fun v ↦ e (-L v x) := he.comp (hL.comp (.prodMk_left _)).neg
    simp_rw [← integrable_norm_iff (c.aestronglyMeasurable.smul hg.1), Circle.norm_smul]
    exact hg.norm
  -- then use it for both directions
  refine ⟨fun hf ↦ ?_, fun hf ↦ aux hf w⟩
  have := aux hf (-w)
  simp_rw [← mul_smul (e _) (e _) (f _), ← e.map_add_eq_mul, LinearMap.map_neg, neg_add_cancel,
    e.map_zero_eq_one, one_smul] at this -- the `(e _)` speeds up elaboration considerably
  exact this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant9434bc79ecf850afb0806728ca59882fff82eadac258d408005d3eda945b5da9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant9434bc79ecf850afb0806728ca59882fff82eadac258d408005d3eda945b5da9.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4889c4d03294dd51943ba8e4f9d437045364e808` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

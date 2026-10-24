# _root_.GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.VerticalIntegral.Variant40067477e90c93d105dde39de70dabdb1c303338885a5d644c6caf99aeecf377.integrable_cexp_quadratic'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6dfe4a93-eba3-9870-dc1e-0b46d1a3ede8",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.VerticalIntegral.Variant40067477e90c93d105dde39de70dabdb1c303338885a5d644c6caf99aeecf377.integrable_cexp_quadratic'",
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
  "slug": "root-grwtsk-analysis-harmonicanalysis-fourieranalysis-verticalintegral-v--e83b80402cff052d8c2abf82",
  "source": {
    "blob": "841e39c43971ebf7e8dba537b7d26faccf65e8ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 196,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantb2c9ef881f9f25e0a3db529b9c0c0bf9beb8a40d792dad04bb3adb7453a20d98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e83b80402cff052d8c2abf8277fdedd2539ff8ce212382d0fa58241091b2e218",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantb2c9ef881f9f25e0a3db529b9c0c0bf9beb8a40d792dad04bb3adb7453a20d98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6dfe4a93-eba3-9870-dc1e-0b46d1a3ede8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.VerticalIntegral.Variant40067477e90c93d105dde39de70dabdb1c303338885a5d644c6caf99aeecf377.integrable_cexp_quadratic' (hb : b.re < 0) (c d : ℂ) :
    Integrable (fun (x : ℝ) ↦ cexp (b * x ^ 2 + c * x + d)) := by
  have hb' : b ≠ 0 := by contrapose! hb; rw [hb, zero_re]
  by_contra H
  simpa [hb', pi_ne_zero, Complex.exp_ne_zero, integral_undef H]
    using integral_cexp_quadratic hb c d

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantb2c9ef881f9f25e0a3db529b9c0c0bf9beb8a40d792dad04bb3adb7453a20d98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantb2c9ef881f9f25e0a3db529b9c0c0bf9beb8a40d792dad04bb3adb7453a20d98.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `841e39c43971ebf7e8dba537b7d26faccf65e8ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# weighted_expandedSummand_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1c3a5c6cfb6635c404c834da5a0bd410885924e2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 45,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/12/128580c181327bdbc79c5bf1ad2f7819208746cd39b523c310d572402ef43829.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e9b1a0cc-ddb0-2788-06c7-8cb389ae2df4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c6af274e-b115-3855-d6b8-b004f6cee009",
  "kind": "lemma",
  "lexical_name": "weighted_expandedSummand_eq",
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
  "slug": "weighted-expandedsummand-eq--9f95d34f1e12895635cc3fc8",
  "source": {
    "blob": "1c3a5c6cfb6635c404c834da5a0bd410885924e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 45,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant128580c181327bdbc79c5bf1ad2f7819208746cd39b523c310d572402ef43829.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f95d34f1e12895635cc3fc8718aa81ab551ca898ce246ff5f9b73401846e5ef",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant128580c181327bdbc79c5bf1ad2f7819208746cd39b523c310d572402ef43829.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6af274e-b115-3855-d6b8-b004f6cee009`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma weighted_expandedSummand_eq (z s : ℂ) (A : ℝ) :
    Complex.exp (-s * A) * expandedSummand A z = sourceWeight z *
      (weightedPolynomial (positivePolynomial z) (s - 2 * z) A +
        weightedPolynomial (positivePolynomial (-z)) (s + 2 * z) A -
        2 * weightedPolynomial (mixedPolynomial z) s A) := by
  have hpos : Complex.exp (-(s - 2 * z) * (A : ℂ)) =
      Complex.exp (-s * A) * Complex.exp (2 * (A : ℂ) * z) := by
    rw [← Complex.exp_add]
    congr 1
    ring
  have hneg : Complex.exp (-(s + 2 * z) * (A : ℂ)) =
      Complex.exp (-s * A) * Complex.exp (-2 * (A : ℂ) * z) := by
    rw [← Complex.exp_add]
    congr 1
    ring
  simp only [expandedSummand, weightedPolynomial, mixedPolynomial, Polynomial.eval_mul]
  rw [hpos, hneg]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant128580c181327bdbc79c5bf1ad2f7819208746cd39b523c310d572402ef43829.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceLaplaceIntegral/Variant128580c181327bdbc79c5bf1ad2f7819208746cd39b523c310d572402ef43829.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c3a5c6cfb6635c404c834da5a0bd410885924e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

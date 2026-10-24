# rate_one_majorant_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ce645fd2dfcd10959e24edea78d051fd32e06bdd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 83,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e1821ecaf23a317a95d6754f908f1a7521b7c1cf8d3684133dc981138dbf874f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7a376e5b-7378-db22-2999-935d6e7ecf94",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:744943f8-9529-a2ce-800b-1ce8d346a8d4",
  "kind": "theorem",
  "lexical_name": "rate_one_majorant_integrable",
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
  "slug": "rate-one-majorant-integrable--7ba29dd9c42246ae5307fa0e",
  "source": {
    "blob": "ce645fd2dfcd10959e24edea78d051fd32e06bdd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 83,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourcePNTRateOneStatements/Variante1821ecaf23a317a95d6754f908f1a7521b7c1cf8d3684133dc981138dbf874f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ba29dd9c42246ae5307fa0ebf7749452fd69f3367811b9915440768671f0040",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourcePNTRateOneStatements/Variante1821ecaf23a317a95d6754f908f1a7521b7c1cf8d3684133dc981138dbf874f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:744943f8-9529-a2ce-800b-1ce8d346a8d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rate_one_majorant_integrable (C c : ℝ) (hc : 0 < c) :
    IntegrableOn (fun A : ℝ ↦ C * (A ^ 17 * Real.exp (-A) +
      A ^ 17 * Real.exp (-A / 2) +
      A ^ 17 * Real.exp (-c * A ^ ((1 : ℝ) / 10)))) (Ioi 1) := by
  have h₁ : IntegrableOn (fun A : ℝ ↦ A ^ 17 * Real.exp (-A)) (Ioi 1) := by
    simpa using polynomial_stretched_integrable 1 1 (by norm_num) (by norm_num)
  have h₂ : IntegrableOn (fun A : ℝ ↦ A ^ 17 * Real.exp (-A / 2)) (Ioi 1) := by
    convert polynomial_stretched_integrable (1 / 2) 1 (by norm_num) (by norm_num) using 1
    simp only [Real.rpow_one]
    funext A
    congr 2
    ring
  exact ((h₁.add h₂).add (polynomial_stretched_integrable c (1 / 10) hc (by norm_num))).const_mul C

/-- This explicitly conditional transport does not assert the PNT source bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourcePNTRateOneStatements/Variante1821ecaf23a317a95d6754f908f1a7521b7c1cf8d3684133dc981138dbf874f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourcePNTRateOneStatements/Variante1821ecaf23a317a95d6754f908f1a7521b7c1cf8d3684133dc981138dbf874f.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce645fd2dfcd10959e24edea78d051fd32e06bdd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

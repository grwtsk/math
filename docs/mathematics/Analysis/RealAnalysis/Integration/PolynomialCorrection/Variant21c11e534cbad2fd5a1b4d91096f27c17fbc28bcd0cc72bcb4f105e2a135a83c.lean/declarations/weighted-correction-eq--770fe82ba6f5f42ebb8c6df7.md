# weighted_correction_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "06162b3e39a6c3bc5028be005ab91fdd65d9e049",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 90,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/21/21c11e534cbad2fd5a1b4d91096f27c17fbc28bcd0cc72bcb4f105e2a135a83c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a0a3ebbc-e2f7-ccfa-1cad-b2abfeaacd2e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dba65703-ec98-2110-7db0-838a9ae2727a",
  "kind": "theorem",
  "lexical_name": "weighted_correction_eq",
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
  "slug": "weighted-correction-eq--770fe82ba6f5f42ebb8c6df7",
  "source": {
    "blob": "06162b3e39a6c3bc5028be005ab91fdd65d9e049",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 90,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PolynomialCorrection/Variant21c11e534cbad2fd5a1b4d91096f27c17fbc28bcd0cc72bcb4f105e2a135a83c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:770fe82ba6f5f42ebb8c6df71021c67346a8c023b4300456204d72e4967e4c75",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PolynomialCorrection/Variant21c11e534cbad2fd5a1b4d91096f27c17fbc28bcd0cc72bcb4f105e2a135a83c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dba65703-ec98-2110-7db0-838a9ae2727a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_correction_eq (m : ℕ) (s : ℂ) (A : ℝ) :
    Complex.exp (-s * A) * (normalizationPolynomial m A : ℂ) =
      (65536 / 109395 : ℂ) / 16 * kernelIntegrand (m + 17) s A +
        (131072 / 45045 : ℂ) / 2 * kernelIntegrand (m + 15) s A +
        (196608 / 5005 : ℂ) * kernelIntegrand (m + 13) s A := by
  unfold normalizationPolynomial kernelIntegrand
  push_cast
  ring

/-- Genuine correction integrability on the full positive convergence half-plane. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PolynomialCorrection/Variant21c11e534cbad2fd5a1b4d91096f27c17fbc28bcd0cc72bcb4f105e2a135a83c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PolynomialCorrection/Variant21c11e534cbad2fd5a1b4d91096f27c17fbc28bcd0cc72bcb4f105e2a135a83c.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06162b3e39a6c3bc5028be005ab91fdd65d9e049` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

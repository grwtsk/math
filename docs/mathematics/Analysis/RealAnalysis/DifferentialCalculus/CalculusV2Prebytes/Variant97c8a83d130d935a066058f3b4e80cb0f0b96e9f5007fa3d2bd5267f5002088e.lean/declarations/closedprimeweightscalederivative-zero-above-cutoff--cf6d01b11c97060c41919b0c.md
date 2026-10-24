# closedPrimeWeightScaleDerivative_zero_above_cutoff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9d6fca8d74387c79fcb52f82a193247885a5dc8f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 207,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/97c8a83d130d935a066058f3b4e80cb0f0b96e9f5007fa3d2bd5267f5002088e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:26d360a9-fe24-4de1-195c-1149e086c246",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:50d10b68-a365-f70d-314b-1fc353cf8ae6",
  "kind": "theorem",
  "lexical_name": "closedPrimeWeightScaleDerivative_zero_above_cutoff",
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
  "slug": "closedprimeweightscalederivative-zero-above-cutoff--cf6d01b11c97060c41919b0c",
  "source": {
    "blob": "9d6fca8d74387c79fcb52f82a193247885a5dc8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 207,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant97c8a83d130d935a066058f3b4e80cb0f0b96e9f5007fa3d2bd5267f5002088e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf6d01b11c97060c41919b0c78c2fa65ca10cac91f504857a5ed9efe0c19dc3f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant97c8a83d130d935a066058f3b4e80cb0f0b96e9f5007fa3d2bd5267f5002088e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50d10b68-a365-f70d-314b-1fc353cf8ae6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closedPrimeWeightScaleDerivative_zero_above_cutoff {A : ℝ} (hA : 0 < A)
    {n : ℕ} (hn : 2 ≤ n) (hN : ⌊Real.exp (2 * A)⌋₊ < n) :
    closedPrimeWeightScaleDerivative A n = 0 := by
  simp [closedPrimeWeightScaleDerivative, correlationScaleDerivative_zero_above_cutoff hA hn hN]

/-- Independent derivative of the full moment uses its literal current closed inventory. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant97c8a83d130d935a066058f3b4e80cb0f0b96e9f5007fa3d2bd5267f5002088e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CalculusV2Prebytes/Variant97c8a83d130d935a066058f3b4e80cb0f0b96e9f5007fa3d2bd5267f5002088e.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d6fca8d74387c79fcb52f82a193247885a5dc8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

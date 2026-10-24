# prime_prefix_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "695ab506022bb90e9088d8e115f13642ef8322b8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 70,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/96/96a39125ad83d24d600779b380b855a5326204bb0a97d73e111c501757fc725d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d019457c-ef94-8238-0130-8e24a8754409",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c77dcf30-f035-4549-2b8c-b356cd7a9d9b",
  "kind": "theorem",
  "lexical_name": "prime_prefix_intervalIntegrable",
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
  "slug": "prime-prefix-intervalintegrable--ae034146bb338084d710f53d",
  "source": {
    "blob": "695ab506022bb90e9088d8e115f13642ef8322b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 70,
    "path": "GRWTSK/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant96a39125ad83d24d600779b380b855a5326204bb0a97d73e111c501757fc725d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae034146bb338084d710f53dcdd180554170a68408766e59a23c507e0b49cdaa",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant96a39125ad83d24d600779b380b855a5326204bb0a97d73e111c501757fc725d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c77dcf30-f035-4549-2b8c-b356cd7a9d9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem prime_prefix_intervalIntegrable (a b : ℝ) :
    IntervalIntegrable primeLogPrefix volume a b := by
  rcases le_total a b with hab | hba
  · have hi := primeLogPrefix_mul_deriv_intervalIntegrable a b hab
      (fun t : ℝ => t) contDiff_id
    simpa only [deriv_id'', mul_one] using hi
  · have hi := primeLogPrefix_mul_deriv_intervalIntegrable b a hba
      (fun t : ℝ => t) contDiff_id
    have hir : IntervalIntegrable primeLogPrefix volume b a := by
      simpa only [deriv_id'', mul_one] using hi
    exact hir.symm

/-- The endpoint correction is literal and valid on every real coordinate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant96a39125ad83d24d600779b380b855a5326204bb0a97d73e111c501757fc725d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant96a39125ad83d24d600779b380b855a5326204bb0a97d73e111c501757fc725d.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `695ab506022bb90e9088d8e115f13642ef8322b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

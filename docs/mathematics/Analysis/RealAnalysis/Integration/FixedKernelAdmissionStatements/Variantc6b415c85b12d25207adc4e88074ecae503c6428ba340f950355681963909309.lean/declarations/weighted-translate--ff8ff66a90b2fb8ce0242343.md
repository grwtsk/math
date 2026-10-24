# weighted_translate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "848d90b0955b3cdde99ea8014cc4e83d5fab29f4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 237,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c6/c6b415c85b12d25207adc4e88074ecae503c6428ba340f950355681963909309.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:25fb38a6-908d-c43a-ed27-66629b8cf0e9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0b0b36e9-ba53-6a1b-d1f5-71fdf9386fda",
  "kind": "theorem",
  "lexical_name": "weighted_translate",
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
  "slug": "weighted-translate--ff8ff66a90b2fb8ce0242343",
  "source": {
    "blob": "848d90b0955b3cdde99ea8014cc4e83d5fab29f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 237,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelAdmissionStatements/Variantc6b415c85b12d25207adc4e88074ecae503c6428ba340f950355681963909309.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff8ff66a90b2fb8ce02423438072bbe2bf6e19c6b5325f670dda80f7f65b9419",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FixedKernelAdmissionStatements/Variantc6b415c85b12d25207adc4e88074ecae503c6428ba340f950355681963909309.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b0b36e9-ba53-6a1b-d1f5-71fdf9386fda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem weighted_translate (t r : ℝ) :
    Real.exp (r / 2) * v (t - 1 - r) =
      Real.exp ((t - 1) / 2) *
        (Real.exp ((-1 / 2 : ℝ) * (t - 1 - r)) * v (t - 1 - r)) := by
  rw [← mul_assoc, ← Real.exp_add]
  congr 2
  ring

/-- The full logarithmic Jacobian expression has genuine integrability. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FixedKernelAdmissionStatements/Variantc6b415c85b12d25207adc4e88074ecae503c6428ba340f950355681963909309.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelAdmissionStatements/Variantc6b415c85b12d25207adc4e88074ecae503c6428ba340f950355681963909309.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `848d90b0955b3cdde99ea8014cc4e83d5fab29f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# explicit_dilationTest_eq_indicator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c7d562c8d07646b5481a20511d01ec126328a1ca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 182,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cc/ccd37ce5636052cd7b6ade626efb57c7b7f94fd70d32689ff2c91c3f10cd73e8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8496f45b-4341-ebb6-0107-a80a0c732b6d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4cfeda7d-8f03-115b-373f-34d832429b18",
  "kind": "theorem",
  "lexical_name": "explicit_dilationTest_eq_indicator",
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
  "slug": "explicit-dilationtest-eq-indicator--1591d05087aee76d07f29d49",
  "source": {
    "blob": "c7d562c8d07646b5481a20511d01ec126328a1ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 182,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Realization/Variantccd37ce5636052cd7b6ade626efb57c7b7f94fd70d32689ff2c91c3f10cd73e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1591d05087aee76d07f29d49554aec41879637af237f7af493380fcf270e83ac",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Realization/Variantccd37ce5636052cd7b6ade626efb57c7b7f94fd70d32689ff2c91c3f10cd73e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4cfeda7d-8f03-115b-373f-34d832429b18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem explicit_dilationTest_eq_indicator (A : ℝ) (hA : 0 < A) :
    dilationTest explicitSecondDerivative A =
      (Icc (-A) A).indicator (fun x ↦ secondInterior A x - bumpInterior A x / 4) := by
  funext x
  rw [dilationTest, scaledBump_eq_indicator A hA]
  simp only [explicitSecondDerivative, indicator_apply]
  split_ifs <;> simp

/-- Square integrability of the actual constructed test is proved, not supplied as a field. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Realization/Variantccd37ce5636052cd7b6ade626efb57c7b7f94fd70d32689ff2c91c3f10cd73e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Realization/Variantccd37ce5636052cd7b6ade626efb57c7b7f94fd70d32689ff2c91c3f10cd73e8.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7d562c8d07646b5481a20511d01ec126328a1ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

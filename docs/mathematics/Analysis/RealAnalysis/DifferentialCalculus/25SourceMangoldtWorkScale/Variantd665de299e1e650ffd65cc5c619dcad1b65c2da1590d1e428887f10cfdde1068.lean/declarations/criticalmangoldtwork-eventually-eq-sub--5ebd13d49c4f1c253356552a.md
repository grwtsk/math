# criticalMangoldtWork_eventually_eq_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1538504d43e2f037b91bead5c92732779e4b66b4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 116,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d665de299e1e650ffd65cc5c619dcad1b65c2da1590d1e428887f10cfdde1068.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ecdd84ce-f909-8e5a-8eae-5bc5e3f8f1c1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ce4a0091-ea44-c925-dbb7-9ecdeb1db558",
  "kind": "theorem",
  "lexical_name": "criticalMangoldtWork_eventually_eq_sub",
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
  "slug": "criticalmangoldtwork-eventually-eq-sub--5ebd13d49c4f1c253356552a",
  "source": {
    "blob": "1538504d43e2f037b91bead5c92732779e4b66b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 116,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/25SourceMangoldtWorkScale/Variantd665de299e1e650ffd65cc5c619dcad1b65c2da1590d1e428887f10cfdde1068.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ebd13d49c4f1c253356552a80b0f5b9785dc22ce6eadef7b7a05beb9b81129b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/25SourceMangoldtWorkScale/Variantd665de299e1e650ffd65cc5c619dcad1b65c2da1590d1e428887f10cfdde1068.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce4a0091-ea44-c925-dbb7-9ecdeb1db558`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalMangoldtWork_eventually_eq_sub {A : ℝ} (hA : 1 < A) :
    criticalMangoldtWork =ᶠ[nhds A]
      (fun B => criticalContinuousMoment B - closedPrimeMoment B) := by
  filter_upwards [eventually_gt_nhds hA] with B hB
  have h := closedPrimeMoment_eq_continuous_sub_Mangoldt_work B hB.le
  linarith

/-- Ordinary work differentiation follows the actual Abel identity, without redefining the work. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/25SourceMangoldtWorkScale/Variantd665de299e1e650ffd65cc5c619dcad1b65c2da1590d1e428887f10cfdde1068.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/25SourceMangoldtWorkScale/Variantd665de299e1e650ffd65cc5c619dcad1b65c2da1590d1e428887f10cfdde1068.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1538504d43e2f037b91bead5c92732779e4b66b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

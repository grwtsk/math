# criticalContinuousMoment_hasDerivAt

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
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d665de299e1e650ffd65cc5c619dcad1b65c2da1590d1e428887f10cfdde1068.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:38c1cbf3-81b0-5e5e-3519-fe28e453241d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ddca5592-543b-83ad-9b83-5274db472a65",
  "kind": "theorem",
  "lexical_name": "criticalContinuousMoment_hasDerivAt",
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
  "slug": "criticalcontinuousmoment-hasderivat--7e57a87107248c691619efd9",
  "source": {
    "blob": "1538504d43e2f037b91bead5c92732779e4b66b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 89,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/25SourceMangoldtWorkScale/Variantd665de299e1e650ffd65cc5c619dcad1b65c2da1590d1e428887f10cfdde1068.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e57a87107248c691619efd9cd70a16066ffb84ef5c09a6ab9424425ebd24e99",
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

Occurrence: `result:ddca5592-543b-83ad-9b83-5274db472a65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalContinuousMoment_hasDerivAt {A : ℝ} (hA : 1 < A) :
    HasDerivAt criticalContinuousMoment (continuousHalfScaleDerivative A) A :=
  (continuousHalfRational_hasDerivAt A).congr_of_eventuallyEq
    (criticalContinuousMoment_eventually_eq_rational hA)

/-- The actual continuous half is locally C¹ at every scale strictly above one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/25SourceMangoldtWorkScale/Variantd665de299e1e650ffd65cc5c619dcad1b65c2da1590d1e428887f10cfdde1068.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/25SourceMangoldtWorkScale/Variantd665de299e1e650ffd65cc5c619dcad1b65c2da1590d1e428887f10cfdde1068.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1538504d43e2f037b91bead5c92732779e4b66b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

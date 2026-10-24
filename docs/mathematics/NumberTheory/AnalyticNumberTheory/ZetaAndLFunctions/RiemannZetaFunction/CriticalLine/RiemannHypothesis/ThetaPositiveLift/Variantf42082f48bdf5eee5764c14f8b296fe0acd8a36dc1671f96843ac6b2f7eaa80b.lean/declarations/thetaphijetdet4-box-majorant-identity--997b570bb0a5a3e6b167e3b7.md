# thetaPhiJetDet4_box_majorant_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "81e770407f13829d4031059c9ab07b18ca41aeac",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 255,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f42082f48bdf5eee5764c14f8b296fe0acd8a36dc1671f96843ac6b2f7eaa80b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e2a0d16b-e989-b3ef-6f37-1c96c06049ed",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:defca71d-7aed-48cf-7295-b7397c148654",
  "kind": "theorem",
  "lexical_name": "thetaPhiJetDet4_box_majorant_identity",
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
  "slug": "thetaphijetdet4-box-majorant-identity--997b570bb0a5a3e6b167e3b7",
  "source": {
    "blob": "81e770407f13829d4031059c9ab07b18ca41aeac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 255,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf42082f48bdf5eee5764c14f8b296fe0acd8a36dc1671f96843ac6b2f7eaa80b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:997b570bb0a5a3e6b167e3b70df5a4e44d9b433795b50315b3df284144f4cbc6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf42082f48bdf5eee5764c14f8b296fe0acd8a36dc1671f96843ac6b2f7eaa80b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:defca71d-7aed-48cf-7295-b7397c148654`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiJetDet4_box_majorant_identity (A z : ℝ) :
    thetaPhiJetDet4Majorant
        (fun k => thetaPhiJet7DominantBox A k + thetaPhiJet7RemainderBox A z k) -
      thetaPhiJetDet4Majorant (thetaPhiJet7DominantBox A) =
    A ^ 16 *
      (372373664563200 * z +
       2242106519174774784 * z ^ 2 +
       1561848350772088012800 * z ^ 3 +
       113336795588871485128704 * z ^ 4) := by
  norm_num [thetaPhiJetDet4Majorant, thetaPhiJet7DominantBox,
    thetaPhiJet7RemainderBox, thetaPhiJet7RemainderErrorCoefficient]
  ring

/-- The verified seven-coordinate Gaussian box yields one scalar determinant
perturbation bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf42082f48bdf5eee5764c14f8b296fe0acd8a36dc1671f96843ac6b2f7eaa80b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf42082f48bdf5eee5764c14f8b296fe0acd8a36dc1671f96843ac6b2f7eaa80b.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81e770407f13829d4031059c9ab07b18ca41aeac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

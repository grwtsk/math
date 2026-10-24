# hasDerivAt_thetaPhiRawD5

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1c1febefde3eabb8f87051a308cf1d507a385831",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 56,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/be91935c7cae7e9b75a747a6892578441a54b9441dd18e49610c843fc66a72ac.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e087db7b-3d6b-5db2-e7cf-cb7d00064b46",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:37a8035a-32e6-d8a0-bee1-c1b6f9e6d7d1",
  "kind": "theorem",
  "lexical_name": "hasDerivAt_thetaPhiRawD5",
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
  "slug": "hasderivat-thetaphirawd5--d63b167c04f3feae22ac366d",
  "source": {
    "blob": "1c1febefde3eabb8f87051a308cf1d507a385831",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 56,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantbe91935c7cae7e9b75a747a6892578441a54b9441dd18e49610c843fc66a72ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d63b167c04f3feae22ac366d1c9a5a16c5a08fd260fc50e88e0fd2dcb463a4c6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantbe91935c7cae7e9b75a747a6892578441a54b9441dd18e49610c843fc66a72ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37a8035a-32e6-d8a0-bee1-c1b6f9e6d7d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasDerivAt_thetaPhiRawD5 (t : ℝ) :
    HasDerivAt thetaPhiRawD5 (thetaPhiRawD6 t) t := by
  unfold thetaPhiRawD5
  convert! (((((((hasDerivAt_thetaGaussianSum 2 5 t).const_mul
      (-(9375 * Real.pi))).add
    ((hasDerivAt_thetaGaussianSum 4 9 t).const_mul (285870 * Real.pi ^ 2))).sub
    ((hasDerivAt_thetaGaussianSum 6 13 t).const_mul (1008968 * Real.pi ^ 3))).add
    ((hasDerivAt_thetaGaussianSum 8 17 t).const_mul (976320 * Real.pi ^ 4))).sub
    ((hasDerivAt_thetaGaussianSum 10 21 t).const_mul (343040 * Real.pi ^ 5))).add
    ((hasDerivAt_thetaGaussianSum 12 25 t).const_mul (46592 * Real.pi ^ 6))).sub
    ((hasDerivAt_thetaGaussianSum 14 29 t).const_mul (2048 * Real.pi ^ 7)) using 1
  norm_num [thetaPhiRawD6]
  ring

/-- Exact polynomial mode factors for source derivatives zero through six. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantbe91935c7cae7e9b75a747a6892578441a54b9441dd18e49610c843fc66a72ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantbe91935c7cae7e9b75a747a6892578441a54b9441dd18e49610c843fc66a72ac.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c1febefde3eabb8f87051a308cf1d507a385831` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

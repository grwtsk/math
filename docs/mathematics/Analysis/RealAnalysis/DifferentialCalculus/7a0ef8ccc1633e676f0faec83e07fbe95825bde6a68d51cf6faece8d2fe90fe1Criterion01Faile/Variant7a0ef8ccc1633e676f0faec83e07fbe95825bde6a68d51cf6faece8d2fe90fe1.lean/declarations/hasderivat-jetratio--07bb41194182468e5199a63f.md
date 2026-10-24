# hasDerivAt_jetRatio

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b72b002e35cffb73fd419f1bb82bf6cb140eecd6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 8,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7a0ef8ccc1633e676f0faec83e07fbe95825bde6a68d51cf6faece8d2fe90fe1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bd573509-3fa9-f282-48f0-459e2494c618",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0ab1f666-9aa2-037e-bec6-521a23502133",
  "kind": "theorem",
  "lexical_name": "hasDerivAt_jetRatio",
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
  "slug": "hasderivat-jetratio--07bb41194182468e5199a63f",
  "source": {
    "blob": "b72b002e35cffb73fd419f1bb82bf6cb140eecd6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 19,
    "line": 8,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/7a0ef8ccc1633e676f0faec83e07fbe95825bde6a68d51cf6faece8d2fe90fe1Criterion01Faile/Variant7a0ef8ccc1633e676f0faec83e07fbe95825bde6a68d51cf6faece8d2fe90fe1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07bb41194182468e5199a63f7bb91c72980c322a9b7c2c9c093fa2fd83ee499c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/7a0ef8ccc1633e676f0faec83e07fbe95825bde6a68d51cf6faece8d2fe90fe1Criterion01Faile/Variant7a0ef8ccc1633e676f0faec83e07fbe95825bde6a68d51cf6faece8d2fe90fe1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ab1f666-9aa2-037e-bec6-521a23502133`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 8–19.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasDerivAt_jetRatio (f0 f1 f2 f3 f4 : ℝ → ℝ) {t : ℝ}
    (h0 : HasDerivAt f0 (f1 t) t) (h1 : HasDerivAt f1 (f2 t) t)
    (h2 : HasDerivAt f2 (f3 t) t) (h3 : HasDerivAt f3 (f4 t) t)
    (hw : f0 t * f2 t - f1 t ^ 2 ≠ 0) :
    HasDerivAt (fun u => (f0 u * f3 u - f1 u * f2 u) /
      (f0 u * f2 u - f1 u ^ 2))
      (f0 t * Matrix.det !![f0 t, f1 t, f2 t; f1 t, f2 t, f3 t;
        f2 t, f3 t, f4 t] / (f0 t * f2 t - f1 t ^ 2) ^ 2) t := by
  convert! ((h0.mul h3).sub (h1.mul h2)).div ((h0.mul h2).sub (h1.pow 2)) hw using 1
  simp [Matrix.det_fin_three]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/7a0ef8ccc1633e676f0faec83e07fbe95825bde6a68d51cf6faece8d2fe90fe1Criterion01Faile/Variant7a0ef8ccc1633e676f0faec83e07fbe95825bde6a68d51cf6faece8d2fe90fe1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/7a0ef8ccc1633e676f0faec83e07fbe95825bde6a68d51cf6faece8d2fe90fe1Criterion01Faile/Variant7a0ef8ccc1633e676f0faec83e07fbe95825bde6a68d51cf6faece8d2fe90fe1.lean#L8).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b72b002e35cffb73fd419f1bb82bf6cb140eecd6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

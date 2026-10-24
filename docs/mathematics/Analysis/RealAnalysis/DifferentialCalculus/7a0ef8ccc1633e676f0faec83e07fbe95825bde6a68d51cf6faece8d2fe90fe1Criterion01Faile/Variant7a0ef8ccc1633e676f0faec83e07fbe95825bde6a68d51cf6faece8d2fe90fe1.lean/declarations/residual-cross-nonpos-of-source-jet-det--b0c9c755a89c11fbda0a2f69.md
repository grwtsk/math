# residual_cross_nonpos_of_source_jet_det

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
      "line": 79,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7a0ef8ccc1633e676f0faec83e07fbe95825bde6a68d51cf6faece8d2fe90fe1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9c1db798-ca07-6753-7147-afb8ad8d7bec",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:28162f56-29e9-3224-66ea-14181e3827e8",
  "kind": "theorem",
  "lexical_name": "residual_cross_nonpos_of_source_jet_det",
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
  "slug": "residual-cross-nonpos-of-source-jet-det--b0c9c755a89c11fbda0a2f69",
  "source": {
    "blob": "b72b002e35cffb73fd419f1bb82bf6cb140eecd6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 79,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/7a0ef8ccc1633e676f0faec83e07fbe95825bde6a68d51cf6faece8d2fe90fe1Criterion01Faile/Variant7a0ef8ccc1633e676f0faec83e07fbe95825bde6a68d51cf6faece8d2fe90fe1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0c9c755a89c11fbda0a2f6909058294003954fc925f4bcb50df9bdaf5adb085",
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

Occurrence: `result:28162f56-29e9-3224-66ea-14181e3827e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_cross_nonpos_of_source_jet_det
    (f0 f1 f2 : ℝ → ℝ) (t u v : ℝ) (hp : 0 ≤ f0 t)
    (hd : Matrix.det !![f0 t, f0 u, f0 v; f1 t, f1 u, f1 v; f2 t, f2 u, f2 v] ≤ 0) :
    (f2 t * f0 v - f0 t * f2 v) * (f1 t * f0 u - f0 t * f1 u) -
      (f2 t * f0 u - f0 t * f2 u) * (f1 t * f0 v - f0 t * f1 v) ≤ 0 := by
  have heq := oriented_plucker_three_scalar
    (f0 t) (f1 t) (f2 t) (f0 u) (f1 u) (f2 u) (f0 v) (f1 v) (f2 v)
  have hprod := mul_nonpos_of_nonneg_of_nonpos hp hd
  simp [Matrix.det_fin_three] at hprod
  nlinarith only [heq, hprod]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/7a0ef8ccc1633e676f0faec83e07fbe95825bde6a68d51cf6faece8d2fe90fe1Criterion01Faile/Variant7a0ef8ccc1633e676f0faec83e07fbe95825bde6a68d51cf6faece8d2fe90fe1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/7a0ef8ccc1633e676f0faec83e07fbe95825bde6a68d51cf6faece8d2fe90fe1Criterion01Faile/Variant7a0ef8ccc1633e676f0faec83e07fbe95825bde6a68d51cf6faece8d2fe90fe1.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b72b002e35cffb73fd419f1bb82bf6cb140eecd6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

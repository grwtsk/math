# aStar_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "41cc13afae8e4e068f991ab1a0d14908c398e1e3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 259,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3fd7fd89639e936ffff88ee34643efb8291a9ef29422f8335192c2ef80ed7c3a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:67c647be-e8cc-8a94-f589-a1ebc7873e75",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:36eacb0f-c012-6e50-1667-d60e738b1a14",
  "kind": "theorem",
  "lexical_name": "aStar_eq",
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
  "slug": "astar-eq--55679ff82e3bfa49911c39ea",
  "source": {
    "blob": "41cc13afae8e4e068f991ab1a0d14908c398e1e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 259,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Functional/Variant3fd7fd89639e936ffff88ee34643efb8291a9ef29422f8335192c2ef80ed7c3a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55679ff82e3bfa49911c39eabb2a58f19ca8a959cf08ee42483c643d788490b5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Functional/Variant3fd7fd89639e936ffff88ee34643efb8291a9ef29422f8335192c2ef80ed7c3a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36eacb0f-c012-6e50-1667-d60e738b1a14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem aStar_eq {lam : ℝ} (h0 : 0 < lam) :
    aStar lam = Real.sqrt 2 * Real.sin (theta lam) / lam := by
  have hs2 : (0:ℝ) < Real.sqrt 2 := by positivity
  have hc : Real.sqrt 2 * lam ≠ 0 := by positivity
  have hsq : Real.sqrt 2 ^ 2 = 2 := Real.sq_sqrt (by norm_num)
  unfold aStar vStar
  rw [intervalIntegral.integral_comp_mul_left Real.cos hc, integral_cos, smul_eq_mul,
    sqrt2_mul_half, sqrt2_mul_neg_half, Real.sin_neg]
  field_simp
  ring_nf
  try rw [hsq]
  try ring

/-- b* = 1/2 + sin(2ϑ)/(4ϑ). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Functional/Variant3fd7fd89639e936ffff88ee34643efb8291a9ef29422f8335192c2ef80ed7c3a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Functional/Variant3fd7fd89639e936ffff88ee34643efb8291a9ef29422f8335192c2ef80ed7c3a.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41cc13afae8e4e068f991ab1a0d14908c398e1e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

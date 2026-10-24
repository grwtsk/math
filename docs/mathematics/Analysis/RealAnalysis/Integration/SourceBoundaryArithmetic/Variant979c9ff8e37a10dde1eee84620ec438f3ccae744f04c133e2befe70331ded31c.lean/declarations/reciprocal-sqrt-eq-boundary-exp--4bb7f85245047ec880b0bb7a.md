# reciprocal_sqrt_eq_boundary_exp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dac4d3faa3684e69bf16c4db86ea5c5e1285c812",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 195,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/979c9ff8e37a10dde1eee84620ec438f3ccae744f04c133e2befe70331ded31c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:de3c1609-4de4-a547-5f84-1a5d75728742",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9a043763-3c29-b78a-b444-20654c2f2600",
  "kind": "theorem",
  "lexical_name": "reciprocal_sqrt_eq_boundary_exp",
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
  "slug": "reciprocal-sqrt-eq-boundary-exp--4bb7f85245047ec880b0bb7a",
  "source": {
    "blob": "dac4d3faa3684e69bf16c4db86ea5c5e1285c812",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 195,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceBoundaryArithmetic/Variant979c9ff8e37a10dde1eee84620ec438f3ccae744f04c133e2befe70331ded31c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4bb7f85245047ec880b0bb7accc32f2c18017c15948660b8475498a59c6dc668",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceBoundaryArithmetic/Variant979c9ff8e37a10dde1eee84620ec438f3ccae744f04c133e2befe70331ded31c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a043763-3c29-b78a-b444-20654c2f2600`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reciprocal_sqrt_eq_boundary_exp (A : ℝ) (n : ℕ) (hn : 0 < n) :
    1 / Real.sqrt n = Real.exp (-A + boundaryDistance A n / 2) := by
  have hn' : (0 : ℝ) < n := by exact_mod_cast hn
  have hsqrt : Real.sqrt n = Real.exp (Real.log n / 2) := by
    rw [Real.exp_half, Real.exp_log hn']
  rw [hsqrt, one_div, ← Real.exp_neg]
  congr 1
  unfold boundaryDistance
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceBoundaryArithmetic/Variant979c9ff8e37a10dde1eee84620ec438f3ccae744f04c133e2befe70331ded31c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceBoundaryArithmetic/Variant979c9ff8e37a10dde1eee84620ec438f3ccae744f04c133e2befe70331ded31c.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dac4d3faa3684e69bf16c4db86ea5c5e1285c812` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

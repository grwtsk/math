# normalized_primitive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4cdf8c86c86d4cd6d6c1e17160e3d6e90cac4bbb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 125,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b26014aad4e0313dd19f270b3fb064f2a2d6892101692efe8a4fcce9255cc633.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8efa65d0-7fb8-bb1f-dd25-8ee44da1e404",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9c3b21d9-3273-2d84-0034-4d7fecfb0275",
  "kind": "theorem",
  "lexical_name": "normalized_primitive",
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
  "slug": "normalized-primitive--0aebf2cc9b28dad0eee3035e",
  "source": {
    "blob": "4cdf8c86c86d4cd6d6c1e17160e3d6e90cac4bbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 125,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variantb26014aad4e0313dd19f270b3fb064f2a2d6892101692efe8a4fcce9255cc633.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0aebf2cc9b28dad0eee3035e30bd314d2c180248da4483ff7af8a6990e856634",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variantb26014aad4e0313dd19f270b3fb064f2a2d6892101692efe8a4fcce9255cc633.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c3b21d9-3273-2d84-0034-4d7fecfb0275`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalized_primitive (A : ℝ) (hA : 0 < A) (z : ℂ) (hz : z ≠ 0) (x : ℝ) :
    HasDerivAt (fun y : ℝ ↦ Complex.exp (z*y) * (fullPrimitive (A:ℂ) z).eval (y:ℂ) /
      (z^9 * ((A:ℂ)^8 * (Real.sqrt A:ℂ))))
      (interior A x * Complex.exp (z*(x:ℂ))) x := by
  have h := (exponential_primitive (A:ℂ) z x).div_const
    (z^9 * ((A:ℂ)^8 * (Real.sqrt A:ℂ)))
  convert h using 1 <;> try rfl
  unfold interior
  have ha : (A:ℂ) ≠ 0 := by exact_mod_cast hA.ne'
  have hs : (Real.sqrt A:ℂ) ≠ 0 := by exact_mod_cast (Real.sqrt_pos.mpr hA).ne'
  field_simp

#print axioms actual_integrable
#print axioms normalized_primitive

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variantb26014aad4e0313dd19f270b3fb064f2a2d6892101692efe8a4fcce9255cc633.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Issue9TransformActual/Variantb26014aad4e0313dd19f270b3fb064f2a2d6892101692efe8a4fcce9255cc633.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cdf8c86c86d4cd6d6c1e17160e3d6e90cac4bbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

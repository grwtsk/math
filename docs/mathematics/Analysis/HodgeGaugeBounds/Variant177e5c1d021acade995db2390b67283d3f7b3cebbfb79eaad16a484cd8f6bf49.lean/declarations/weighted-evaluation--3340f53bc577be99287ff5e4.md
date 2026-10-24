# weighted_evaluation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf4ce069-176b-fe64-6e94-d30775535c27",
  "kind": "theorem",
  "lexical_name": "weighted_evaluation",
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
  "slug": "weighted-evaluation--3340f53bc577be99287ff5e4",
  "source": {
    "blob": "5eca89497c2bd31b653bf4cdc79026581b676288",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 151,
    "path": "GRWTSK/Analysis/HodgeGaugeBounds/Variant177e5c1d021acade995db2390b67283d3f7b3cebbfb79eaad16a484cd8f6bf49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3340f53bc577be99287ff5e4ea92d077137b4471ac888961e137336d5af90f38",
  "verification": {
    "reference": "docs/verification/Analysis/HodgeGaugeBounds/Variant177e5c1d021acade995db2390b67283d3f7b3cebbfb79eaad16a484cd8f6bf49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf4ce069-176b-fe64-6e94-d30775535c27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_evaluation {I : Type*} [Fintype I] (w b : I → ℝ) (i : I)
    (hw : ∀ j, 0 ≤ w j) (hi : 0 < w i) (M : ℝ) (hM : 0 ≤ M)
    (hbound : ∑ j, w j * (b j) ^ 2 ≤ M ^ 2) :
    |b i| ≤ M / Real.sqrt (w i) := by
  have he : w i * b i ^ 2 ≤ ∑ j, w j * b j ^ 2 :=
    Finset.single_le_sum (fun j _ => mul_nonneg (hw j) (sq_nonneg _)) (Finset.mem_univ i)
  have hs := Real.sqrt_pos.mpr hi
  have hsq := Real.sq_sqrt hi.le
  have hp : (|b i| * Real.sqrt (w i)) ^ 2 = w i * b i ^ 2 := by
    rw [mul_pow, sq_abs, hsq]
    ring
  have hm : |b i| * Real.sqrt (w i) ≤ M := by
    nlinarith [mul_nonneg (abs_nonneg (b i)) hs.le]
  exact (le_div_iff₀ hs).mpr hm

end
end FormalResearch.PositiveAtlas.HodgeGaugeBounds
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/HodgeGaugeBounds/Variant177e5c1d021acade995db2390b67283d3f7b3cebbfb79eaad16a484cd8f6bf49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HodgeGaugeBounds/Variant177e5c1d021acade995db2390b67283d3f7b3cebbfb79eaad16a484cd8f6bf49.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5eca89497c2bd31b653bf4cdc79026581b676288` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

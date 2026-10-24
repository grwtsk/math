# tmLog1p_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:de6edbb3-003f-1488-6c27-0e8384ef4775",
  "kind": "theorem",
  "lexical_name": "tmLog1p_correct",
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
  "slug": "tmlog1p-correct--534357e4cea39080e08f6fab",
  "source": {
    "blob": "bf9e8892b67e403f0ebaf17412bc3ebafbeb336d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 363,
    "line": 311,
    "path": "GRWTSK/Topology/GeneralTopology/Log1p/Variant97370675a9327a6f3de4b8ee3de3c85da8524f43365148b77eeef5c794a8f0c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:534357e4cea39080e08f6fabd86d1a73bad18dd420fa78d6f0dcb2fea8275892",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Log1p/Variant97370675a9327a6f3de4b8ee3de3c85da8524f43365148b77eeef5c794a8f0c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de6edbb3-003f-1488-6c27-0e8384ef4775`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–363.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tmLog1p_correct (J : IntervalRat) (n : ℕ)
    (tm : TaylorModel) (h : tmLog1p J n = some tm) :
    ∀ z : ℝ, z ∈ J → Real.log (1 + z) ∈ tm.evalSet z := by
  intro z hz
  simp only [tmLog1p] at h
  split_ifs at h with hdom
  simp only [Option.some.injEq] at h
  subst h
  simp only [evalSet, Set.mem_setOf_eq]
  -- For log(1+z) centered at 0:
  -- - Taylor polynomial: Σ_{k=1}^n (-1)^(k+1) z^k / k
  -- - Remainder: log(1+z) - Σ_{k=1}^n (-1)^(k+1) z^k / k
  -- - log(1+0) = log(1) = 0, so no center approximation error
  let poly := log1pTaylorPoly n
  let rem := log1pLagrangeRemainder J n
  let r := Real.log (1 + z) - Polynomial.aeval z (poly.map (algebraMap ℚ ℝ))
  refine ⟨r, ?_, ?_⟩
  · -- Show r ∈ [-rem, rem]
    simp only [IntervalRat.mem_def, Rat.cast_neg]
    -- Use log1p_taylor_remainder_bound to bound |r|
    have hbound := log1p_taylor_remainder_bound J n z hdom hz
    simp only [r, poly] at hbound ⊢
    rw [abs_le] at hbound
    exact hbound
  · -- Show log(1+z) = poly.aeval z + r
    simp only [r, poly]
    rw [Polynomial.aeval_map_algebraMap]
    ring_nf

/-! ### Symmetric combination bound for li(x)

The key insight: g(t) = 1/log(1+t) + 1/log(1-t) is bounded for t ∈ (0, 1).

Algebraically:
  g(t) = [log(1-t) + log(1+t)] / [log(1+t) · log(1-t)]
       = log(1-t²) / [log(1+t) · log(1-t)]

Using Taylor expansions:
  log(1+t) = t - t²/2 + t³/3 - ...
  log(1-t) = -t - t²/2 - t³/3 - ...
  log(1-t²) = -t² - t⁴/2 - t⁶/3 - ...

Numerator: log(1-t²) = -t² · (1 + t²/2 + t⁴/3 + ...)
Denominator: log(1+t) · log(1-t) = (t - t²/2 + ...)(-t - t²/2 - ...)
           = -t² + t⁴/4 + ... = -t² · (1 - t²/4 - ...)

So g(t) = [-t² · (1 + O(t²))] / [-t² · (1 + O(t²))] = 1 + O(t²)

More precisely: g(t) = [1 + t²/2 + O(t⁴)] / [1 - t²/4 + O(t⁴)] → 1 as t → 0
-/

/-- The symmetric combination g(t) = 1/log(1+t) + 1/log(1-t).
    This is well-defined for t ∈ (0, 1) despite the apparent singularity at t = 0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Log1p/Variant97370675a9327a6f3de4b8ee3de3c85da8524f43365148b77eeef5c794a8f0c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Log1p/Variant97370675a9327a6f3de4b8ee3de3c85da8524f43365148b77eeef5c794a8f0c6.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf9e8892b67e403f0ebaf17412bc3ebafbeb336d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

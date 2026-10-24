# ContDiffOn.continuousOn_fderiv_of_isOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4c845e7e-e314-0887-4686-b9d266089916",
  "kind": "theorem",
  "lexical_name": "ContDiffOn.continuousOn_fderiv_of_isOpen",
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
  "slug": "contdiffon-continuouson-fderiv-of-isopen--8bb87bb1a45ccc80aeaf7d7f",
  "source": {
    "blob": "8bb249814803ca9dedf71798af7e350c7033041a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 944,
    "line": 925,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantb19f598d60a264ddbe2e739c920148904124ff8a79dd1499a4430baba5e56d67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8bb87bb1a45ccc80aeaf7d7f1a03bfc299fccbb6b13ed71801300254c6c9ad3e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantb19f598d60a264ddbe2e739c920148904124ff8a79dd1499a4430baba5e56d67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c845e7e-e314-0887-4686-b9d266089916`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 925–944.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContDiffOn.continuousOn_fderiv_of_isOpen (h : ContDiffOn 𝕜 n f s) (hs : IsOpen s)
    (hn : 1 ≤ n) : ContinuousOn (fderiv 𝕜 f) s :=
  ((contDiffOn_succ_iff_fderiv_of_isOpen hs).1
    (h.of_le (show 0 + (1 : ℕ∞ω) ≤ n from hn))).2.2.continuousOn

/-! ### Smooth functions at a point -/

variable (𝕜) in
/-- A function is continuously differentiable up to `n` at a point `x` if, for any integer `k ≤ n`,
there is a neighborhood of `x` where `f` admits derivatives up to order `n`, which are continuous.
The parameter `n` belongs to `ℕ∞ω` (accessible in the `ContDiff` scope), i.e. it can be a natural
number, `∞`, or `ω`.

For `n = ∞`, we only require that this holds up to any finite order (where the neighborhood may
depend on the finite order we consider).
For `n = ω`, we require the function to be analytic at `x`. The precise
definition we give (all the derivatives should be analytic) is more involved to work around issues
when the space is not complete, but it is equivalent when the space is complete.
-/
@[fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantb19f598d60a264ddbe2e739c920148904124ff8a79dd1499a4430baba5e56d67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantb19f598d60a264ddbe2e739c920148904124ff8a79dd1499a4430baba5e56d67.lean#L925).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bb249814803ca9dedf71798af7e350c7033041a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

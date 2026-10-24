# zero_iff_nonpos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c7052aea-87d0-2af2-24cd-e0b27edce8d6",
  "kind": "theorem",
  "lexical_name": "zero_iff_nonpos",
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
  "slug": "zero-iff-nonpos--db48ca8fae8d2c40fb613779",
  "source": {
    "blob": "b6f4839f54563df33db4895329bbba1bfd9d8c10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 63,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant49f2e17083d83718568f96f86bf45d9f04d25e1228bbcf07aee7f0409f238f73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db48ca8fae8d2c40fb61377965c6c93cce3cd15cf6007ac60977007761c806a9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant49f2e17083d83718568f96f86bf45d9f04d25e1228bbcf07aee7f0409f238f73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7052aea-87d0-2af2-24cd-e0b27edce8d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem zero_iff_nonpos {x : ℝ} : expNegInvGlue x = 0 ↔ x ≤ 0 :=
  ⟨fun h ↦ not_lt.mp fun h' ↦ (pos_of_pos h').ne' h, zero_of_nonpos⟩

/-!
### Smoothness of `expNegInvGlue`

In this section we prove that the function `f = expNegInvGlue` is infinitely smooth. To do
this, we show that $g_p(x)=p(x^{-1})f(x)$ is infinitely smooth for any polynomial `p` with real
coefficients. First we show that $g_p(x)$ tends to zero at zero, then we show that it is
differentiable with derivative $g_p'=g_{x^2(p-p')}$. Finally, we prove smoothness of $g_p$ by
induction, then deduce smoothness of $f$ by setting $p=1$.
-/

/-- Our function tends to zero at zero faster than any $P(x^{-1})$, $P∈ℝ[X]$, tends to infinity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant49f2e17083d83718568f96f86bf45d9f04d25e1228bbcf07aee7f0409f238f73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant49f2e17083d83718568f96f86bf45d9f04d25e1228bbcf07aee7f0409f238f73.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6f4839f54563df33db4895329bbba1bfd9d8c10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

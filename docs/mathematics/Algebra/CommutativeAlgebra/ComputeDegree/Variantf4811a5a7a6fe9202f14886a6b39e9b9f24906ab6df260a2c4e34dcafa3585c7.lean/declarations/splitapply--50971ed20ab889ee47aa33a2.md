# splitApply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:27ba6902d1e6b7be8a7a5174f1c3f786924d052f341cac1e51ae2ea0edb30c01",
  "kind": "def",
  "lexical_name": "splitApply",
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
  "slug": "splitapply--50971ed20ab889ee47aa33a2",
  "source": {
    "blob": "ba2e8c8da198f8aee873714934135d9e06d6bb94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 413,
    "line": 385,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ComputeDegree/Variantf4811a5a7a6fe9202f14886a6b39e9b9f24906ab6df260a2c4e34dcafa3585c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:50971ed20ab889ee47aa33a28f4c8f19e1c1c22db90a767b6de4e830bd2091df",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ComputeDegree/Variantf4811a5a7a6fe9202f14886a6b39e9b9f24906ab6df260a2c4e34dcafa3585c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:27ba6902d1e6b7be8a7a5174f1c3f786924d052f341cac1e51ae2ea0edb30c01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 385–413.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def splitApply (mvs static : List MVarId) : MetaM ((List MVarId) × (List MVarId)) := do
  let (can_progress, curr_static) := ← mvs.partitionM fun mv => do
    return dispatchLemma (twoHeadsArgs (← mv.getType'')) != ``id
  let progress := ← can_progress.mapM fun mv => do
    let lem := dispatchLemma <| twoHeadsArgs (← mv.getType'')
    mv.applyConst <| lem
  return (progress.flatten, static ++ curr_static)

/-- `miscomputedDegree? deg false_goals` takes as input
*  an `Expr`ession `deg`, representing the degree of a polynomial
  (i.e. an `Expr`ession of inferred type either `ℕ` or `WithBot ℕ`);
*  a list of `MVarId`s `false_goals`.

Although inconsequential for this function, the list of goals `false_goals` reduces to `False`
if `norm_num`med.
`miscomputedDegree?` extracts error information from goals of the form
*  `a ≠ b`, assuming it comes from `⊢ coeff_of_given_degree ≠ 0`
  --- reducing to `False` means that the coefficient that was supposed to vanish, does not;
*  `a ≤ b`, assuming it comes from `⊢ degree_of_subterm ≤ degree_of_polynomial`
  --- reducing to `False` means that there is a term of degree that is apparently too large;
*  `a = b`, assuming it comes from `⊢ computed_degree ≤ given_degree`
  --- reducing to `False` means that there is a term of degree that is apparently too large.

The cases `a ≠ b` and `a = b` are not a perfect match with the top coefficient:
reducing to `False` is not exactly correlated with a coefficient being non-zero.
It does mean that `compute_degree` reduced the initial goal to an unprovable state
(unless there was already a contradiction in the initial hypotheses!), but it is indicative that
there may be some problem.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ComputeDegree/Variantf4811a5a7a6fe9202f14886a6b39e9b9f24906ab6df260a2c4e34dcafa3585c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ComputeDegree/Variantf4811a5a7a6fe9202f14886a6b39e9b9f24906ab6df260a2c4e34dcafa3585c7.lean#L385).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba2e8c8da198f8aee873714934135d9e06d6bb94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# closedBall_openSubgroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4d372545e2d54f582047ea44331e03c56819118c1ab1c5d07a175a5b6c853110",
  "kind": "def",
  "lexical_name": "closedBall_openSubgroup",
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
  "slug": "closedball-opensubgroup--a758e3650306ae47d9685972",
  "source": {
    "blob": "0836685939216f72a45578b8e2258ebbc3374ca1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 176,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Ultra/Variantb719c51a902980cd3656333e212a23d7efafde48a564628a8757df046910d45b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a758e3650306ae47d96859723b52195953deef2911308067c6a8b937c139dfee",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Ultra/Variantb719c51a902980cd3656333e212a23d7efafde48a564628a8757df046910d45b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4d372545e2d54f582047ea44331e03c56819118c1ab1c5d07a175a5b6c853110`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def closedBall_openSubgroup {r : ℝ} (hr : 0 < r) : OpenSubgroup S where
  carrier := Metric.closedBall (1 : S) r
  mul_mem' {x} {y} hx hy := by
    simp only [Metric.mem_closedBall, dist_eq_norm_div, div_one] at hx hy ⊢
    exact (norm_mul_le_max x y).trans (max_le hx hy)
  one_mem' := Metric.mem_closedBall_self hr.le
  inv_mem' := by simp only [mem_closedBall, dist_one_right, norm_inv', imp_self, implies_true]
  isOpen' := IsUltrametricDist.isOpen_closedBall _ hr.ne'

end nonarch

end Group

section CommGroup

variable {M ι : Type*} [SeminormedCommGroup M] [IsUltrametricDist M]

/-- A commutative group with an ultrametric group seminorm is nonarchimedean (as a topological
group, i.e. every neighborhood of 1 contains an open subgroup). -/
@[to_additive "A commutative additive group with an ultrametric group seminorm is nonarchimedean
(as a topological group, i.e. every neighborhood of 0 contains an open subgroup)."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Ultra/Variantb719c51a902980cd3656333e212a23d7efafde48a564628a8757df046910d45b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Ultra/Variantb719c51a902980cd3656333e212a23d7efafde48a564628a8757df046910d45b.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0836685939216f72a45578b8e2258ebbc3374ca1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

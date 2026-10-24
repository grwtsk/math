# sum_smul_eq_zero_of_isTrivialRelation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:22a8d937-d7a5-ac83-9a30-6f3a5da64972",
  "kind": "theorem",
  "lexical_name": "sum_smul_eq_zero_of_isTrivialRelation",
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
  "slug": "sum-smul-eq-zero-of-istrivialrelation--3cd66edb7da72120e71c01cb",
  "source": {
    "blob": "64b398043cd825681679fecfc844744aca33de98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 97,
    "path": "GRWTSK/Algebra/LinearAlgebra/EquationalCriterion/Variant15637e3984b8c716ac4a440ed3ea19edf95132b82beb619e93136c78a86506a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3cd66edb7da72120e71c01cb7271ab5e0911e313b23c24b36b7ee5bd14d76e34",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/EquationalCriterion/Variant15637e3984b8c716ac4a440ed3ea19edf95132b82beb619e93136c78a86506a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22a8d937-d7a5-ac83-9a30-6f3a5da64972`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_smul_eq_zero_of_isTrivialRelation (h : IsTrivialRelation f x) :
    ∑ i, f i • x i = 0 := by
  simpa using
    congr_arg (TensorProduct.lid R M) <|
      sum_tmul_eq_zero_of_vanishesTrivially R (isTrivialRelation_iff_vanishesTrivially.mp h)

end Module

namespace Module.Flat

variable (R M) in
/-- **Equational criterion for flatness**, combined form.

Let $M$ be a module over a commutative ring $R$. The following are equivalent:
* $M$ is flat.
* For all ideals $I \subseteq R$, the map $I \otimes M \to M$ is injective.
* Every $\sum_i f_i \otimes x_i$ that vanishes in $R \otimes M$ vanishes trivially.
* Every relation $\sum_i f_i x_i = 0$ in $M$ is trivial.
* For all finite free modules $R^l$, all elements $f \in R^l$, and all linear maps
$x \colon R^l \to M$ such that $x(f) = 0$, there exist a finite free module $R^k$ and
linear maps $a \colon R^l \to R^k$ and $y \colon R^k \to M$ such
that $x = y \circ a$ and $a(f) = 0$.
-/
@[stacks 00HK, stacks 058D "(1) ↔ (2)"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/EquationalCriterion/Variant15637e3984b8c716ac4a440ed3ea19edf95132b82beb619e93136c78a86506a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/EquationalCriterion/Variant15637e3984b8c716ac4a440ed3ea19edf95132b82beb619e93136c78a86506a7.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64b398043cd825681679fecfc844744aca33de98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

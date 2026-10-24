# Anonymous elab

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d0e2468f4cc12a7631fc9702b6687f84a0236131a1cfa6ccd9ddfcc0b9aadcd1",
  "kind": "elab",
  "lexical_name": null,
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
  "slug": "elab--7d6cc2a756f9698f2cd3ef6c",
  "source": {
    "blob": "8d15f818aa9f4a5e159709c4f5d2d14c0b7548f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 649,
    "line": 620,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantcca9606dd7369c9cc3fa3782a27320e97cfba79a29021595bf883ebbeb225532.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7d6cc2a756f9698f2cd3ef6c5d8185839179f42fd7a750846d8ded9ac6b354db",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantcca9606dd7369c9cc3fa3782a27320e97cfba79a29021595bf883ebbeb225532.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d0e2468f4cc12a7631fc9702b6687f84a0236131a1cfa6ccd9ddfcc0b9aadcd1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 620–649.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
elab "match_scalars" : tactic => Tactic.liftMetaTactic matchScalars

/-- Given a goal which is an equality in a type `M` (with `M` an `AddCommMonoid`), parse the LHS and
RHS of the goal as linear combinations of `M`-atoms over some commutative semiring `R`, and prove
the goal by checking that the LHS- and RHS-coefficients of each atom are the same up to
ring-normalization in `R`.

(If the proofs of coefficient-wise equality will require more reasoning than just
ring-normalization, use the tactic `match_scalars` instead, and then prove coefficient-wise equality
by hand.)

Example uses of the `module` tactic:
```
example [AddCommMonoid M] [CommSemiring R] [Module R M] (a b : R) (x : M) :
    a • x + b • x = (b + a) • x := by
  module

example [AddCommMonoid M] [Field K] [CharZero K] [Module K M] (x : M) :
    (2:K)⁻¹ • x + (3:K)⁻¹ • x + (6:K)⁻¹ • x = x := by
  module

example [AddCommGroup M] [CommRing R] [Module R M] (a : R) (v w : M) :
    (1 + a ^ 2) • (v + w) - a • (a • v - w) = v + (1 + a + a ^ 2) • w := by
  module

example [AddCommGroup M] [CommRing R] [Module R M] (a b μ ν : R) (x y : M) :
    (μ - ν) • a • x = (a • μ • x + b • ν • y) - ν • (a • x + b • y) := by
  module
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantcca9606dd7369c9cc3fa3782a27320e97cfba79a29021595bf883ebbeb225532.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantcca9606dd7369c9cc3fa3782a27320e97cfba79a29021595bf883ebbeb225532.lean#L620).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d15f818aa9f4a5e159709c4f5d2d14c0b7548f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

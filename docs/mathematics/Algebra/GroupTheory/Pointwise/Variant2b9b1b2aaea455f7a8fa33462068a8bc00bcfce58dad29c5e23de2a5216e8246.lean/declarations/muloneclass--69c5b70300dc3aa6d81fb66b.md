# mulOneClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ba87b93976fc71bdec84004ccbcfbedecb7c6b15163ab06218aefcc8d47b045f",
  "kind": "def",
  "lexical_name": "mulOneClass",
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
  "slug": "muloneclass--69c5b70300dc3aa6d81fb66b",
  "source": {
    "blob": "34199fddbd2fe7c16c35e3509d6914da7a20b629",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 231,
    "path": "GRWTSK/Algebra/GroupTheory/Pointwise/Variant2b9b1b2aaea455f7a8fa33462068a8bc00bcfce58dad29c5e23de2a5216e8246.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:69c5b70300dc3aa6d81fb66bdbad375f4a4a0a2c6f490f23b084b3b7db3cffcf",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Pointwise/Variant2b9b1b2aaea455f7a8fa33462068a8bc00bcfce58dad29c5e23de2a5216e8246.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ba87b93976fc71bdec84004ccbcfbedecb7c6b15163ab06218aefcc8d47b045f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def mulOneClass : MulOneClass (AddSubmonoid R) where
  one_mul M := by rw [one_eq_closure_one_set, ← closure_eq M, closure_mul_closure, one_mul]
  mul_one M := by rw [one_eq_closure_one_set, ← closure_eq M, closure_mul_closure, mul_one]

scoped[Pointwise] attribute [instance] AddSubmonoid.mulOneClass

end NonAssocSemiring

section NonUnitalSemiring
variable [NonUnitalSemiring R]

/-- Semigroup structure on additive submonoids of a (possibly, non-unital) semiring. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Pointwise/Variant2b9b1b2aaea455f7a8fa33462068a8bc00bcfce58dad29c5e23de2a5216e8246.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Pointwise/Variant2b9b1b2aaea455f7a8fa33462068a8bc00bcfce58dad29c5e23de2a5216e8246.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34199fddbd2fe7c16c35e3509d6914da7a20b629` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

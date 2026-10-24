# instMulOneClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:00a7362197ea2853ea8726f43fa4f9ec97bedd665f84ee2b53aed4a27afcf471",
  "kind": "instance",
  "lexical_name": "instMulOneClass",
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
  "slug": "instmuloneclass--2e96b5f3977845035d5e9423",
  "source": {
    "blob": "f9c92df87edba1a7978358a785dbab0dc0256d67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 431,
    "line": 420,
    "path": "GRWTSK/Algebra/LinearAlgebra/Unitization/Variantb4ee6f66307d594a13f57a0a2b48c230d135f0a1719066901ae1b19e5b15a710.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2e96b5f3977845035d5e94238d2224fe21859e4426287c68b952169884f7a757",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Unitization/Variantb4ee6f66307d594a13f57a0a2b48c230d135f0a1719066901ae1b19e5b15a710.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:00a7362197ea2853ea8726f43fa4f9ec97bedd665f84ee2b53aed4a27afcf471`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 420–431.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instMulOneClass [Monoid R] [NonUnitalNonAssocSemiring A] [DistribMulAction R A] :
    MulOneClass (Unitization R A) :=
  { Unitization.instOne, Unitization.instMul with
    one_mul := fun x =>
      ext (one_mul x.1) <|
        show (1 : R) • x.2 + x.1 • (0 : A) + 0 * x.2 = x.2 by
          rw [one_smul, smul_zero, add_zero, zero_mul, add_zero]
    mul_one := fun x =>
      ext (mul_one x.1) <|
        show (x.1 • (0 : A)) + (1 : R) • x.2 + x.2 * (0 : A) = x.2 by
          rw [smul_zero, zero_add, one_smul, mul_zero, add_zero] }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Unitization/Variantb4ee6f66307d594a13f57a0a2b48c230d135f0a1719066901ae1b19e5b15a710.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Unitization/Variantb4ee6f66307d594a13f57a0a2b48c230d135f0a1719066901ae1b19e5b15a710.lean#L420).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9c92df87edba1a7978358a785dbab0dc0256d67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

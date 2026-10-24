# isTorsion_of_aeval_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:53d4803f-789c-6f2a-bfb3-4ca3928117eb",
  "kind": "theorem",
  "lexical_name": "isTorsion_of_aeval_eq_zero",
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
  "slug": "istorsion-of-aeval-eq-zero--fd63d3ed5ca2fe3babb9b87e",
  "source": {
    "blob": "545e86fcfe58f039dcdfdb1048b3ad87f7697592",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 37,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/FiniteDimensional/Variant34320e6a70d23d5b509dc0bb85a7785d174d8d5cc784eeb772048a6de4acb828.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd63d3ed5ca2fe3babb9b87e6269a28e26af8332494874b31fc68c28e37243db",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/FiniteDimensional/Variant34320e6a70d23d5b509dc0bb85a7785d174d8d5cc784eeb772048a6de4acb828.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53d4803f-789c-6f2a-bfb3-4ca3928117eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isTorsion_of_aeval_eq_zero [CommSemiring R] [NoZeroDivisors R] [Semiring A] [Algebra R A]
    [AddCommMonoid M] [Module A M] [Module R M] [IsScalarTower R A M]
    {p : R[X]} (h : aeval a p = 0) (h' : p ≠ 0) :
    IsTorsion R[X] (AEval R M a) := by
  have hp : p ∈ nonZeroDivisors R[X] := fun q hq ↦ Or.resolve_right (mul_eq_zero.mp hq) h'
  exact fun x ↦ ⟨⟨p, hp⟩, (of R M a).symm.injective <| by simp [h]⟩

variable (K M a)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/FiniteDimensional/Variant34320e6a70d23d5b509dc0bb85a7785d174d8d5cc784eeb772048a6de4acb828.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/FiniteDimensional/Variant34320e6a70d23d5b509dc0bb85a7785d174d8d5cc784eeb772048a6de4acb828.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `545e86fcfe58f039dcdfdb1048b3ad87f7697592` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

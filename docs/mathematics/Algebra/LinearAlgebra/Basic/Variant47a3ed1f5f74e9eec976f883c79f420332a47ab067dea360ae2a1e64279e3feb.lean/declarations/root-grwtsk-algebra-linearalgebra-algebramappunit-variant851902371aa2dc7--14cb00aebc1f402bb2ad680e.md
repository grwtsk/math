# _root_.GRWTSK.Algebra.LinearAlgebra.AlgebraMapPUnit.Variant851902371aa2dc7f9ee1f3041a6d1f4abe1e174164abcf55c59c266f52aaf031.NeZero.of_faithfulSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1200d8b0-1bbc-b959-dcc7-1a88987bfd9c",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.AlgebraMapPUnit.Variant851902371aa2dc7f9ee1f3041a6d1f4abe1e174164abcf55c59c266f52aaf031.NeZero.of_faithfulSMul",
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
  "slug": "root-grwtsk-algebra-linearalgebra-algebramappunit-variant851902371aa2dc7--14cb00aebc1f402bb2ad680e",
  "source": {
    "blob": "c99fbf6d09c94f85f896912c5e32a225e8dbc640",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 336,
    "line": 329,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant47a3ed1f5f74e9eec976f883c79f420332a47ab067dea360ae2a1e64279e3feb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14cb00aebc1f402bb2ad680e9392dba0c491035d6d8aaaa9beb25e7d40104ac3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant47a3ed1f5f74e9eec976f883c79f420332a47ab067dea360ae2a1e64279e3feb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1200d8b0-1bbc-b959-dcc7-1a88987bfd9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–336.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.LinearAlgebra.AlgebraMapPUnit.Variant851902371aa2dc7f9ee1f3041a6d1f4abe1e174164abcf55c59c266f52aaf031.NeZero.of_faithfulSMul (R A : Type*) [Semiring R] [Semiring A] [Module R A]
    [IsScalarTower R A A] [FaithfulSMul R A] (n : ℕ) [NeZero (n : R)] :
    NeZero (n : A) :=
  NeZero.nat_of_injective (f := ringHomEquivModuleIsScalarTower.symm ⟨_, ‹_›⟩) <|
    (faithfulSMul_iff_injective_smul_one R A).mp ‹_›

variable (R A : Type*) [CommSemiring R] [Semiring A] [Algebra R A]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant47a3ed1f5f74e9eec976f883c79f420332a47ab067dea360ae2a1e64279e3feb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant47a3ed1f5f74e9eec976f883c79f420332a47ab067dea360ae2a1e64279e3feb.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c99fbf6d09c94f85f896912c5e32a225e8dbc640` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

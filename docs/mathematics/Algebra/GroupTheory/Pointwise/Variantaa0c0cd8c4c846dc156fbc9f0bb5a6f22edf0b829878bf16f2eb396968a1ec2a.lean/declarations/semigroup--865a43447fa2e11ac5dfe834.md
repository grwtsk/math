# semiGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cb9377c446486491952eb7d7a00ed5d6397351a02bfe547665e84c3bb3c6dfbf",
  "kind": "instance",
  "lexical_name": "semiGroup",
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
  "slug": "semigroup--865a43447fa2e11ac5dfe834",
  "source": {
    "blob": "f4da9a084b9b1299e4858814c50348f6b58af932",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 111,
    "path": "GRWTSK/Algebra/GroupTheory/Pointwise/Variantaa0c0cd8c4c846dc156fbc9f0bb5a6f22edf0b829878bf16f2eb396968a1ec2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:865a43447fa2e11ac5dfe8341ead27afd554a12163df6c4ccd02745169358470",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Pointwise/Variantaa0c0cd8c4c846dc156fbc9f0bb5a6f22edf0b829878bf16f2eb396968a1ec2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cb9377c446486491952eb7d7a00ed5d6397351a02bfe547665e84c3bb3c6dfbf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance semiGroup : Semigroup (SubMulAction R M)
    where
  mul := (· * ·)
  mul_assoc _ _ _ := SetLike.coe_injective (mul_assoc (_ : Set _) _ _)

end Semigroup

section Monoid

variable [Monoid R] [MulAction R M] [Monoid M] [IsScalarTower R M M] [SMulCommClass R M M]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Pointwise/Variantaa0c0cd8c4c846dc156fbc9f0bb5a6f22edf0b829878bf16f2eb396968a1ec2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Pointwise/Variantaa0c0cd8c4c846dc156fbc9f0bb5a6f22edf0b829878bf16f2eb396968a1ec2a.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4da9a084b9b1299e4858814c50348f6b58af932` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

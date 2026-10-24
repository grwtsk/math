# Grassmannian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:252540c6fe458278e27e8b9c9d1dbf4fc53e776b4f4c18204bd00f16ba0122e1",
  "kind": "structure",
  "lexical_name": "Grassmannian",
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
  "slug": "grassmannian--801a56db8d852254ea6f2087",
  "source": {
    "blob": "e37872dda061df4cf00c39ea94c3dbc366d49a5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 68,
    "path": "GRWTSK/Algebra/LinearAlgebra/Grassmannian/Variant5f67476352831a3a534a86d8baa798ed2af2c20e47d57849a6bdb8746b339011.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:801a56db8d852254ea6f208739e4d3a3d36d5bffbb69ea2d8d9634971aef19c5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Grassmannian/Variant5f67476352831a3a534a86d8baa798ed2af2c20e47d57849a6bdb8746b339011.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:252540c6fe458278e27e8b9c9d1dbf4fc53e776b4f4c18204bd00f16ba0122e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[stacks 089R] structure Grassmannian extends Submodule R M where
  finite_quotient : Module.Finite R (M ⧸ toSubmodule)
  projective_quotient : Projective R (M ⧸ toSubmodule)
  rankAtStalk_eq : ∀ p, rankAtStalk (R := R) (M ⧸ toSubmodule) p = k

attribute [instance] Grassmannian.finite_quotient Grassmannian.projective_quotient

namespace Grassmannian

@[inherit_doc] scoped notation "G(" k ", " M "; " R ")" => Grassmannian R M k

variable {R M k}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Grassmannian/Variant5f67476352831a3a534a86d8baa798ed2af2c20e47d57849a6bdb8746b339011.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Grassmannian/Variant5f67476352831a3a534a86d8baa798ed2af2c20e47d57849a6bdb8746b339011.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e37872dda061df4cf00c39ea94c3dbc366d49a5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

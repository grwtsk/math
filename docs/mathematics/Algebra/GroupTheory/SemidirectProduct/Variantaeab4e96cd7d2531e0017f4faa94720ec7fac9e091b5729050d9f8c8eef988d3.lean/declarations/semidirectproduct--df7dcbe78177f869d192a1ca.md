# SemidirectProduct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1aed165238c917fc7047c138a148856964663c218b9b823a5bfced328bfa954e",
  "kind": "structure",
  "lexical_name": "SemidirectProduct",
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
  "slug": "semidirectproduct--df7dcbe78177f869d192a1ca",
  "source": {
    "blob": "6eee6b88295a2404cc78250bccb8979a79ca1821",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 50,
    "path": "GRWTSK/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:df7dcbe78177f869d192a1caf5bf4f512b720e7c3cce575ad991b4db723a5fd2",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1aed165238c917fc7047c138a148856964663c218b9b823a5bfced328bfa954e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SemidirectProduct (φ : G →* MulAut N) where
  /-- The element of N -/
  left : N
  /-- The element of G -/
  right : G
  deriving DecidableEq

-- Porting note: unknown attribute
-- attribute [pp_using_anonymous_constructor] SemidirectProduct

@[inherit_doc]
notation:35 N " ⋊[" φ:35 "] " G:35 => SemidirectProduct N G φ

namespace SemidirectProduct

variable {N G}
variable {φ : G →* MulAut N}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6eee6b88295a2404cc78250bccb8979a79ca1821` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

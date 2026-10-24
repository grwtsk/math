# Traversable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2e3fd5f6adca816b8ed47f38c1653c54b661f7dfad93a7348389da527e3554b3",
  "kind": "class",
  "lexical_name": "Traversable",
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
  "slug": "traversable--ab96f5ec7302a31cfd94fb31",
  "source": {
    "blob": "8fa18d23e788e66308f42ea4f494dcdd822271c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 218,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant7501322dee101cd7c2729f0f7fa34c43df8979a5e17e97273561c686123869ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ab96f5ec7302a31cfd94fb31ba61abd5a4d1264d11309e5d78efcbb485f17e0d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant7501322dee101cd7c2729f0f7fa34c43df8979a5e17e97273561c686123869ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2e3fd5f6adca816b8ed47f38c1653c54b661f7dfad93a7348389da527e3554b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class Traversable (t : Type u → Type u) extends Functor t where
  /-- The function commuting a traversable functor `t` with an arbitrary applicative functor `m`. -/
  traverse : ∀ {m : Type u → Type u} [Applicative m] {α β}, (α → m β) → t α → m (t β)
#align traversable Traversable

open Functor

export Traversable (traverse)

section Functions

variable {t : Type u → Type u}

variable {m : Type u → Type v} [Applicative m]

variable {α β : Type u}

variable {f : Type u → Type u} [Applicative f]

/-- A traversable functor commutes with all applicative functors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant7501322dee101cd7c2729f0f7fa34c43df8979a5e17e97273561c686123869ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant7501322dee101cd7c2729f0f7fa34c43df8979a5e17e97273561c686123869ca.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8fa18d23e788e66308f42ea4f494dcdd822271c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

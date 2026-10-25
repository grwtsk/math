# LawfulAlternativeLift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a58fcafb21ebf3857cce463d8873415eb6d08033ef4e082484bd7995b1c48c28",
  "kind": "class",
  "lexical_name": "LawfulAlternativeLift",
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
  "slug": "lawfulalternativelift--e78c28249b43e59b7d95ea90",
  "source": {
    "blob": "2758b3ba077951827d87394be3edf7e3a668ae53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 105,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant610a486a1b440ce0e8a3cd9df1f35c4721329eb275f93d96b9f9ddafc0d32e42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e78c28249b43e59b7d95ea900cb769c21ce00a6894da574c8bdbf72bb8ed2ad3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant610a486a1b440ce0e8a3cd9df1f35c4721329eb275f93d96b9f9ddafc0d32e42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a58fcafb21ebf3857cce463d8873415eb6d08033ef4e082484bd7995b1c48c28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class LawfulAlternativeLift (m : semiOutParam (Type u → Type v)) (n : Type u → Type w)
    [Alternative m] [Alternative n] [MonadLift m n] : Prop where
  /-- Lifting preserves `failure`. -/
  monadLift_failure : monadLift (failure : m α) = (failure : n α)
  /-- Lifting preserves `orElse`. -/
  monadLift_orElse (x y : m α) : monadLift (x <|> y) = (monadLift x <|> monadLift y : n α)

export LawfulAlternativeLift (monadLift_failure monadLift_orElse)
attribute [simp] monadLift_failure monadLift_orElse

namespace Option

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant610a486a1b440ce0e8a3cd9df1f35c4721329eb275f93d96b9f9ddafc0d32e42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant610a486a1b440ce0e8a3cd9df1f35c4721329eb275f93d96b9f9ddafc0d32e42.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2758b3ba077951827d87394be3edf7e3a668ae53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

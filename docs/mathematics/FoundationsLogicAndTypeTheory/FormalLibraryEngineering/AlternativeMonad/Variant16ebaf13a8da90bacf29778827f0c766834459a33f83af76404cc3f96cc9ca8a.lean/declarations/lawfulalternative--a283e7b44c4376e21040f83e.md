# LawfulAlternative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a0da5b55bfec4249c6e9c81199479670e0d5f8275247be6a3ee600d35ed83140",
  "kind": "class",
  "lexical_name": "LawfulAlternative",
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
  "slug": "lawfulalternative--a283e7b44c4376e21040f83e",
  "source": {
    "blob": "eea00fd7e601cac63ee9ca51d0c0f558c0e37d98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 55,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant16ebaf13a8da90bacf29778827f0c766834459a33f83af76404cc3f96cc9ca8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a283e7b44c4376e21040f83efeacbdf95b6f9b8c48deaf1db0cc12ca99108535",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant16ebaf13a8da90bacf29778827f0c766834459a33f83af76404cc3f96cc9ca8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a0da5b55bfec4249c6e9c81199479670e0d5f8275247be6a3ee600d35ed83140`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class LawfulAlternative (m : Type _ → Type _) [Alternative m] : Prop
    extends LawfulApplicative m where
  /-- Mapping the result of a failure is still a failure -/
  map_failure (f : α → β) : f <$> (failure : m α) = failure
  /-- Sequencing a `failure` call results in failure -/
  failure_seq (x : m α) : (failure : m (α → β)) <*> x = failure
  /-- `failure` is a right identity for `orElse`. -/
  orElse_failure (x : m α) : (x <|> failure) = x
  /-- `failure` is a left identity for `orElse`. -/
  failure_orElse (y : m α) : (failure <|> y) = y
  /-- `orElse` is associative. -/
  orElse_assoc (x y z : m α) : (x <|> y <|> z) = ((x <|> y) <|> z)
  /-- `map` commutes with `orElse`. The stronger statement with `bind` generally isn't true -/
  map_orElse (x y : m α) (f : α → β) : f <$> (x <|> y) = (f <$> x <|> f <$> y)

export LawfulAlternative (map_failure failure_seq orElse_failure failure_orElse orElse_assoc
  map_orElse)
attribute [simp] map_failure failure_seq orElse_failure failure_orElse map_orElse

section Alternative

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant16ebaf13a8da90bacf29778827f0c766834459a33f83af76404cc3f96cc9ca8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant16ebaf13a8da90bacf29778827f0c766834459a33f83af76404cc3f96cc9ca8a.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eea00fd7e601cac63ee9ca51d0c0f558c0e37d98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

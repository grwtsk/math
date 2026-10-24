# IsStandardSmoothOfRelativeDimension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f9a276b74e41cf823674a46a1b87fbbad222da8f1d6eb7d4ab9c79e4609ee6f3",
  "kind": "class",
  "lexical_name": "IsStandardSmoothOfRelativeDimension",
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
  "slug": "isstandardsmoothofrelativedimension--7fb6b898a27fd3460cc28f20",
  "source": {
    "blob": "ab546d7d4f085bd703cac82ad29463924c4c0f7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 107,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/StandardSmooth/Variant7b1d7ec809f3502fa77b9bb6d338526045404e52dcc20695a405fb5b5c193296.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7fb6b898a27fd3460cc28f20c255e684e2ded71ac31b7e9e639730969b820a05",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/StandardSmooth/Variant7b1d7ec809f3502fa77b9bb6d338526045404e52dcc20695a405fb5b5c193296.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f9a276b74e41cf823674a46a1b87fbbad222da8f1d6eb7d4ab9c79e4609ee6f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsStandardSmoothOfRelativeDimension : Prop where
  out : ∃ (ι σ : Type) (_ : Finite σ) (_ : Finite ι) (P : SubmersivePresentation R S ι σ),
    P.dimension = n

variable {R S ι σ n} in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/StandardSmooth/Variant7b1d7ec809f3502fa77b9bb6d338526045404e52dcc20695a405fb5b5c193296.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/StandardSmooth/Variant7b1d7ec809f3502fa77b9bb6d338526045404e52dcc20695a405fb5b5c193296.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab546d7d4f085bd703cac82ad29463924c4c0f7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

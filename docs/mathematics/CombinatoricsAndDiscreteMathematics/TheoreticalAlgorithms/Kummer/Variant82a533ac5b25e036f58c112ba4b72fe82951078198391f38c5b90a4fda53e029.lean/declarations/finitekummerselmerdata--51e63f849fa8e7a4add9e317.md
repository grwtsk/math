# FiniteKummerSelmerData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8bcbf2e22cb1f9ebce0ecdfd1bcc6dd1c20cfef00fab73a9e32e2eb56b690539",
  "kind": "structure",
  "lexical_name": "FiniteKummerSelmerData",
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
  "slug": "finitekummerselmerdata--51e63f849fa8e7a4add9e317",
  "source": {
    "blob": "be79d1d416e292844925c01fd5b0fe7da281a0e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 42,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Kummer/Variant82a533ac5b25e036f58c112ba4b72fe82951078198391f38c5b90a4fda53e029.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:51e63f849fa8e7a4add9e317f05a5351c8022a893e9fa7cc4a544092576bfb00",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Kummer/Variant82a533ac5b25e036f58c112ba4b72fe82951078198391f38c5b90a4fda53e029.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8bcbf2e22cb1f9ebce0ecdfd1bcc6dd1c20cfef00fab73a9e32e2eb56b690539`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FiniteKummerSelmerData
    (P : FiniteSelmerProblem.{u, u, u}) where
  globalKummer :
    FiniteH1Map P.G P.A P.ρG
  localKummer :
    (place : P.V) →
      FiniteH1Map (P.Gv place) P.A (P.ρv place)
  localizeDomain :
    (place : P.V) →
      globalKummer.Domain → (localKummer place).Domain
  compatibility :
    ∀ (place : P.V) (x : globalKummer.Domain),
      resFiniteH1 (P.ιv place) (globalKummer.toH1 x) =
        (localKummer place).toH1 (localizeDomain place x)
  localKummer_mem :
    ∀ (place : P.V) (x : globalKummer.Domain),
      (P.localCondition place).carrier
        ((localKummer place).toH1 (localizeDomain place x))
  boundary : List String

namespace FiniteKummerSelmerData

/-- The global-to-local compatibility equations are visible as a named proposition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Kummer/Variant82a533ac5b25e036f58c112ba4b72fe82951078198391f38c5b90a4fda53e029.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Kummer/Variant82a533ac5b25e036f58c112ba4b72fe82951078198391f38c5b90a4fda53e029.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be79d1d416e292844925c01fd5b0fe7da281a0e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

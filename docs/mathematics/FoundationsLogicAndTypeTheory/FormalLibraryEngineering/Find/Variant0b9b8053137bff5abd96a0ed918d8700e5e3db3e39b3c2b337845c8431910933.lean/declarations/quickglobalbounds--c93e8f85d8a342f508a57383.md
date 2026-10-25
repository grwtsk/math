# quickGlobalBounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1516b90c4e8389865e1674b9874cd7db61f1ec59375568597d587b7d27d97320",
  "kind": "def",
  "lexical_name": "quickGlobalBounds",
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
  "slug": "quickglobalbounds--c93e8f85d8a342f508a57383",
  "source": {
    "blob": "a9bbb5434eb1fd7562d6703651b036d32fcf372f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 207,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant0b9b8053137bff5abd96a0ed918d8700e5e3db3e39b3c2b337845c8431910933.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c93e8f85d8a342f508a573830ae0ff8b5d5f48232ffb57835b89c2a2b0323091",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant0b9b8053137bff5abd96a0ed918d8700e5e3db3e39b3c2b337845c8431910933.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1516b90c4e8389865e1674b9874cd7db61f1ec59375568597d587b7d27d97320`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def quickGlobalBounds (expr : Expr) (hsupp : ExprSupported expr)
    (domain : Box) (cfg : DiscoveryConfig := {}) : ℚ × ℚ :=
  let minResult := findGlobalMin expr hsupp domain cfg
  let maxResult := findGlobalMax expr hsupp domain cfg
  (minResult.bound, maxResult.bound)

/-! ## Adaptive Verification

These functions automatically increase precision until verification succeeds.
-/

/-- Try to verify an upper bound with increasing Taylor depths.
Returns `some` with the verified bound if successful, `none` otherwise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant0b9b8053137bff5abd96a0ed918d8700e5e3db3e39b3c2b337845c8431910933.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant0b9b8053137bff5abd96a0ed918d8700e5e3db3e39b3c2b337845c8431910933.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9bbb5434eb1fd7562d6703651b036d32fcf372f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

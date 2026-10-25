# reduceMantissa

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:72f0e629d35b02a8226ae7132afddb27a281be4703d6080b9f4bd6264feb7ad7",
  "kind": "def",
  "lexical_name": "reduceMantissa",
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
  "slug": "reducemantissa--4e1e249496f6f963c782ddb3",
  "source": {
    "blob": "5387fe54fbecca509a1e12474561b9ffe393bf5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 51,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/LogReduction/Variant03786dfa62342728b81de5fa708ebb4e840cfb51dddc8ffd5cf416ea2286b7e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4e1e249496f6f963c782ddb3498be4c78784eac17efa7ab511ecec90acf42608",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/LogReduction/Variant03786dfa62342728b81de5fa708ebb4e840cfb51dddc8ffd5cf416ea2286b7e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:72f0e629d35b02a8226ae7132afddb27a281be4703d6080b9f4bd6264feb7ad7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def reduceMantissa (q : ℚ) : ℚ :=
  if q ≤ 0 then 1  -- Default for non-positive inputs
  else
    let k := reductionExponent q
    q * (2 : ℚ) ^ (-k)

/-- The main algebraic theorem: q = m * 2^k for positive q -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/LogReduction/Variant03786dfa62342728b81de5fa708ebb4e840cfb51dddc8ffd5cf416ea2286b7e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/LogReduction/Variant03786dfa62342728b81de5fa708ebb4e840cfb51dddc8ffd5cf416ea2286b7e0.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5387fe54fbecca509a1e12474561b9ffe393bf5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# pop'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:48a3879be5efbd297c1d331e86625271ff506032064af01590209415e1d0e272",
  "kind": "def",
  "lexical_name": "pop'",
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
  "slug": "pop--5e8beba7c57b409cb173a1ba",
  "source": {
    "blob": "45e2e1c1402ad68f5565d835dd0262a54dd39694",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 235,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variant2033002f59415d9e110ddd53adbd49c465eb1aac926df869ff1a8cccfe7bc5c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5e8beba7c57b409cb173a1ba7152fa54714ffed06e59c72799877469e539d94a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variant2033002f59415d9e110ddd53adbd49c465eb1aac926df869ff1a8cccfe7bc5c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:48a3879be5efbd297c1d331e86625271ff506032064af01590209415e1d0e272`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pop' (k : K') : Stmt' → Stmt' :=
  pop k fun _ v => v

/-- Peek a value from the stack and place the result in local store. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variant2033002f59415d9e110ddd53adbd49c465eb1aac926df869ff1a8cccfe7bc5c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variant2033002f59415d9e110ddd53adbd49c465eb1aac926df869ff1a8cccfe7bc5c0.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45e2e1c1402ad68f5565d835dd0262a54dd39694` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

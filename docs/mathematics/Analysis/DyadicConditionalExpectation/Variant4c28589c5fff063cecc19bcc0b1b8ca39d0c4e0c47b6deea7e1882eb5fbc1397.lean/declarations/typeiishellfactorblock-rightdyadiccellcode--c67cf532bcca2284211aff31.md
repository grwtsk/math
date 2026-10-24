# TypeIIShellFactorBlock.rightDyadicCellCode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5f7db2c5a95ca40fc49e42e8639468dbde9fa206b65435b859c58b6a2447a7a7",
  "kind": "def",
  "lexical_name": "TypeIIShellFactorBlock.rightDyadicCellCode",
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
  "slug": "typeiishellfactorblock-rightdyadiccellcode--c67cf532bcca2284211aff31",
  "source": {
    "blob": "53969c390b8caef9600ce60d7a5bf6ecce7eaf9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 81,
    "path": "GRWTSK/Analysis/DyadicConditionalExpectation/Variant4c28589c5fff063cecc19bcc0b1b8ca39d0c4e0c47b6deea7e1882eb5fbc1397.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c67cf532bcca2284211aff316ad281e2dc54ea4c8e21a4c7815cfc3061c2ba96",
  "verification": {
    "reference": "docs/verification/Analysis/DyadicConditionalExpectation/Variant4c28589c5fff063cecc19bcc0b1b8ca39d0c4e0c47b6deea7e1882eb5fbc1397.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5f7db2c5a95ca40fc49e42e8639468dbde9fa206b65435b859c58b6a2447a7a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def TypeIIShellFactorBlock.rightDyadicCellCode
    {N q : ℕ} (B : TypeIIShellFactorBlock N q) (depth : ℕ) :
    DyadicCellCode B.Right depth where
  cell index :=
    halfOpenShellCell B.rightExponent depth index.1.1
      index.2.2.1 index.2.2.2

/-- Unnormalized indicator of one dyadic cell. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/DyadicConditionalExpectation/Variant4c28589c5fff063cecc19bcc0b1b8ca39d0c4e0c47b6deea7e1882eb5fbc1397.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/DyadicConditionalExpectation/Variant4c28589c5fff063cecc19bcc0b1b8ca39d0c4e0c47b6deea7e1882eb5fbc1397.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53969c390b8caef9600ce60d7a5bf6ecce7eaf9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

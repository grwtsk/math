# KarnaughMap.rowBit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e5e279d173c48fa6888d9580b7b914a7abbf67b417c7e969ab293b9ccf49b794",
  "kind": "def",
  "lexical_name": "KarnaughMap.rowBit",
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
  "slug": "karnaughmap-rowbit--b941d9a2ec3e6bfeae133021",
  "source": {
    "blob": "027de05d06929cdd7f65936df0e1c4a3372b50be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 23,
    "path": "GRWTSK/Algebra/LinearAlgebra/KarnaughMap/Variant645bb976f8bf84971108bca42e19c7ce59b4741e0e7213b51a6660039c77948f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b941d9a2ec3e6bfeae13302163423c8cde94cf72bf53e5f1e4c1a644ae46ba08",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/KarnaughMap/Variant645bb976f8bf84971108bca42e19c7ce59b4741e0e7213b51a6660039c77948f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e5e279d173c48fa6888d9580b7b914a7abbf67b417c7e969ab293b9ccf49b794`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def KarnaughMap.rowBit
    (rowBits : Nat)
    (r : Fin (2 ^ rowBits))
    (i : Nat) :
    Bool :=
  Hypercube.grayBit r.val (rowBits - 1 - i)

/-- Gray bit for a column coordinate in a K-map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/KarnaughMap/Variant645bb976f8bf84971108bca42e19c7ce59b4741e0e7213b51a6660039c77948f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/KarnaughMap/Variant645bb976f8bf84971108bca42e19c7ce59b4741e0e7213b51a6660039c77948f.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `027de05d06929cdd7f65936df0e1c4a3372b50be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

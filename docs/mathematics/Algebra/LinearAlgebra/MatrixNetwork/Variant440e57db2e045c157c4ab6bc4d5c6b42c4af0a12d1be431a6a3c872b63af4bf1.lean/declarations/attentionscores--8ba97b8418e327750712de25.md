# attentionScores

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a1645b0a9e6d398b56e34fd54cab90d8b1a0f9d60a067bd052dc4fca0c31df36",
  "kind": "def",
  "lexical_name": "attentionScores",
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
  "slug": "attentionscores--8ba97b8418e327750712de25",
  "source": {
    "blob": "3d8491efd05de2f0cc3c43e743df80f5d4d6d329",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 85,
    "path": "GRWTSK/Algebra/LinearAlgebra/MatrixNetwork/Variant440e57db2e045c157c4ab6bc4d5c6b42c4af0a12d1be431a6a3c872b63af4bf1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8ba97b8418e327750712de25630b0560d37d81e9faadc14217b498d6785033cf",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixNetwork/Variant440e57db2e045c157c4ab6bc4d5c6b42c4af0a12d1be431a6a3c872b63af4bf1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a1645b0a9e6d398b56e34fd54cab90d8b1a0f9d60a067bd052dc4fca0c31df36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def attentionScores {seqLen dK : Nat}
    (Q K : IntervalMatrix seqLen dK) :
    IntervalMatrix seqLen seqLen :=
  Q.matmul K.transpose

/-- Structure for Multi-Head Attention parameters -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixNetwork/Variant440e57db2e045c157c4ab6bc4d5c6b42c4af0a12d1be431a6a3c872b63af4bf1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/MatrixNetwork/Variant440e57db2e045c157c4ab6bc4d5c6b42c4af0a12d1be431a6a3c872b63af4bf1.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d8491efd05de2f0cc3c43e743df80f5d4d6d329` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

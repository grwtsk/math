# shiftFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d2fceb5cce9c7d6dcae1bec4066a5cb10308d5dc2584e66975a658f002f870cb",
  "kind": "def",
  "lexical_name": "shiftFun",
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
  "slug": "shiftfun--a27bba5b58c4f748c772318b",
  "source": {
    "blob": "136602b740fe0b5c6ecef06b83ded4f68a09bd8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 243,
    "path": "GRWTSK/Topology/AlgebraicTopology/ExtraDegeneracy/Variant1ff9aa58bbabff7a52944aa8bcc08bb8c2905958f585fc30e53c4a3bbd14bef5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a27bba5b58c4f748c772318b008690bac7d8a8517dab8c87c6f2004bd43fd2f7",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/ExtraDegeneracy/Variant1ff9aa58bbabff7a52944aa8bcc08bb8c2905958f585fc30e53c4a3bbd14bef5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d2fceb5cce9c7d6dcae1bec4066a5cb10308d5dc2584e66975a658f002f870cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def shiftFun {n : ℕ} {X : Type*} [Zero X] (f : Fin n → X) (i : Fin (n + 1)) : X :=
  Matrix.vecCons 0 f i

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/ExtraDegeneracy/Variant1ff9aa58bbabff7a52944aa8bcc08bb8c2905958f585fc30e53c4a3bbd14bef5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/ExtraDegeneracy/Variant1ff9aa58bbabff7a52944aa8bcc08bb8c2905958f585fc30e53c4a3bbd14bef5.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `136602b740fe0b5c6ecef06b83ded4f68a09bd8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

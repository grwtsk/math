# compRel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2ad5724e8fc6741a44307a6fa895e9cdaf6b2fa9bae89f9bdfda9a0c0c8bbb1f",
  "kind": "def",
  "lexical_name": "compRel",
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
  "slug": "comprel--ec7fa062880920eab0db23cb",
  "source": {
    "blob": "1a802f9c93d7c3ba70440448f5cb8b5bd1512a30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 166,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Defs/Variant07508ec56c9bb018f6da1dd08f0fa894aa8bf76eb80ba20aa422112b9249ffe9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec7fa062880920eab0db23cb497f3a3ab30a76482c137c9d11b0300f50d2f69f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Defs/Variant07508ec56c9bb018f6da1dd08f0fa894aa8bf76eb80ba20aa422112b9249ffe9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2ad5724e8fc6741a44307a6fa895e9cdaf6b2fa9bae89f9bdfda9a0c0c8bbb1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compRel (r₁ r₂ : Set (α × α)) :=
  { p : α × α | ∃ z : α, (p.1, z) ∈ r₁ ∧ (z, p.2) ∈ r₂ }

@[inherit_doc]
scoped[Uniformity] infixl:62 " ○ " => compRel
open Uniformity

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Defs/Variant07508ec56c9bb018f6da1dd08f0fa894aa8bf76eb80ba20aa422112b9249ffe9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Defs/Variant07508ec56c9bb018f6da1dd08f0fa894aa8bf76eb80ba20aa422112b9249ffe9.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a802f9c93d7c3ba70440448f5cb8b5bd1512a30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

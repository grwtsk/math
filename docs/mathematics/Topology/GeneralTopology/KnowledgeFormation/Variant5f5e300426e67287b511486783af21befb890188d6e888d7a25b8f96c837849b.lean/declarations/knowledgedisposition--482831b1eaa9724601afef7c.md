# KnowledgeDisposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:704417d49deacde1674777d7f4f58aef087cd1ed103da97c3d67cd32d27a6add",
  "kind": "inductive",
  "lexical_name": "KnowledgeDisposition",
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
  "slug": "knowledgedisposition--482831b1eaa9724601afef7c",
  "source": {
    "blob": "43c14c6ae4d82addf5a3b42edd92c473e26c1f80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 28,
    "path": "GRWTSK/Topology/GeneralTopology/KnowledgeFormation/Variant5f5e300426e67287b511486783af21befb890188d6e888d7a25b8f96c837849b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:482831b1eaa9724601afef7c17aa94b5507f7eee15cea52a7fb832e695aba636",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/KnowledgeFormation/Variant5f5e300426e67287b511486783af21befb890188d6e888d7a25b8f96c837849b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:704417d49deacde1674777d7f4f58aef087cd1ed103da97c3d67cd32d27a6add`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive KnowledgeDisposition
    (Object : Type u) [DecidableEq Object]
    (width : Nat)
    (encode : Object → FiniteIncidenceCode width)
  | anchor (point : CertifiedIncidenceSingleton encode)
  | routingResidue (work : ResidueWorkItem Object (Fin width))
  | namingResidue (work : PersistentNamingResidue Object)

namespace KnowledgeDisposition

variable
    {Object : Type u} [DecidableEq Object]
    {width : Nat}
    {encode : Object → FiniteIncidenceCode width}

/--
The activator is determined by the exact disposition, never by a scalar
similarity threshold or a finite disagreement count.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/KnowledgeFormation/Variant5f5e300426e67287b511486783af21befb890188d6e888d7a25b8f96c837849b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/KnowledgeFormation/Variant5f5e300426e67287b511486783af21befb890188d6e888d7a25b8f96c837849b.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43c14c6ae4d82addf5a3b42edd92c473e26c1f80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

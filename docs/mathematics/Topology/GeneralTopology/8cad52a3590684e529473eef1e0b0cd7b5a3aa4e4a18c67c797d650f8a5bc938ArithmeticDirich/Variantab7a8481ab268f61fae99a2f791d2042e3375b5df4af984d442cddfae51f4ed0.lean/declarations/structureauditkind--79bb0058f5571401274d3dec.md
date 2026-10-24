# structureAuditKind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:04a9f409c50e7340bba5c0ee3dd96194bcf5600ba59e7b87dbebc899939e2f7b",
  "kind": "def",
  "lexical_name": "structureAuditKind",
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
  "slug": "structureauditkind--79bb0058f5571401274d3dec",
  "source": {
    "blob": "3ea655c05e3b43c90f5b324c4173f5e86aa9dc71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 22,
    "path": "GRWTSK/Topology/GeneralTopology/8cad52a3590684e529473eef1e0b0cd7b5a3aa4e4a18c67c797d650f8a5bc938ArithmeticDirich/Variantab7a8481ab268f61fae99a2f791d2042e3375b5df4af984d442cddfae51f4ed0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:79bb0058f5571401274d3dec7f0731600e7c10bc3cc7a16e41b0e98ad7bb6aac",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/8cad52a3590684e529473eef1e0b0cd7b5a3aa4e4a18c67c797d650f8a5bc938ArithmeticDirich/Variantab7a8481ab268f61fae99a2f791d2042e3375b5df4af984d442cddfae51f4ed0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:04a9f409c50e7340bba5c0ee3dd96194bcf5600ba59e7b87dbebc899939e2f7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def structureAuditKind : ConstantInfo → String
  | .axiomInfo _ => "axiom"
  | .defnInfo _ => "definition"
  | .thmInfo _ => "theorem"
  | .opaqueInfo _ => "opaque"
  | .quotInfo _ => "quotient"
  | .inductInfo _ => "inductive"
  | .ctorInfo _ => "constructor"
  | .recInfo _ => "recursor"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/8cad52a3590684e529473eef1e0b0cd7b5a3aa4e4a18c67c797d650f8a5bc938ArithmeticDirich/Variantab7a8481ab268f61fae99a2f791d2042e3375b5df4af984d442cddfae51f4ed0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/8cad52a3590684e529473eef1e0b0cd7b5a3aa4e4a18c67c797d650f8a5bc938ArithmeticDirich/Variantab7a8481ab268f61fae99a2f791d2042e3375b5df4af984d442cddfae51f4ed0.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ea655c05e3b43c90f5b324c4173f5e86aa9dc71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

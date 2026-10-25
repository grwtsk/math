# effectState

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2e608b5e22c201bcbae5ae84e4cfec1eef29315c684cb1b1252f9308668d565d",
  "kind": "def",
  "lexical_name": "effectState",
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
  "slug": "effectstate--109c89d6d0ba9afb44417298",
  "source": {
    "blob": "3d566bd680b4755ed5b07fca1b38e8663063b566",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 571,
    "line": 567,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperationalRevoke/Variantdee303da0660a223f13b25ff8666c37ad2e2071da809fec2fd4a5f4906d77161.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:109c89d6d0ba9afb44417298f4d0fcccdd5c3f82971a7d196ea3a84d4c8aa604",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperationalRevoke/Variantdee303da0660a223f13b25ff8666c37ad2e2071da809fec2fd4a5f4906d77161.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2e608b5e22c201bcbae5ae84e4cfec1eef29315c684cb1b1252f9308668d565d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 567–571.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def effectState : State Unit Unit Unit :=
  ⟨.effect, "local", "memory1", "owner", ⟨{("", "g1")}, fun _ => effectRecord⟩,
    (), (), (), 2, 0, 0, 1, 3, ""⟩

/-- Native revoke_after event targeting the existing Effect grant g1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperationalRevoke/Variantdee303da0660a223f13b25ff8666c37ad2e2071da809fec2fd4a5f4906d77161.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperationalRevoke/Variantdee303da0660a223f13b25ff8666c37ad2e2071da809fec2fd4a5f4906d77161.lean#L567).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d566bd680b4755ed5b07fca1b38e8663063b566` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# ofSubtype'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dd10b3e13ebac9148ed991a9ed93be10b33e5c936c21677f6cd5fc2fb6c61c4a",
  "kind": "def",
  "lexical_name": "ofSubtype'",
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
  "slug": "ofsubtype--6cf0c00b8eab0c7a59b19432",
  "source": {
    "blob": "edda09fc1a901788a8345b21c7afb9ea809d770b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 547,
    "line": 541,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeVec/Variant2ce902b4cdf9e61d3d4cf8cbd067ad91739daa504e9bbb13ab495157389c2179.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6cf0c00b8eab0c7a59b19432140285daa14b5ef91976c6e11bee90b86303865e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeVec/Variant2ce902b4cdf9e61d3d4cf8cbd067ad91739daa504e9bbb13ab495157389c2179.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dd10b3e13ebac9148ed991a9ed93be10b33e5c936c21677f6cd5fc2fb6c61c4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 541–547.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofSubtype' {n} {α : TypeVec.{u} n} (p : α ⊗ α ⟹ «repeat» n Prop) :
    Subtype_ p ⟹ fun i : Fin2 n => { x : α i × α i // ofRepeat <| p i (prod.mk _ x.1 x.2) }
  | Fin2.fs i, x => ofSubtype' _ i x
  | Fin2.fz, x => ⟨x.val, cast (by congr) x.property⟩

/-- similar to `diag` but the target vector is a `Subtype_`
guaranteeing the equality of the components -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeVec/Variant2ce902b4cdf9e61d3d4cf8cbd067ad91739daa504e9bbb13ab495157389c2179.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeVec/Variant2ce902b4cdf9e61d3d4cf8cbd067ad91739daa504e9bbb13ab495157389c2179.lean#L541).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edda09fc1a901788a8345b21c7afb9ea809d770b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

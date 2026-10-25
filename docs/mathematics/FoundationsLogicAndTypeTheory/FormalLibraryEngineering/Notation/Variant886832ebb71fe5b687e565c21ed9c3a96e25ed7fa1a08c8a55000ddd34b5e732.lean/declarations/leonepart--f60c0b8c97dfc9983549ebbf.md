# LeOnePart

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cefc882a60fb3a6ec2e845b3af82984e29dc10d6e69b9fdb82b51090707aa303",
  "kind": "class",
  "lexical_name": "LeOnePart",
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
  "slug": "leonepart--f60c0b8c97dfc9983549ebbf",
  "source": {
    "blob": "ffb3097c7ba7369421f32a4369e41d70605341a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 38,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation/Variant886832ebb71fe5b687e565c21ed9c3a96e25ed7fa1a08c8a55000ddd34b5e732.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f60c0b8c97dfc9983549ebbfa4529fa88f30457dc8a8560d0343927bf60047c9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation/Variant886832ebb71fe5b687e565c21ed9c3a96e25ed7fa1a08c8a55000ddd34b5e732.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cefc882a60fb3a6ec2e845b3af82984e29dc10d6e69b9fdb82b51090707aa303`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class LeOnePart (α : Type*) where
  /-- The *negative part* of an element `a`. -/
  leOnePart : α → α

export OneLePart (oneLePart)
export LeOnePart (leOnePart)
export PosPart (posPart)
export NegPart (negPart)

@[inherit_doc] postfix:max "⁺ᵐ " => OneLePart.oneLePart
@[inherit_doc] postfix:max "⁻ᵐ" => LeOnePart.leOnePart
@[inherit_doc] postfix:max "⁺" => PosPart.posPart
@[inherit_doc] postfix:max "⁻" => NegPart.negPart
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation/Variant886832ebb71fe5b687e565c21ed9c3a96e25ed7fa1a08c8a55000ddd34b5e732.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation/Variant886832ebb71fe5b687e565c21ed9c3a96e25ed7fa1a08c8a55000ddd34b5e732.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffb3097c7ba7369421f32a4369e41d70605341a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

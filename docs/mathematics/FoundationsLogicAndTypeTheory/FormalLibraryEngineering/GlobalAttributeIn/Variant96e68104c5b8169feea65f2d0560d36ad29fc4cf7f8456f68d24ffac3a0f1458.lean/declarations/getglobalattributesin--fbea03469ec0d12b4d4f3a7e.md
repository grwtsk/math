# getGlobalAttributesIn?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3811f9a48f08da767cb9d99e28e3b3e8d20e223596a4b3b73870b692ecd06fe8",
  "kind": "def",
  "lexical_name": "getGlobalAttributesIn?",
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
  "slug": "getglobalattributesin--fbea03469ec0d12b4d4f3a7e",
  "source": {
    "blob": "53808fbc216033b3d3c2599d1c7e1f4db75ec29b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 47,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GlobalAttributeIn/Variant96e68104c5b8169feea65f2d0560d36ad29fc4cf7f8456f68d24ffac3a0f1458.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fbea03469ec0d12b4d4f3a7ecbb5e5d6692991dca86b16788c109f5d86476f53",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GlobalAttributeIn/Variant96e68104c5b8169feea65f2d0560d36ad29fc4cf7f8456f68d24ffac3a0f1458.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3811f9a48f08da767cb9d99e28e3b3e8d20e223596a4b3b73870b692ecd06fe8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getGlobalAttributesIn? : Syntax → Option (Ident × Array (TSyntax `attr))
  | `(attribute [$x,*] $id in $_) =>
    let xs := x.getElems.filterMap fun a => match a.raw with
      | `(Parser.Command.eraseAttr| -$_) => none
      | `(Parser.Term.attrInstance| local $_attr:attr) => none
      | `(Parser.Term.attrInstance| scoped $_attr:attr) => none
      | `(attr| $a) => some a
    (id, xs)
  | _ => default

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GlobalAttributeIn/Variant96e68104c5b8169feea65f2d0560d36ad29fc4cf7f8456f68d24ffac3a0f1458.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GlobalAttributeIn/Variant96e68104c5b8169feea65f2d0560d36ad29fc4cf7f8456f68d24ffac3a0f1458.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53808fbc216033b3d3c2599d1c7e1f4db75ec29b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

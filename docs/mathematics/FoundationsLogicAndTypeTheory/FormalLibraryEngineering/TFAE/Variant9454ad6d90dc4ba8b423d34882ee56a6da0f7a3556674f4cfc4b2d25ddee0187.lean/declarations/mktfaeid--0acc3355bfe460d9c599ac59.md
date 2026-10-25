# mkTFAEId

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:97cd466940a7b34a7922cfecf6c2cd26730674b64e056ae047e1579eb50cceb2",
  "kind": "def",
  "lexical_name": "mkTFAEId",
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
  "slug": "mktfaeid--0acc3355bfe460d9c599ac59",
  "source": {
    "blob": "cc5e4d0f3e6a6b4d44908f6567fa2a38a2e0f8f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 256,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TFAE/Variant9454ad6d90dc4ba8b423d34882ee56a6da0f7a3556674f4cfc4b2d25ddee0187.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0acc3355bfe460d9c599ac59267b40e82e50fecedd1dd9574f3fb1f9a822fe52",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TFAE/Variant9454ad6d90dc4ba8b423d34882ee56a6da0f7a3556674f4cfc4b2d25ddee0187.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:97cd466940a7b34a7922cfecf6c2cd26730674b64e056ae047e1579eb50cceb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkTFAEId : TSyntax ``tfaeType → MacroM Name
  | `(tfaeType|$i:num $arr:impArrow $j:num) => do
    let arr ← match arr with
    | `(impArrow| ← ) => pure "from"
    | `(impArrow| → ) => pure "to"
    | `(impArrow| ↔ ) => pure "iff"
    | _ => Macro.throwUnsupported
    return .mkSimple <| String.intercalate "_" ["tfae", s!"{i.getNat}", arr, s!"{j.getNat}"]
  | _ => Macro.throwUnsupported

/-- Turn syntax for a given index into a natural number, as long as it lies between `1` and
`maxIndex`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TFAE/Variant9454ad6d90dc4ba8b423d34882ee56a6da0f7a3556674f4cfc4b2d25ddee0187.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TFAE/Variant9454ad6d90dc4ba8b423d34882ee56a6da0f7a3556674f4cfc4b2d25ddee0187.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc5e4d0f3e6a6b4d44908f6567fa2a38a2e0f8f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

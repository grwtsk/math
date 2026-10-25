# abstractNestedProofs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b2d6f54dfe55038627651b7f17c2273297cce68ee172dc7ac80376887b53a78a",
  "kind": "def",
  "lexical_name": "abstractNestedProofs",
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
  "slug": "abstractnestedproofs--a79c74784c7c993e40be49ed",
  "source": {
    "blob": "16cf57a7efe3e9ed45fe4659358e945a34227b24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 119,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractNestedProofs/Variant1fa8acdf5724fe2b343d1fb5a9860b0aa826db02ca87b63bfa070389f01726b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a79c74784c7c993e40be49ed8fc4db4c30dc4d1eb60e903c7fe144ad536d806a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractNestedProofs/Variant1fa8acdf5724fe2b343d1fb5a9860b0aa826db02ca87b63bfa070389f01726b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b2d6f54dfe55038627651b7f17c2273297cce68ee172dc7ac80376887b53a78a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def abstractNestedProofs (e : Expr) (cache := true) : MetaM Expr := do
  if (← isProof e) then
    -- `e` is a proof itself. So, we don't abstract nested proofs
    return e
  else
    AbstractNestedProofs.visit e |>.run { cache } |>.run

end Lean.Meta
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractNestedProofs/Variant1fa8acdf5724fe2b343d1fb5a9860b0aa826db02ca87b63bfa070389f01726b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractNestedProofs/Variant1fa8acdf5724fe2b343d1fb5a9860b0aa826db02ca87b63bfa070389f01726b4.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16cf57a7efe3e9ed45fe4659358e945a34227b24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

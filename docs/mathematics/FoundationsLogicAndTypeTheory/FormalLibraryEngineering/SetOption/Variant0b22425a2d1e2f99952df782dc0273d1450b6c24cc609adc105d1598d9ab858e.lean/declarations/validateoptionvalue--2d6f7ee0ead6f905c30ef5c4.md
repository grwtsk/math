# validateOptionValue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f25c03fc6717cb21ae36e2fcdcede3ce29eef9870794dc1bb1845108a371ad6f",
  "kind": "def",
  "lexical_name": "validateOptionValue",
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
  "slug": "validateoptionvalue--2d6f7ee0ead6f905c30ef5c4",
  "source": {
    "blob": "fd04b63cd2bbb76d91e73644f980cb8910f15217",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 38,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SetOption/Variant0b22425a2d1e2f99952df782dc0273d1450b6c24cc609adc105d1598d9ab858e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2d6f7ee0ead6f905c30ef5c43ca3160c155c7fc458fba0c9740f8b027afa3a45",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SetOption/Variant0b22425a2d1e2f99952df782dc0273d1450b6c24cc609adc105d1598d9ab858e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f25c03fc6717cb21ae36e2fcdcede3ce29eef9870794dc1bb1845108a371ad6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def validateOptionValue (optionName : Name) (decl : OptionDecl) (val : DataValue) : m Unit := do
  unless decl.defValue.sameCtor val do
    throwMistypedOptionValue val decl.defValue
where
  throwMistypedOptionValue (found defVal : DataValue) := do
    match ctorType? defVal with
    | some defValType =>
      let foundType := ctorType? found |>.get!
      throwError "set_option value type mismatch: The value{indentD (toMessageData found)}\nhas type\
        {indentD (toMessageData foundType)}\nbut the option `{optionName}` expects a value of type\
        {indentExpr defValType}"
    | _ => throwUnconfigurable optionName

/--
Elaborates `id` as an identifier representing an option name with value given by `val`, adding
appropriate info to the infotrees.

Validates that `val` has the correct type for values of the option `id`, and returns the updated
`Options`. Does **not** update the options in the monad `m`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SetOption/Variant0b22425a2d1e2f99952df782dc0273d1450b6c24cc609adc105d1598d9ab858e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SetOption/Variant0b22425a2d1e2f99952df782dc0273d1450b6c24cc609adc105d1598d9ab858e.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd04b63cd2bbb76d91e73644f980cb8910f15217` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

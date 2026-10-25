# simpComm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:416d087b997bc43d1ce16d9079dfe1cecadbdb4c2e69bd74dabbd1c357981da0",
  "kind": "def",
  "lexical_name": "simpComm",
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
  "slug": "simpcomm--61a5751a78b91c7fbdad709b",
  "source": {
    "blob": "525107e8031f6a066c6257d60ed3e280f4c3f5a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 217,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant0557f2bfffa9734bf022f41e3f3454725a485557a3aab2ed511d18ea775f7478.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:61a5751a78b91c7fbdad709b31d771c88202b927cb1d0fe85516bc8c76bd4188",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant0557f2bfffa9734bf022f41e3f3454725a485557a3aab2ed511d18ea775f7478.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:416d087b997bc43d1ce16d9079dfe1cecadbdb4c2e69bd74dabbd1c357981da0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[std_linter] def simpComm : Linter where
  noErrorsFound := "No commutativity lemma is marked simp."
  errorsFound := "COMMUTATIVITY LEMMA IS SIMP.
Some commutativity lemmas are simp lemmas:"
  test := fun declName => withReducible do
    unless ← isSimpTheorem declName do return none
    let ty := (← getConstInfo declName).type
    forallTelescopeReducing ty fun _ ty' => do
    let some (lhs, rhs) := ty'.eqOrIff? | return none
    unless lhs.getAppFn.constName? == rhs.getAppFn.constName? do return none
    let (_, _, ty') ← forallMetaTelescopeReducing ty
    let some (lhs', rhs') := ty'.eqOrIff? | return none
    unless ← isDefEq rhs lhs' do return none
    unless ← withNewMCtxDepth (isDefEq rhs lhs') do return none
    -- make sure that the discrimination tree will actually find this match (see #69)
    if (← (← DiscrTree.empty.insert rhs () simpDtConfig).getMatch lhs' simpDtConfig).isEmpty then
      return none
    -- ensure that the second application makes progress:
    if ← isDefEq lhs' rhs' then return none
    pure m!"should not be marked simp"
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant0557f2bfffa9734bf022f41e3f3454725a485557a3aab2ed511d18ea775f7478.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant0557f2bfffa9734bf022f41e3f3454725a485557a3aab2ed511d18ea775f7478.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `525107e8031f6a066c6257d60ed3e280f4c3f5a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# shouldHaveGeneratedCode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:15547d86971386d4158104b29da98e1e67a4c447a5e8771690ce18ed485c6cb0",
  "kind": "def",
  "lexical_name": "shouldHaveGeneratedCode",
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
  "slug": "shouldhavegeneratedcode--bfee5e0e4449105f766eddc2",
  "source": {
    "blob": "fa42e630e9f72637f0213ee564c99d66349ebfec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 506,
    "line": 480,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNeeds/Variant331b29916cd553818a8be50d434bcc1acfbdef9d9234e3e7bf9eef2575ac29a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bfee5e0e4449105f766eddc215bc00d870018821aa4309db4d4e2804187508d1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNeeds/Variant331b29916cd553818a8be50d434bcc1acfbdef9d9234e3e7bf9eef2575ac29a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:15547d86971386d4158104b29da98e1e67a4c447a5e8771690ce18ed485c6cb0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 480–506.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def shouldHaveGeneratedCode (declName : Name) : CoreM Bool := do
  if (← isCompIrrelevant |>.run') then return false
  let env ← getEnv
  if isExtern env declName then return true
  -- This is the only different part of the code.
  -- Infers what the outcome of the check for a value would have been.
  let some kind := getOriginalConstKind? env declName | return false
  unless kind == .defn || kind == .opaque do return false
  if hasMacroInlineAttribute env declName then return false
  if (getImplementedBy? env declName).isSome then return false
  if (← Meta.isMatcher declName) then return false
  if (← Meta.isMatcherLike declName) then return false
  if isCasesOnLike env declName then return false
  -- TODO: check if type class instance
  return true
where
  isCompIrrelevant : MetaM Bool := do
    let info ← getConstInfo declName
    Meta.isProp info.type <||> Meta.isTypeFormerType info.type

/-- Approximates the stance of the imported declaration `decl` by a "lower bound". This means that
we assume that any "extra information" is due to provisioning rather than the stance. For example,
an `import all` will provide the body of every definition regardless of whether it is exposed or
not. We therefore assume it is *not* exposed and that `import all` is doing the work. This allows
us to ensure we have the imports we need. In most cases, however, this lower bound is sharp and
matches the actual stance. -/
-- TODO: record when a stance is approximated.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNeeds/Variant331b29916cd553818a8be50d434bcc1acfbdef9d9234e3e7bf9eef2575ac29a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNeeds/Variant331b29916cd553818a8be50d434bcc1acfbdef9d9234e3e7bf9eef2575ac29a8.lean#L480).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa42e630e9f72637f0213ee564c99d66349ebfec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

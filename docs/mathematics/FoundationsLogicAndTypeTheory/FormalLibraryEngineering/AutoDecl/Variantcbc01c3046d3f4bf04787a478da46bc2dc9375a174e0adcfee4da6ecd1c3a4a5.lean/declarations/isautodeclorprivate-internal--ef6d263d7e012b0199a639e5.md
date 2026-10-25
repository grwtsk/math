# isAutoDeclOrPrivate_Internal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c6f9ff6da4340637fa1cf989bef7a66895903a61b17dee33ae0b238c9459e291",
  "kind": "def",
  "lexical_name": "isAutoDeclOrPrivate_Internal",
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
  "slug": "isautodeclorprivate-internal--ef6d263d7e012b0199a639e5",
  "source": {
    "blob": "520b764dcf65a20bb3b5d6bec9cc6902b0ca2677",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 34,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoDecl/Variantcbc01c3046d3f4bf04787a478da46bc2dc9375a174e0adcfee4da6ecd1c3a4a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ef6d263d7e012b0199a639e5cca776c3320e262e0bcfd1c7a489988fe8464109",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoDecl/Variantcbc01c3046d3f4bf04787a478da46bc2dc9375a174e0adcfee4da6ecd1c3a4a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c6f9ff6da4340637fa1cf989bef7a66895903a61b17dee33ae0b238c9459e291`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isAutoDeclOrPrivate_Internal (decl : Name) : CoreM Bool := do
  if decl.hasMacroScopes then return true
  if decl.isInternal then return true
  let env ← getEnv
  if isReservedName env decl then return true
  if let Name.str n s := decl then
    if (← isAutoDeclOrPrivate_Internal n) then return true
    if s.startsWith "proof_"
        || s.startsWith "match_"
        || s.startsWith "unsafe_"
        || s.startsWith "grind_"
    then return true
    if env.isConstructor n && s ∈ ["injEq", "inj", "sizeOf_spec", "elim", "noConfusion"] then
      return true
    if let ConstantInfo.inductInfo _ := env.find? n then
      if s.startsWith "brecOn_" || s.startsWith "below_" then return true
      if s ∈ [casesOnSuffix, recOnSuffix, brecOnSuffix, belowSuffix,
          "ndrec", "ndrecOn", "noConfusionType", "noConfusion", "ofNat", "toCtorIdx", "ctorIdx",
          "ctorElim", "ctorElimType"] then
        return true
      if let some _ := isSubobjectField? env n (.mkSimple s) then
        return true
    -- Coinductive/inductive lattice-theoretic predicates:
    if let ConstantInfo.inductInfo _ := env.find? (Name.str n "_functor") then
      if s == "functor_unfold" || s == casesOnSuffix || s == "mutual" then return true
      if env.isConstructor (Name.str (Name.str n "_functor") s) then return true
  pure false

end Lean
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoDecl/Variantcbc01c3046d3f4bf04787a478da46bc2dc9375a174e0adcfee4da6ecd1c3a4a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoDecl/Variantcbc01c3046d3f4bf04787a478da46bc2dc9375a174e0adcfee4da6ecd1c3a4a5.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `520b764dcf65a20bb3b5d6bec9cc6902b0ca2677` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

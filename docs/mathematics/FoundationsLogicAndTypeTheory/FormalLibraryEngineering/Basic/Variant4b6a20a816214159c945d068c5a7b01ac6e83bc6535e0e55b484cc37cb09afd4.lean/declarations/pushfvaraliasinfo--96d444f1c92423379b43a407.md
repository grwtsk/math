# pushFVarAliasInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0ef2c571e9cb1e72514baf96a48f4f32be0645355b472f795e93dc531ae4f6b2",
  "kind": "def",
  "lexical_name": "pushFVarAliasInfo",
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
  "slug": "pushfvaraliasinfo--96d444f1c92423379b43a407",
  "source": {
    "blob": "bbbca46bcccb325a5d4615732ab6c12e5fd04450",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 56,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4b6a20a816214159c945d068c5a7b01ac6e83bc6535e0e55b484cc37cb09afd4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:96d444f1c92423379b43a407095e5bdae6d377a721b900a456890a3ccc7d79c6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4b6a20a816214159c945d068c5a7b01ac6e83bc6535e0e55b484cc37cb09afd4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0ef2c571e9cb1e72514baf96a48f4f32be0645355b472f795e93dc531ae4f6b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def pushFVarAliasInfo {m : Type → Type} [Monad m] [MonadInfoTree m]
    (oldFVars newFVars : Array FVarId) (newLCtx : LocalContext) : m Unit := do
  for old in oldFVars, new in newFVars do
    if old != new then
      let decl := newLCtx.get! new
      pushInfoLeaf (.ofFVarAliasInfo { id := new, baseId := old, userName := decl.userName })

/--
The tactic `introv` allows the user to automatically introduce the variables of a theorem and
explicitly name the non-dependent hypotheses.
Any dependent hypotheses are assigned their default names.

Examples:
```
example : ∀ a b : Nat, a = b → b = a := by
  introv h,
  exact h.symm
```
The state after `introv h` is
```
a b : ℕ,
h : a = b
⊢ b = a
```

```
example : ∀ a b : Nat, a = b → ∀ c, b = c → a = c := by
  introv h₁ h₂,
  exact h₁.trans h₂
```
The state after `introv h₁ h₂` is
```
a b : ℕ,
h₁ : a = b,
c : ℕ,
h₂ : b = c
⊢ a = c
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4b6a20a816214159c945d068c5a7b01ac6e83bc6535e0e55b484cc37cb09afd4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4b6a20a816214159c945d068c5a7b01ac6e83bc6535e0e55b484cc37cb09afd4.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbbca46bcccb325a5d4615732ab6c12e5fd04450` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

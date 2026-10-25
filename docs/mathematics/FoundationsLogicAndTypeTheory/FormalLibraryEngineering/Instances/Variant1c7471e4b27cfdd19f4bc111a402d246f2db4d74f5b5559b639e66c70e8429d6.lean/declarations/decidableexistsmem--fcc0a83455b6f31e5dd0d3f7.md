# decidableExistsMem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4f7860d6aa9c723e8d395ffb8f87e82d9f9062fb6db14a13ac84ce48bd5d36ca",
  "kind": "instance",
  "lexical_name": "decidableExistsMem",
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
  "slug": "decidableexistsmem--fcc0a83455b6f31e5dd0d3f7",
  "source": {
    "blob": "a840a7529e216a7703414f9d748dfa7a1ef755e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 45,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instances/Variant1c7471e4b27cfdd19f4bc111a402d246f2db4d74f5b5559b639e66c70e8429d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fcc0a83455b6f31e5dd0d3f76bd3ce0ee1e85375cfd10655a4431371d740ef97",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instances/Variant1c7471e4b27cfdd19f4bc111a402d246f2db4d74f5b5559b639e66c70e8429d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4f7860d6aa9c723e8d395ffb8f87e82d9f9062fb6db14a13ac84ce48bd5d36ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
instance decidableExistsMem {p : α → Prop} [DecidablePred p] :
    ∀ o : Option α, Decidable (Exists fun a => a ∈ o ∧ p a)
  | none => isFalse nofun
  | some a => if h : p a then isTrue ⟨_, rfl, h⟩ else isFalse fun ⟨_, ⟨rfl, hn⟩⟩ => h hn

/--
Given an optional value and a function that can be applied when the value is `some`, returns the
result of applying the function if this is possible.

The function `f` is _partial_ because it is only defined for the values `a : α` such that
`o = some a`. This restriction allows the function to use the fact that it can only be called when
`o` is not `none`: it can relate its argument to the optional value `o`. Its runtime behavior is
equivalent to that of `Option.bind`.

Examples:
```lean example
def attach (v : Option α) : Option { y : α // v = some y } :=
  v.pbind fun x h => some ⟨x, h⟩
```
```lean example
#reduce attach (some 3)
```
```output
some ⟨3, ⋯⟩
```
```lean example
#reduce attach none
```
```output
none
```
-/
@[inline, expose]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instances/Variant1c7471e4b27cfdd19f4bc111a402d246f2db4d74f5b5559b639e66c70e8429d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instances/Variant1c7471e4b27cfdd19f4bc111a402d246f2db4d74f5b5559b639e66c70e8429d6.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a840a7529e216a7703414f9d748dfa7a1ef755e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

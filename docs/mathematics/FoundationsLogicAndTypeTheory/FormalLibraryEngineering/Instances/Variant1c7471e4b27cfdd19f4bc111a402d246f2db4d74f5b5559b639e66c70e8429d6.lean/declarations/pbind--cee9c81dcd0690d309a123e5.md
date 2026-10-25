# pbind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9988262929056d2c5160f2a35fbca0a796b9ac7a96a09fb93624052802782e57",
  "kind": "def",
  "lexical_name": "pbind",
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
  "slug": "pbind--cee9c81dcd0690d309a123e5",
  "source": {
    "blob": "a840a7529e216a7703414f9d748dfa7a1ef755e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 78,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instances/Variant1c7471e4b27cfdd19f4bc111a402d246f2db4d74f5b5559b639e66c70e8429d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cee9c81dcd0690d309a123e5c116272d963696351e14f427f86977553c136faa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instances/Variant1c7471e4b27cfdd19f4bc111a402d246f2db4d74f5b5559b639e66c70e8429d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9988262929056d2c5160f2a35fbca0a796b9ac7a96a09fb93624052802782e57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def pbind : (o : Option α) → (f : (a : α) → o = some a → Option β) → Option β
  | none, _ => none
  | some a, f => f a rfl

/--
Given a function from the elements of `α` that satisfy `p` to `β` and a proof that an optional value
satisfies `p` if it's present, applies the function to the value.

Examples:
```lean example
def attach (v : Option α) : Option { y : α // v = some y } :=
  v.pmap (fun a (h : a ∈ v) => ⟨_, h⟩) (fun _ h => h)
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
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instances/Variant1c7471e4b27cfdd19f4bc111a402d246f2db4d74f5b5559b639e66c70e8429d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instances/Variant1c7471e4b27cfdd19f4bc111a402d246f2db4d74f5b5559b639e66c70e8429d6.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a840a7529e216a7703414f9d748dfa7a1ef755e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# Iter.append

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e7e9e82ecb1f788fbff08b8c6f7753d026facab31747763f50600e450b94508d",
  "kind": "def",
  "lexical_name": "Iter.append",
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
  "slug": "iter-append--43c95f82e4eb83e30817bd61",
  "source": {
    "blob": "36004777723be859e2e69cc282d3254d4b32c9b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 41,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variantd475ab15f9cc27cc6bac6204af478ec6eeb02735fbe4320eb324f143c15d6bc4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:43c95f82e4eb83e30817bd61c212fa5db3ce0355969738a102fb985014df40a7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variantd475ab15f9cc27cc6bac6204af478ec6eeb02735fbe4320eb324f143c15d6bc4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e7e9e82ecb1f788fbff08b8c6f7753d026facab31747763f50600e450b94508d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def Iter.append {α₁ : Type w} {α₂ : Type w} {β : Type w}
    [Iterator α₁ Id β] [Iterator α₂ Id β]
    (it₁ : Iter (α := α₁) β) (it₂ : Iter (α := α₂) β) :
    Iter (α := Append α₁ α₂ Id β) β :=
  (it₁.toIterM.append it₂.toIterM).toIter

/--
This combinator is only useful for advanced use cases.

Given an iterator `it₂`, returns an iterator that behaves exactly like `it₂` but is of the same
type as `it₁.append it₂` (after `it₁` has been exhausted).
This is useful for constructing intermediate states of the append iterator.

**Marble diagram:**

```text
it₂                        --a--b--⊥
Iter.appendSnd α₁ it₂      --a--b--⊥
```

**Termination properties:**

* `Finite` instance: only if `it₂` and iterators of type `α₁` are finite
* `Productive` instance: only if `it₂` and iterators of type `α₁` are productive

Note: If iterators of type `α₁` are not finite, then `append α₁ it₂` can be productive while `it₂` is not.
The standard library does not provide a `Productive` instance for this case.

**Performance:**

This combinator incurs an additional O(1) cost with each output of `it₂`.
-/
@[inline, expose]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variantd475ab15f9cc27cc6bac6204af478ec6eeb02735fbe4320eb324f143c15d6bc4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variantd475ab15f9cc27cc6bac6204af478ec6eeb02735fbe4320eb324f143c15d6bc4.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36004777723be859e2e69cc282d3254d4b32c9b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

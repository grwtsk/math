# IterM.takeWhileWithPostcondition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:43b85cf22c0e472af644ff8c18dfc09a0394093fc2f92b2210c4dd8df0d48f5c",
  "kind": "def",
  "lexical_name": "IterM.takeWhileWithPostcondition",
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
  "slug": "iterm-takewhilewithpostcondition--0a988e4f1918fd73fe88f670",
  "source": {
    "blob": "83edc6fa9f5e557c85ab815c95069b378e89fb73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 95,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TakeWhile/Variantbbb950a6956e1c18525744fc07ac9157440c3e262e15916bbfdeb21b8ee57bdb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0a988e4f1918fd73fe88f670db3afec6dfb30286f6b5179595b9f83014abdaa0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TakeWhile/Variantbbb950a6956e1c18525744fc07ac9157440c3e262e15916bbfdeb21b8ee57bdb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:43b85cf22c0e472af644ff8c18dfc09a0394093fc2f92b2210c4dd8df0d48f5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def IterM.takeWhileWithPostcondition (P : β → PostconditionT m (ULift Bool)) (it : IterM (α := α) m β) :=
  (⟨Types.TakeWhile.mk (P := P) it⟩ : IterM m β)

/--
Given an iterator `it` and a monadic predicate `P`, `it.takeWhileM P` is an iterator that outputs
the values emitted by `it` until one of those values is rejected by `P`.
If some emitted value is rejected by `P`, the value is dropped and the iterator terminates.

If `P` is pure, then the simpler variant `takeWhile` can be used instead.

**Marble diagram (ignoring monadic effects):**

Assuming that the predicate `P` accepts `a` and `b` but rejects `c`:

```text
it                ---a----b---c--d-e--⊥
it.takeWhileM P   ---a----b---⊥

it                ---a----⊥
it.takeWhileM P   ---a----⊥
```

**Termination properties:**

* `Finite` instance: only if `it` is finite
* `Productive` instance: only if `it` is productive

Depending on `P`, it is possible that `it.takeWhileM P` is finite (or productive) although `it` is not.
In this case, the `Finite` (or `Productive`) instance needs to be proved manually.

**Performance:**

This combinator calls `P` on each output of `it` until the predicate evaluates to false. Then
it terminates.
-/
@[always_inline, inline]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TakeWhile/Variantbbb950a6956e1c18525744fc07ac9157440c3e262e15916bbfdeb21b8ee57bdb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TakeWhile/Variantbbb950a6956e1c18525744fc07ac9157440c3e262e15916bbfdeb21b8ee57bdb.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83edc6fa9f5e557c85ab815c95069b378e89fb73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

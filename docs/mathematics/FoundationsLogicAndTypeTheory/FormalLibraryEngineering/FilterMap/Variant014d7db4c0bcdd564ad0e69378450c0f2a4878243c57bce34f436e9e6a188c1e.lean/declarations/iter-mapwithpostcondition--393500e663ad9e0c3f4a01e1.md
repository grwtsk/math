# Iter.mapWithPostcondition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2c343799408de956903091643d2d1628a67231e8a67a3e410ef31cc677b62041",
  "kind": "def",
  "lexical_name": "Iter.mapWithPostcondition",
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
  "slug": "iter-mapwithpostcondition--393500e663ad9e0c3f4a01e1",
  "source": {
    "blob": "46ea3b13a037e03bb23261b9b0a595531982bc6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 173,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant014d7db4c0bcdd564ad0e69378450c0f2a4878243c57bce34f436e9e6a188c1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:393500e663ad9e0c3f4a01e1694d1e2ab1394067b9ef513af1063d85b72decb5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant014d7db4c0bcdd564ad0e69378450c0f2a4878243c57bce34f436e9e6a188c1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2c343799408de956903091643d2d1628a67231e8a67a3e410ef31cc677b62041`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def Iter.mapWithPostcondition {α β γ : Type w} [Iterator α Id β] {m : Type w → Type w'}
    [Monad m] (f : β → PostconditionT m γ) (it : Iter (α := α) β) :=
  (letI : MonadLift Id m := ⟨pure⟩; it.toIterM.mapWithPostcondition f : IterM m γ)

/--
If `it` is an iterator, then `it.filterMapM f` is another iterator that applies a monadic
function `f` to all values emitted by `it`. `f` is expected to return an `Option` inside the monad.
If `f` returns `none`, then nothing is emitted; if it returns `some x`, then `x` is emitted.

If `f` is pure, then the simpler variant `it.filterMap` can be used instead.

**Marble diagram (without monadic effects):**

```text
it                ---a --b--c --d-e--⊥
it.filterMapM     ---a'-----c'-------⊥
```

(given that `f a = pure (some a)'`, `f c = pure (some c')` and `f b = f d = d e = pure none`)

**Termination properties:**

* `Finite` instance: only if `it` is finite
* `Productive` instance: only if `it` is finite`

For certain mapping functions `f`, the resulting iterator will be finite (or productive) even though
no `Finite` (or `Productive`) instance is provided. For example, if `f` never returns `none`, then
this combinator will preserve productiveness. If `f` is an `ExceptT` monad and will always fail,
then `it.filterMapM` will be finite even if `it` isn't. In such cases, the termination proof needs
to be done manually.

**Performance:**

For each value emitted by the base iterator `it`, this combinator calls `f` and matches on the
returned `Option` value.
-/
@[always_inline, inline, expose]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant014d7db4c0bcdd564ad0e69378450c0f2a4878243c57bce34f436e9e6a188c1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant014d7db4c0bcdd564ad0e69378450c0f2a4878243c57bce34f436e9e6a188c1e.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46ea3b13a037e03bb23261b9b0a595531982bc6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

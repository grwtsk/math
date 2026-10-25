# IterM.mapM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5570d109690c1e1f448902fd8bef1a6e32c37d4cfda5e9b2c4aac9ba1ea13982",
  "kind": "def",
  "lexical_name": "IterM.mapM",
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
  "slug": "iterm-mapm--edf76adc7dc04a77b715f83e",
  "source": {
    "blob": "8aac50835fee9199d25bf9772470f748d0879e50",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 448,
    "line": 412,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant6f273e26fca3aa7e96ea835edbe822671fdc76fd7dcdbaf007fd2d5e17f73f35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:edf76adc7dc04a77b715f83ee5128559f0e465b77a779323933fdeaeec1404a6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant6f273e26fca3aa7e96ea835edbe822671fdc76fd7dcdbaf007fd2d5e17f73f35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5570d109690c1e1f448902fd8bef1a6e32c37d4cfda5e9b2c4aac9ba1ea13982`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 412–448.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def IterM.mapM {α β γ : Type w} {m : Type w → Type w'} {n : Type w → Type w''} [Iterator α m β]
    [Monad n] [MonadAttach n] [MonadLiftT m n] (f : β → n γ) (it : IterM (α := α) m β) :=
  (it.mapWithPostcondition (fun b => PostconditionT.attachLift (f b)) : IterM n γ)

/--
If `it` is an iterator, then `it.filterM f` is another iterator that applies a monadic
predicate `f` to all values emitted by `it` and emits them only if they are accepted by `f`.

The base iterator `it` being monadic in `m`, `f` can return values in any monad `n` for which a
`MonadLiftT m n` instance is available.

If `f` is pure, then the simpler variant `it.filter` can be used instead.

**Marble diagram (without monadic effects):**

```text
it             ---a--b--c--d-e--⊥
it.filterM     ---a-----c-------⊥
```

(given that `f a = f c = pure true` and `f b = f d = d e = pure false`)

**Termination properties:**

* `Finite` instance: only if `it` is finite
* `Productive` instance: only if `it` is finite`

For certain mapping functions `f`, the resulting iterator will be finite (or productive) even though
no `Finite` (or `Productive`) instance is provided. For example, if `f` is an `ExceptT` monad and
will always fail, then `it.filterWithPostcondition` will be finite -- and productive -- even if `it`
isn't. In such cases, the termination proof needs to be done manually.

**Performance:**

For each value emitted by the base iterator `it`, this combinator calls `f`.
-/
@[inline, expose]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant6f273e26fca3aa7e96ea835edbe822671fdc76fd7dcdbaf007fd2d5e17f73f35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant6f273e26fca3aa7e96ea835edbe822671fdc76fd7dcdbaf007fd2d5e17f73f35.lean#L412).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8aac50835fee9199d25bf9772470f748d0879e50` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

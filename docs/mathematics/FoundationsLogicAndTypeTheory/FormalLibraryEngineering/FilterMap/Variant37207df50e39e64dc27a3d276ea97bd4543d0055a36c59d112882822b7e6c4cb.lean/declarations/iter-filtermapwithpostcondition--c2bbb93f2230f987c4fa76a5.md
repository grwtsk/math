# Iter.filterMapWithPostcondition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d414f0ffce4262d2a20a862db590dd027e86db0c16d51883fc673048d1a7b552",
  "kind": "def",
  "lexical_name": "Iter.filterMapWithPostcondition",
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
  "slug": "iter-filtermapwithpostcondition--c2bbb93f2230f987c4fa76a5",
  "source": {
    "blob": "4b1035935bd9a89e292342d5d0b7f76e855ae977",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 92,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant37207df50e39e64dc27a3d276ea97bd4543d0055a36c59d112882822b7e6c4cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c2bbb93f2230f987c4fa76a53cff5c5b0c8ea73a7abf46397cc6b53854180c8c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant37207df50e39e64dc27a3d276ea97bd4543d0055a36c59d112882822b7e6c4cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d414f0ffce4262d2a20a862db590dd027e86db0c16d51883fc673048d1a7b552`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def Iter.filterMapWithPostcondition {α β γ : Type w} [Iterator α Id β] {m : Type w → Type w'}
    [Monad m] (f : β → PostconditionT m (Option γ)) (it : Iter (α := α) β) :=
  (letI : MonadLift Id m := ⟨pure⟩; it.toIterM.filterMapWithPostcondition f : IterM m γ)

/--
*Note: This is a very general combinator that requires an advanced understanding of monads,
dependent types and termination proofs. The variants `filter` and `filterM` are easier to use and
sufficient for most use cases.*

If `it` is an iterator, then `it.filterWithPostcondition f` is another iterator that applies a monadic
predicate `f` to all values emitted by `it` and emits them only if they are accepted by `f`.

`f` is expected to return `PostconditionT n (ULift Bool)`, where `n` is an arbitrary monad.
The `PostconditionT` transformer allows the caller to intrinsically prove properties about
`f`'s return value in the monad `n`, enabling termination proofs depending on the specific behavior
of `f`.

**Marble diagram (without monadic effects):**

```text
it                             ---a--b--c--d-e--⊥
it.filterWithPostcondition     ---a-----c-------⊥
```

(given that `f a = f c = pure true` and `f b = f d = d e = pure false`)

**Termination properties:**

* `Finite` instance: only if `it` is finite
* `Productive` instance: only if `it` is finite`

For certain mapping functions `f`, the resulting iterator will be finite (or productive) even though
no `Finite` (or `Productive`) instance is provided. For example, if `f` is an `ExceptT` monad and
will always fail, then `it.filterWithPostcondition` will be finite -- and productive -- even if `it`
isn't.

In such situations, the missing instances can be proved manually if the postcondition bundled in
the `PostconditionT n` monad is strong enough. In the given example, a suitable postcondition might
be `fun _ => False`.

**Performance:**

For each value emitted by the base iterator `it`, this combinator calls `f`.
-/
@[always_inline, inline, expose]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant37207df50e39e64dc27a3d276ea97bd4543d0055a36c59d112882822b7e6c4cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant37207df50e39e64dc27a3d276ea97bd4543d0055a36c59d112882822b7e6c4cb.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b1035935bd9a89e292342d5d0b7f76e855ae977` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

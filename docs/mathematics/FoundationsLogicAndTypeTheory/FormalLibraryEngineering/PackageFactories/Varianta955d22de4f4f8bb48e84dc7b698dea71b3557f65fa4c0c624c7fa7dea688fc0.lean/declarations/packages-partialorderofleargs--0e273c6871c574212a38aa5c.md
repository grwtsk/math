# Packages.PartialOrderOfLEArgs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b960a43705b334ddb7d7c6f7adecdb63894fc6de2de63b5533f003d874f392cc",
  "kind": "structure",
  "lexical_name": "Packages.PartialOrderOfLEArgs",
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
  "slug": "packages-partialorderofleargs--0e273c6871c574212a38aa5c",
  "source": {
    "blob": "61847d5701875a777a106c652cabd4acfbb87ca4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 203,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Varianta955d22de4f4f8bb48e84dc7b698dea71b3557f65fa4c0c624c7fa7dea688fc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0e273c6871c574212a38aa5cc913448890df32aac0d572bb20e43299c3ea5a83",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Varianta955d22de4f4f8bb48e84dc7b698dea71b3557f65fa4c0c624c7fa7dea688fc0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b960a43705b334ddb7d7c6f7adecdb63894fc6de2de63b5533f003d874f392cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
public structure Packages.PartialOrderOfLEArgs (α : Type u) extends Packages.PreorderOfLEArgs α where
  le_antisymm :
      let := le
      ∀ a b : α, a ≤ b → b ≤ a → a = b := by
    extract_lets
    first
    | exact _root_.Std.Antisymm.antisymm
    | fail "Failed to automatically prove that the `LE` instance is antisymmetric. \
            Please ensure that a `Antisymm` instance can be synthesized or \
            manually provide the field `le_antisymm`."

/-
Use this factory to conveniently define a partial order on a type `α` and all the associated
operations and instances given an `LE α` instance.

Creates a `PartialOrderPackage α` instance. Such an instance entails `LE α`, `LT α` and
`BEq α` instances as well as an `IsPartialOrder α` instance and `LawfulOrder*` instances proving the
compatibility of the operations with the preorder.

In the presence of `LE α`, `DecidableLE α`, `Refl (· ≤ ·)`, `Trans (· ≤ ·) (· ≤ ·) (· ≤ ·)`
and `Antisymm (· ≤ ·)` instances, no arguments are required and the factory can be used as in this
example:

```lean
public instance : PartialOrderPackage X := .ofLE X
```

If not all of these instances are available via typeclass synthesis, it is necessary to explicitly
provide some arguments:

```lean
public instance : PartialOrderPackage X := .ofLE X {
  le_refl := sorry
  le_trans := sorry
  le_antisymm := sorry }
```

It is also possible to do all of this by hand, without resorting to `PartialOrderPackage`. This can
be useful if, say, one wants to avoid specifying an `LT α` instance, which is not possible with
`PartialOrderPackage`.

**How the arguments are filled**

Lean tries to fill all of the fields of the `args : Packages.PartialOrderOfLEArgs α` parameter
automatically. If it fails, it is necessary to provide some of the fields manually.

* For the data-carrying typeclasses `LE`, `LT` and `BEq`, existing instances are always preferred.
  If no existing instances can be synthesized, it is attempted to derive an instance from the `LE`
  instance.
* Some proof obligations can be filled automatically if the data-carrying typeclasses have been
  derived from the `LE` instance. For example: If the `beq` field is omitted and no `BEq α` instance
  can be synthesized, it is derived from the `LE α` instance. In this case, `beq_iff_le_and_ge` can be
  omitted because Lean can infer that `BEq α` and `LE α` are compatible.
* Other proof obligations, namely `le_refl`, `le_trans` and `le_antisymm`, can be omitted if `Refl`,
  `Trans` and `Antisymm` instances can be synthesized.
-/
@[inline, expose, instance_reducible]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Varianta955d22de4f4f8bb48e84dc7b698dea71b3557f65fa4c0c624c7fa7dea688fc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Varianta955d22de4f4f8bb48e84dc7b698dea71b3557f65fa4c0c624c7fa7dea688fc0.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61847d5701875a777a106c652cabd4acfbb87ca4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# Packages.LinearOrderOfLEArgs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f01b9a76de68439de1f069dcbe14b4f5a835aef87675db40ea97abce5766d3ba",
  "kind": "structure",
  "lexical_name": "Packages.LinearOrderOfLEArgs",
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
  "slug": "packages-linearorderofleargs--e45cf74d76748c969566a653",
  "source": {
    "blob": "61847d5701875a777a106c652cabd4acfbb87ca4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 490,
    "line": 410,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Varianta955d22de4f4f8bb48e84dc7b698dea71b3557f65fa4c0c624c7fa7dea688fc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e45cf74d76748c969566a65352672f1d1cdad7e292186f696a6782f10078580b",
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

Occurrence: `declaration:f01b9a76de68439de1f069dcbe14b4f5a835aef87675db40ea97abce5766d3ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 410–490.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
public structure Packages.LinearOrderOfLEArgs (α : Type u) extends
    LinearPreorderOfLEArgs α, PartialOrderOfLEArgs α where
  min :
      let := le; let := decidableLE
      Min α := by
    extract_lets
    first
    | infer_instance
    | exact _root_.Min.leftLeaningOfLE _
  max :
      let := le; let := decidableLE
      Max α := by
    extract_lets
    first
    | infer_instance
    | exact _root_.Max.leftLeaningOfLE _
  min_eq :
      let := le; let := decidableLE; let := min
      ∀ a b : α, Min.min a b = if a ≤ b then a else b := by
    extract_lets
    first
    | exact fun a b => _root_.Std.min_eq_if (a := a) (b := b)
    | fail "Failed to automatically prove that `min` is left-leaning. \
            Please ensure that a `LawfulOrderLeftLeaningMin` instance can be synthesized or \
            manually provide the field `min_eq`."
  max_eq :
      let := le; let := decidableLE; let := max
      ∀ a b : α, Max.max a b = if b ≤ a then a else b := by
    extract_lets
    first
    | exact fun a b => _root_.Std.max_eq_if (a := a) (b := b)
    | fail "Failed to automatically prove that `max` is left-leaning. \
            Please ensure that a `LawfulOrderLeftLeaningMax` instance can be synthesized or \
            manually provide the field `max_eq`."

/--
Use this factory to conveniently define a linear order on a type `α` and all the associated
operations and instances given an `LE α` instance.

Creates a `LinearOrderPackage α` instance. Such an instance entails `LE α`, `LT α`, `BEq α`,
`Ord α`, `Min α` and `Max α` instances as well as an `IsLinearOrder α` instance and `LawfulOrder*`
instances proving the compatibility of the operations with the linear order.

In the presence of `LE α`, `DecidableLE α`, `Total (· ≤ ·)`, `Trans (· ≤ ·) (· ≤ ·) (· ≤ ·)` and
`Antisymm (· ≤ ·)` instances, no arguments are required and the factory can be used as in this
example:

```lean
public instance : LinearOrderPackage X := .ofLE X
```

If not all of these instances are available via typeclass synthesis, it is necessary to explicitly
provide some arguments:

```lean
public instance : LinearOrderPackage X := .ofLE X {
  le_total := sorry
  le_trans := sorry
  le_antisymm := sorry }
```

It is also possible to do all of this by hand, without resorting to `LinearOrderPackage`. This
can be useful if, say, one wants to avoid specifying an `LT α` instance, which is not possible with
`LinearOrderPackage`.

**How the arguments are filled**

Lean tries to fill all of the fields of the `args : Packages.LinearOrderOfLEArgs α` parameter
automatically. If it fails, it is necessary to provide some of the fields manually.

* For the data-carrying typeclasses `LE`, `LT`, `BEq`, `Ord`, `Min` and `Max`, existing instances
  are always preferred. If no existing instances can be synthesized, it is attempted to derive an
  instance from the `LE` instance.
* Some proof obligations can be filled automatically if the data-carrying typeclasses have been
  derived from the `LE` instance. For example: If the `beq` field is omitted and no `BEq α` instance
  can be synthesized, it is derived from the `LE α` instance. In this case, `beq_iff_le_and_ge` can be
  omitted because Lean can infer that `BEq α` and `LE α` are compatible.
* Other proof obligations, namely `le_total`, `le_trans` and `le_antisymm`, can be omitted if
  `Total`, `Trans` and `Antisymm` instances can be synthesized.
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Varianta955d22de4f4f8bb48e84dc7b698dea71b3557f65fa4c0c624c7fa7dea688fc0.lean#L410).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61847d5701875a777a106c652cabd4acfbb87ca4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

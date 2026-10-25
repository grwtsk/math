# Packages.LinearOrderOfOrdArgs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d7b2330896cd4036397100d9c14ece48d1fb835ea2f5a5e62e1eb8d645cc3af8",
  "kind": "structure",
  "lexical_name": "Packages.LinearOrderOfOrdArgs",
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
  "slug": "packages-linearorderofordargs--9bf4aa956bc16fda481a803c",
  "source": {
    "blob": "a42524b496ee160e7d70bc76f9f002fa7d80b8cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 804,
    "line": 716,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Variant47716c34d48a3245df0a94d399213bb5ae75313731c23d40022c4f97863fa8c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9bf4aa956bc16fda481a803c745c72976bacc08651b4f18e85e5d0ad3538c1cd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Variant47716c34d48a3245df0a94d399213bb5ae75313731c23d40022c4f97863fa8c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d7b2330896cd4036397100d9c14ece48d1fb835ea2f5a5e62e1eb8d645cc3af8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 716–804.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
public structure Packages.LinearOrderOfOrdArgs (α : Type u) extends
    LinearPreorderOfOrdArgs α where
  eq_of_compare :
      let := ord; let := le
      ∀ a b : α, compare a b = .eq → a = b := by
    extract_lets
    first
    | exact fun _ _ => _root_.Std.LawfulEqOrd.eq_of_compare
    | fail "Failed to derive a `LawfulEqOrd` instance. \
            Please make sure that it can be synthesized or \
            manually provide the field `eq_of_compare`."
  min :
      let := ord
      Min α := by
    extract_lets
    first
    | infer_instance
    | exact _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PreorderPackage.Varianta955d22de4f4f8bb48e84dc7b698dea71b3557f65fa4c0c624c7fa7dea688fc0.Std.FactoryInstances.instMinOfOrd
  max :
      let := ord
      Max α := by
    extract_lets
    first
    | infer_instance
    | exact _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PreorderPackage.Varianta955d22de4f4f8bb48e84dc7b698dea71b3557f65fa4c0c624c7fa7dea688fc0.Std.FactoryInstances.instMaxOfOrd
  min_eq :
      let := ord; let := le; let := min; have := lawfulOrderOrd
      ∀ a b : α, Min.min a b = if (compare a b).isLE then a else b := by
    extract_lets
    first
    | exact fun a b => _root_.Std.min_eq_if_isLE_compare (a := a) (b := b)
    | fail "Failed to automatically prove that `min` is left-leaning. \
            Please ensure that a `LawfulOrderLeftLeaningMin` instance can be synthesized or \
            manually provide the field `min_eq`."
  max_eq :
      let := ord; let := le; let := max; have := lawfulOrderOrd
      ∀ a b : α, Max.max a b = if (compare a b).isGE then a else b := by
    extract_lets
    first
    | exact fun a b => _root_.Std.max_eq_if_isGE_compare (a := a) (b := b)
    | fail "Failed to automatically prove that `max` is left-leaning. \
            Please ensure that a `LawfulOrderLeftLeaningMax` instance can be synthesized or \
            manually provide the field `max_eq`."

/--
Use this factory to conveniently define a linear order on a type `α` and all the associated
operations and instances given an `Ord α` instance.

Creates a `LinearOrderPackage α` instance. Such an instance entails `LE α`, `LT α`, `BEq α`,
`Ord α`, `Min α` and `Max α` instances as well as an `IsLinearOrder α` instance and `LawfulOrder*`
instances proving the compatibility of the operations with the linear order.

In the presence of `Ord α`, `TransOrd α` and `LawfulEqOrd α` instances, no arguments are required
and the factory can be used as in this
example:

```lean
public instance : LinearOrderPackage X := .ofLE X
```

If not all of these instances are available via typeclass synthesis, it is necessary to explicitly
provide some arguments:

```lean
public instance : LinearOrderPackage X := .ofLE X {
  transOrd := sorry
  eq_of_compare := sorry }
```

It is also possible to do all of this by hand, without resorting to `LinearOrderPackage`. This
can be useful if, say, one wants to avoid specifying an `LT α` instance, which is not possible with
`LinearOrderPackage`.

**How the arguments are filled**

Lean tries to fill all of the fields of the `args : Packages.LinearOrderOfLEArgs α` parameter
automatically. If it fails, it is necessary to provide some of the fields manually.

* For the data-carrying typeclasses `LE`, `LT`, `BEq`, `Ord`, `Min` and `Max`, existing instances
  are always preferred. If no existing instances can be synthesized, it is attempted to derive an
  instance from the `Ord` instance.
* Some proof obligations can be filled automatically if the data-carrying typeclasses have been
  derived from the `Ord` instance. For example: If the `beq` field is omitted and no `BEq α` instance
  can be synthesized, it is derived from the `LE α` instance. In this case, `beq_iff`
  can be omitted because Lean can infer that `BEq α` and `Ord α` are compatible.
* Other proof obligations, such as `transOrd`, can be omitted if matching instances can be
  synthesized.
-/
@[inline, expose, instance_reducible]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Variant47716c34d48a3245df0a94d399213bb5ae75313731c23d40022c4f97863fa8c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Variant47716c34d48a3245df0a94d399213bb5ae75313731c23d40022c4f97863fa8c3.lean#L716).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a42524b496ee160e7d70bc76f9f002fa7d80b8cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

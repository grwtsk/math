# Packages.LinearPreorderOfLEArgs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:404282afbb4e852e19a4ce7650c2f93993a0671827f85ae9d5357374a479dec4",
  "kind": "structure",
  "lexical_name": "Packages.LinearPreorderOfLEArgs",
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
  "slug": "packages-linearpreorderofleargs--21f6d33d543d824f722cf80e",
  "source": {
    "blob": "a42524b496ee160e7d70bc76f9f002fa7d80b8cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 396,
    "line": 317,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Variant47716c34d48a3245df0a94d399213bb5ae75313731c23d40022c4f97863fa8c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:21f6d33d543d824f722cf80ee8630fa3af723e414edc6bd0fee1fc8b9f8d471f",
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

Occurrence: `declaration:404282afbb4e852e19a4ce7650c2f93993a0671827f85ae9d5357374a479dec4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–396.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
public structure Packages.LinearPreorderOfLEArgs (α : Type u) extends
    PreorderOfLEArgs α where
  ord :
      let := le; let := decidableLE
      Ord α := by
    extract_lets
    first
    | infer_instance
    | exact _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PreorderPackage.Varianta955d22de4f4f8bb48e84dc7b698dea71b3557f65fa4c0c624c7fa7dea688fc0.Std.FactoryInstances.instOrdOfDecidableLE
  le_total :
      ∀ a b : α, a ≤ b ∨ b ≤ a := by
    first
    | exact _root_.Std.Total.total
    | fail "Failed to automatically prove that the `LE` instance is total. \
            Please ensure that a `Total` instance can be synthesized or \
            manually provide the field `le_total`."
  le_refl a := (by simpa using le_total a a)
  isLE_compare :
      let := le; let := decidableLE; let := ord
      ∀ a b : α, (compare a b).isLE ↔ a ≤ b := by
    extract_lets
    first
    | exact _root_.Std.LawfulOrderOrd.isLE_compare
    | fail "Failed to automatically prove that `(compare a b).isLE` is equivalent to `a ≤ b`. \
            Please ensure that a `LawfulOrderOrd` instance can be synthesized or \
            manually provide the field `isLE_compare`."
  isGE_compare :
      let := le; let := decidableLE; have := le_total; let := ord
      ∀ a b : α, (compare a b).isGE ↔ b ≤ a := by
    extract_lets
    first
    | exact _root_.Std.LawfulOrderOrd.isGE_compare
    | fail "Failed to automatically prove that `(compare a b).isGE` is equivalent to `b ≤ a`. \
            Please ensure that a `LawfulOrderOrd` instance can be synthesized or \
            manually provide the field `isGE_compare`."

/--
Use this factory to conveniently define a linear preorder on a type `α` and all the associated
operations and instances given an `LE α` instance.

Creates a `LinearPreorderPackage α` instance. Such an instance entails `LE α`, `LT α`, `BEq α` and
`Ord α` instances as well as an `IsLinearPreorder α` instance and `LawfulOrder*` instances proving
the compatibility of the operations with the linear preorder.

In the presence of `LE α`, `DecidableLE α`, `Total (· ≤ ·)` and `Trans (· ≤ ·) (· ≤ ·) (· ≤ ·)`
instances, no arguments are required and the factory can be used as in this example:

```lean
public instance : LinearPreorderPackage X := .ofLE X
```

If not all of these instances are available via typeclass synthesis, it is necessary to explicitly
provide some arguments:

```lean
public instance : LinearPreorderPackage X := .ofLE X {
  le_total := sorry
  le_trans := sorry }
```

It is also possible to do all of this by hand, without resorting to `LinearPreorderPackage`. This
can be useful if, say, one wants to avoid specifying an `LT α` instance, which is not possible with
`LinearPreorderPackage`.

**How the arguments are filled**

Lean tries to fill all of the fields of the `args : Packages.LinearPreorderOfLEArgs α` parameter
automatically. If it fails, it is necessary to provide some of the fields manually.

* For the data-carrying typeclasses `LE`, `LT`, `BEq` and `Ord`, existing instances are always
  preferred. If no existing instances can be synthesized, it is attempted to derive an instance from
  the `LE` instance.
* Some proof obligations can be filled automatically if the data-carrying typeclasses have been
  derived from the `LE` instance. For example: If the `beq` field is omitted and no `BEq α` instance
  can be synthesized, it is derived from the `LE α` instance. In this case, `beq_iff_le_and_ge` can be
  omitted because Lean can infer that `BEq α` and `LE α` are compatible.
* Other proof obligations, namely `le_total` and `le_trans`, can be omitted if `Total` and `Trans`
  instances can be synthesized.
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Variant47716c34d48a3245df0a94d399213bb5ae75313731c23d40022c4f97863fa8c3.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a42524b496ee160e7d70bc76f9f002fa7d80b8cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# Packages.LinearPreorderOfOrdArgs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:33afefe8bc379784c4213aee662fc6bd4a5ba638debca97a4be734c1b4e6a46a",
  "kind": "structure",
  "lexical_name": "Packages.LinearPreorderOfOrdArgs",
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
  "slug": "packages-linearpreorderofordargs--9e252a55b3909550f0d36405",
  "source": {
    "blob": "61847d5701875a777a106c652cabd4acfbb87ca4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 650,
    "line": 536,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Varianta955d22de4f4f8bb48e84dc7b698dea71b3557f65fa4c0c624c7fa7dea688fc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9e252a55b3909550f0d36405814e51b1b47ce0aa3cc8afd7b605c9ece47340a9",
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

Occurrence: `declaration:33afefe8bc379784c4213aee662fc6bd4a5ba638debca97a4be734c1b4e6a46a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 536–650.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
public structure Packages.LinearPreorderOfOrdArgs (α : Type u) where
  ord : Ord α := by infer_instance
  transOrd  : TransOrd α := by infer_instance
  le :
      let := ord
      LE α := by
    extract_lets
    first
    | infer_instance
    | exact _root_.LE.ofOrd _
  lawfulOrderOrd :
      let := ord; let := transOrd; let := le
      LawfulOrderOrd α := by
    extract_lets
    first
    | infer_instance
    | fail "Failed to automatically derive a `LawfulOrderOrd` instance. \
            Please ensure that the instance can be synthesized or \
            manually provide the field `lawfulOrderOrd`."
  decidableLE :
      let := ord; let := le; have := lawfulOrderOrd
      DecidableLE α := by
    extract_lets
    first
    | infer_instance
    | exact _root_.DecidableLE.ofOrd _
    | fail "Failed to automatically derive that `LE` is decidable.\
            Please ensure that a `DecidableLE` instance can be synthesized or \
            manually provide the field `decidableLE`."
  lt :
      let := ord
      LT α := by
    extract_lets
    first
    | infer_instance
    | exact LT.ofOrd _
  lt_iff :
      let := ord; let := le; have := lawfulOrderOrd; let := lt
      ∀ a b : α, a < b ↔ compare a b = .lt := by
    extract_lets
    first
    | exact fun _ _ => _root_.Std.compare_eq_lt.symm
    | fail "Failed to automatically derive that `LT` and `Ord` are compatible. \
            Please ensure that a `LawfulOrderLT` instance can be synthesized or \
            manually provide the field `lt_iff`."
  decidableLT :
      let := ord; let := lt; let := le; have := lawfulOrderOrd; have := lt_iff
      DecidableLT α := by
    extract_lets
    first
    | infer_instance
    | exact _root_DecidableLT.ofOrd _
    | fail "Failed to automatically derive that `LT` is decidable. \
            Please ensure that a `DecidableLT` instance can be synthesized or \
            manually provide the field `decidableLT`."
  beq :
      let := ord; BEq α := by
    extract_lets
    first
    | infer_instance
    | exact _root_.BEq.ofOrd _
  beq_iff :
      let := ord; let := le; have := lawfulOrderOrd; let := beq
      ∀ a b : α, a == b ↔ compare a b = .eq := by
    extract_lets
    first
    | exact fun _ _ => Std.compare_eq_eq.symm
    | fail "Failed to automatically derive that `BEq` and `Ord` are compatible. \
            Please ensure that a `LawfulOrderBEq` instance can be synthesized or \
            manually provide the field `beq_iff`."

/--
Use this factory to conveniently define a linear preorder on a type `α` and all the associated
operations and instances given an `Ord α` instance.

Creates a `LinearPreorderPackage α` instance. Such an instance entails `LE α`, `LT α`, `BEq α` and
`Ord α` instances as well as an `IsLinearPreorder α` instance and `LawfulOrder*` instances proving
the compatibility of the operations with the linear preorder.

In the presence of `Ord α` and `TransOrd α` instances, no arguments are required and the factory can
be used as in this example:

```lean
public instance : LinearPreorderPackage X := .ofOrd X
```

If not all of these instances are available via typeclass synthesis, it is necessary to explicitly
provide some arguments:

```lean
public instance : LinearPreorderPackage X := .ofOrd X {
  ord := sorry
  transOrd := sorry }
```

It is also possible to do all of this by hand, without resorting to `LinearPreorderPackage`. This
can be useful if, say, one wants to avoid specifying an `LT α` instance, which is not possible with
`LinearPreorderPackage`.

**How the arguments are filled**

Lean tries to fill all of the fields of the `args : Packages.LinearPreorderOfOrdArgs α` parameter
automatically. If it fails, it is necessary to provide some of the fields manually.

* For the data-carrying typeclasses `LE`, `LT`, `BEq` and `Ord`, existing instances are always
  preferred. If no existing instances can be synthesized, it is attempted to derive an instance from
  the `Ord` instance.
* Some proof obligations can be filled automatically if the data-carrying typeclasses have been
  derived from the `Ord` instance. For example: If the `beq` field is omitted and no `BEq α` instance
  can be synthesized, it is derived from the `Ord α` instance. In this case, `beq_iff`
  can be omitted because Lean can infer that `BEq α` and `Ord α` are compatible.
* Other proof obligations, for example `transOrd`, can be omitted if a matching instance can be
  synthesized.
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackageFactories/Varianta955d22de4f4f8bb48e84dc7b698dea71b3557f65fa4c0c624c7fa7dea688fc0.lean#L536).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61847d5701875a777a106c652cabd4acfbb87ca4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

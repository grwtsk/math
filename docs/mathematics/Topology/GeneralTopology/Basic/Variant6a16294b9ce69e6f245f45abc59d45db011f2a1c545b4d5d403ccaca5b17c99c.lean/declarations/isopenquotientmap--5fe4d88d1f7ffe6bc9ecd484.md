# IsOpenQuotientMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2483f48ee6bfefa8b19c9369140117fc347205f9ba33bc2d43bba90e222d3ce0",
  "kind": "structure",
  "lexical_name": "IsOpenQuotientMap",
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
  "slug": "isopenquotientmap--5fe4d88d1f7ffe6bc9ecd484",
  "source": {
    "blob": "326105821a5a8ce5041ccf8dce22779bd55fa923",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 182,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant6a16294b9ce69e6f245f45abc59d45db011f2a1c545b4d5d403ccaca5b17c99c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5fe4d88d1f7ffe6bc9ecd48480bf0ce236c681bdaea3cee6fc0c03ee48e96c32",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant6a16294b9ce69e6f245f45abc59d45db011f2a1c545b4d5d403ccaca5b17c99c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2483f48ee6bfefa8b19c9369140117fc347205f9ba33bc2d43bba90e222d3ce0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure IsOpenQuotientMap (f : X → Y) : Prop where
  /-- An open quotient map is surjective. -/
  surjective : Function.Surjective f
  /-- An open quotient map is continuous. -/
  continuous : Continuous f
  /-- An open quotient map is an open map. -/
  isOpenMap : IsOpenMap f

end Defs

/-! ### Notation for non-standard topologies -/

namespace Topology

/-- Notation for `IsOpen` with respect to a non-standard topology. -/
scoped notation (name := IsOpen_of) "IsOpen[" t "]" => @IsOpen _ t

/-- Notation for `IsClosed` with respect to a non-standard topology. -/
scoped notation (name := IsClosed_of) "IsClosed[" t "]" => @IsClosed _ t

/-- Notation for `IsClopen` with respect to a non-standard topology. -/
scoped notation (name := IsClopen_of) "IsClopen[" t "]" => @IsClopen _ t

/-- Notation for `closure` with respect to a non-standard topology. -/
scoped notation (name := closure_of) "closure[" t "]" => @closure _ t

/-- Notation for `Continuous` with respect to non-standard topologies. -/
scoped notation (name := Continuous_of) "Continuous[" t₁ ", " t₂ "]" =>
  @Continuous _ _ t₁ t₂

open Lean.PrettyPrinter.Delaborator Delab.Noncanonical

/-- Delaborator for `IsOpen[_]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant6a16294b9ce69e6f245f45abc59d45db011f2a1c545b4d5d403ccaca5b17c99c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant6a16294b9ce69e6f245f45abc59d45db011f2a1c545b4d5d403ccaca5b17c99c.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `326105821a5a8ce5041ccf8dce22779bd55fa923` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

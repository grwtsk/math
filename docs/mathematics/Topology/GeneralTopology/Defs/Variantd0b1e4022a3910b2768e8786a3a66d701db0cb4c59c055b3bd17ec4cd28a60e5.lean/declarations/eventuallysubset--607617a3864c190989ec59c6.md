# EventuallySubset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c57ae59f3c1792f723d7fd747c4084b77e12768b098f7a8c40ec0ab30a53ecab",
  "kind": "def",
  "lexical_name": "EventuallySubset",
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
  "slug": "eventuallysubset--607617a3864c190989ec59c6",
  "source": {
    "blob": "760285d16af8795fa73313254a28aa651c9d0883",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 318,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variantd0b1e4022a3910b2768e8786a3a66d701db0cb4c59c055b3bd17ec4cd28a60e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:607617a3864c190989ec59c6577afcc306b7232d24727b9f532bcdca8f0d790e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variantd0b1e4022a3910b2768e8786a3a66d701db0cb4c59c055b3bd17ec4cd28a60e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c57ae59f3c1792f723d7fd747c4084b77e12768b098f7a8c40ec0ab30a53ecab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def EventuallySubset (l : Filter α) (s t : Set α) : Prop :=
  EventuallyLE l (fun x => x ∈ s) (fun x => x ∈ t)

/-- `x =ᶠ[l] y` means that `x` and `y` are *eventually equal* along the filter `l`.

This is `Filter.EventuallyEq l x y` if `x` is a function or `Filter.EventuallyEqSet l x y` if `x`
is a set. -/
syntax:50 (name := eventuallyEqStx) term:51 " =ᶠ[" term "] " term:50 : term

/-- `x ≤ᶠ[l] y` means that `x` is *eventually less than or equal to* `y` along the filter `l`.

This is `Filter.EventuallyLE l x y` if `x` is a function and `Filter.EventuallySubset l x y` if `x`
is a set. -/
syntax:50 (name := eventuallyLEStx) term:51 " ≤ᶠ[" term "] " term:50 : term

open Lean Elab Term Meta in
/-- Elaborate the left-hand side `x` of an `x =ᶠ[l] y` / `x ≤ᶠ[l] y` on its own, dispatching on
whether its type is a `Set`. If the type is not yet known (e.g. `x` is the `_` of a `calc` step),
consult the right-hand side `y` instead. Returns the elaborated sides turned back into syntax
together with whether they should be interpreted as sets. If `y` is not consulted, it is returned
unelaborated. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variantd0b1e4022a3910b2768e8786a3a66d701db0cb4c59c055b3bd17ec4cd28a60e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variantd0b1e4022a3910b2768e8786a3a66d701db0cb4c59c055b3bd17ec4cd28a60e5.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `760285d16af8795fa73313254a28aa651c9d0883` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

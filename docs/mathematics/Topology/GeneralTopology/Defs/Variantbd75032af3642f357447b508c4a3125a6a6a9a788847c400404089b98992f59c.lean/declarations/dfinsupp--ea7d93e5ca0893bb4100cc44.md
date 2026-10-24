# DFinsupp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5222d0c77a2df41cb2528d02230a7778278386e91fba59347a7dca4e3e868b81",
  "kind": "structure",
  "lexical_name": "DFinsupp",
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
  "slug": "dfinsupp--ea7d93e5ca0893bb4100cc44",
  "source": {
    "blob": "2c4f0537cd074228bcd759c3f288cdade0fc2959",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 65,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variantbd75032af3642f357447b508c4a3125a6a6a9a788847c400404089b98992f59c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ea7d93e5ca0893bb4100cc446939697931aeb72d91bb3c35f1ed9ad20a4a2e16",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variantbd75032af3642f357447b508c4a3125a6a6a9a788847c400404089b98992f59c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5222d0c77a2df41cb2528d02230a7778278386e91fba59347a7dca4e3e868b81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DFinsupp [∀ i, Zero (β i)] : Type max u v where mk' ::
  /-- The underlying function of a dependent function with finite support (aka `DFinsupp`). -/
  toFun : ∀ i, β i
  /-- The support of a dependent function with finite support (aka `DFinsupp`). -/
  support' : Trunc { s : Multiset ι // ∀ i, i ∈ s ∨ toFun i = 0 }

/-- `Π₀ i, β i` denotes the type of dependent functions with finite support `DFinsupp β`. -/
notation3 "Π₀ "(...)", "r:(scoped f => DFinsupp f) => r

namespace DFinsupp

section Basic

variable [∀ i, Zero (β i)] [∀ i, Zero (β₁ i)] [∀ i, Zero (β₂ i)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variantbd75032af3642f357447b508c4a3125a6a6a9a788847c400404089b98992f59c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variantbd75032af3642f357447b508c4a3125a6a6a9a788847c400404089b98992f59c.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c4f0537cd074228bcd759c3f288cdade0fc2959` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

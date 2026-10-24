# multipliable_one_add_of_tendsto_order_atTop_nhds_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71eb5582-79e3-4a8a-bda2-83d29e829629",
  "kind": "theorem",
  "lexical_name": "multipliable_one_add_of_tendsto_order_atTop_nhds_top",
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
  "slug": "multipliable-one-add-of-tendsto-order-attop-nhds-top--25f2e9532f4c70fc0ed79ffe",
  "source": {
    "blob": "9ed47f9528a50e06c606e90ac9cb906813bca790",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 225,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/PiTopology/Variant5bedef3a3c311636dd5860037b967fb04f2fd69c8d06291ad3c38e76c5361180.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25f2e9532f4c70fc0ed79ffe04735baa2c94dcb83b601596e60b31070fbdbb80",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/PiTopology/Variant5bedef3a3c311636dd5860037b967fb04f2fd69c8d06291ad3c38e76c5361180.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71eb5582-79e3-4a8a-bda2-83d29e829629`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem multipliable_one_add_of_tendsto_order_atTop_nhds_top
    (h : Tendsto (fun i ↦ (f i).order) atTop (nhds ⊤)) : Multipliable (1 + f ·) :=
  multipliable_one_add_of_summable_prod <| summable_prod_of_tendsto_order_atTop_nhds_top _ h

end Prod

section ProdOneSubPow
variable (R : Type*) [CommRing R] [TopologicalSpace R]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/PiTopology/Variant5bedef3a3c311636dd5860037b967fb04f2fd69c8d06291ad3c38e76c5361180.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/PiTopology/Variant5bedef3a3c311636dd5860037b967fb04f2fd69c8d06291ad3c38e76c5361180.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ed47f9528a50e06c606e90ac9cb906813bca790` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

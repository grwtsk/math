# map_add₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b57dda0e-b797-0d9a-ec02-38a69a87f35f",
  "kind": "theorem",
  "lexical_name": "map_add₂",
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
  "slug": "map-add--bf83fd05aa6f8a528ad2ed42",
  "source": {
    "blob": "8ae0ea87026778970e97be71402c752d5a59db13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 252,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/BoundedLinearMaps/Variant04477af7edc9d42c5eecc55ccbdaa2c01ea4070a796bf9cd014a05b7fe4823dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf83fd05aa6f8a528ad2ed429b1b7bdfc12342ab771fa4577c354d285ca50718",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/BoundedLinearMaps/Variant04477af7edc9d42c5eecc55ccbdaa2c01ea4070a796bf9cd014a05b7fe4823dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b57dda0e-b797-0d9a-ec02-38a69a87f35f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_add₂ (f : M →SL[ρ₁₂] F →SL[σ₁₂] G') (x x' : M) (y : F) :
    f (x + x') y = f x y + f x' y := by rw [f.map_add, add_apply]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/BoundedLinearMaps/Variant04477af7edc9d42c5eecc55ccbdaa2c01ea4070a796bf9cd014a05b7fe4823dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/BoundedLinearMaps/Variant04477af7edc9d42c5eecc55ccbdaa2c01ea4070a796bf9cd014a05b7fe4823dc.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ae0ea87026778970e97be71402c752d5a59db13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

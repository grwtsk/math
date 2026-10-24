# comap_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9df6b7aa-359e-1338-eff6-8f553ab372b5",
  "kind": "theorem",
  "lexical_name": "comap_const",
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
  "slug": "comap-const--82d0db0d70541af0e2d9f5b8",
  "source": {
    "blob": "fbd1ce14d34027de56cd2703c9792b11261ada24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 522,
    "line": 515,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Varianta2d16656fc204f6d10b8823f4d99a220ddb393fa3341f60d42f2ae8956ce2b13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82d0db0d70541af0e2d9f5b841c97b3c2663c0c8294276b3e4b67623152043d2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Varianta2d16656fc204f6d10b8823f4d99a220ddb393fa3341f60d42f2ae8956ce2b13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9df6b7aa-359e-1338-eff6-8f553ab372b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 515–522.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comap_const (f : X → Y) (y : Y) (h : ∀ x, f x = y) :
    (comap f : LocallyConstant Y Z → LocallyConstant X Z) = fun g => const X (g y) := by
  ext; rw [coe_comap]
  · simp only [Function.comp_apply, h, coe_const, Function.const_apply]
  · rw [show f = fun _ => y by ext; apply h]
    exact continuous_const
#align locally_constant.comap_const LocallyConstant.comap_const

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Varianta2d16656fc204f6d10b8823f4d99a220ddb393fa3341f60d42f2ae8956ce2b13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Varianta2d16656fc204f6d10b8823f4d99a220ddb393fa3341f60d42f2ae8956ce2b13.lean#L515).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbd1ce14d34027de56cd2703c9792b11261ada24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

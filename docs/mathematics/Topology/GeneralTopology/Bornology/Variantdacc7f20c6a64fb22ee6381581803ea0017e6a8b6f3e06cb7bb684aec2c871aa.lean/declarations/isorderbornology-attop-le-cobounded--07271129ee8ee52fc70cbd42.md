# IsOrderBornology.atTop_le_cobounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9da6fd88-c7e9-0027-e231-4fbae47dc9a3",
  "kind": "lemma",
  "lexical_name": "IsOrderBornology.atTop_le_cobounded",
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
  "slug": "isorderbornology-attop-le-cobounded--07271129ee8ee52fc70cbd42",
  "source": {
    "blob": "a541e9d2e14ff7318e9ee5f218c5a794bcf35191",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 119,
    "path": "GRWTSK/Topology/GeneralTopology/Bornology/Variantdacc7f20c6a64fb22ee6381581803ea0017e6a8b6f3e06cb7bb684aec2c871aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07271129ee8ee52fc70cbd42c3c9df9a5d7785af9d0af193ad6989f56f64ed2b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bornology/Variantdacc7f20c6a64fb22ee6381581803ea0017e6a8b6f3e06cb7bb684aec2c871aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9da6fd88-c7e9-0027-e231-4fbae47dc9a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsOrderBornology.atTop_le_cobounded [NoMaxOrder α] : .atTop ≤ Bornology.cobounded α := by
  intro s hs
  rw [← compl_compl s, ← isBounded_def, isBounded_iff_bddBelow_bddAbove] at hs
  obtain ⟨b, hb⟩ := hs.2
  obtain ⟨c, hbc⟩ := exists_gt b
  refine Filter.mem_of_superset (Filter.mem_atTop c) fun x hx ↦ ?_
  by_contra hx'
  exact hbc.not_ge <| hx.trans <| hb <| mem_compl hx'

-- TODO (khw): Generate this in the future with `to_dual`
-- See https://github.com/leanprover-community/mathlib4/pull/37738
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bornology/Variantdacc7f20c6a64fb22ee6381581803ea0017e6a8b6f3e06cb7bb684aec2c871aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bornology/Variantdacc7f20c6a64fb22ee6381581803ea0017e6a8b6f3e06cb7bb684aec2c871aa.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a541e9d2e14ff7318e9ee5f218c5a794bcf35191` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# continuous_valuation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b88cbc23effe5a56ec62ff33d73eec2dba2c7da4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 72,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d0/d076f4b402765780c89ad6d3428a98e32f315743eb47dc999b07b22bce8fdb78.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e7a45fbc-a027-7214-4733-b6e3a2c94d2d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c27eea92-7b76-e7a6-4459-a017824830a9",
  "kind": "lemma",
  "lexical_name": "continuous_valuation",
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
  "slug": "continuous-valuation--950ddf6644cf38926e62c255",
  "source": {
    "blob": "b88cbc23effe5a56ec62ff33d73eec2dba2c7da4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 72,
    "path": "GRWTSK/Topology/GeneralTopology/ValuativeRel/Variantd076f4b402765780c89ad6d3428a98e32f315743eb47dc999b07b22bce8fdb78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:950ddf6644cf38926e62c25536e3643cda7f0664991a0d47ca9fd458537d90a7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ValuativeRel/Variantd076f4b402765780c89ad6d3428a98e32f315743eb47dc999b07b22bce8fdb78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c27eea92-7b76-e7a6-4459-a017824830a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma continuous_valuation : Continuous v := by
  simp only [continuous_iff_continuousAt, ContinuousAt]
  rintro x
  by_cases hx : v x = 0
  · simpa [hx, ((valuation R).hasBasis_nhds _).tendsto_iff WithZeroTopology.hasBasis_nhds_zero]
      using fun i hi ↦ ⟨(Units.mk0 i hi).mapEquiv (ValueGroupWithZero.orderMonoidIso (valuation R)),
        fun y ↦ by simp [Valuation.map_sub_of_right_eq_zero _ hx]⟩
  · simpa [((valuation R).hasBasis_nhds _).tendsto_iff (hasBasis_nhds_of_ne_zero hx)]
      using ⟨(Units.mk0 (v x) hx).mapEquiv (ValueGroupWithZero.orderMonoidIso (valuation R)),
        fun _ ↦ by simpa [← (valuation R).restrict_def] using Valuation.map_eq_of_sub_lt _⟩

end IsValuativeTopology

namespace ValuativeRel

@[inherit_doc]
scoped notation "𝒪[" R "]" => Valuation.integer (valuation R)

@[inherit_doc]
scoped notation "𝓂[" K "]" => IsLocalRing.maximalIdeal ↥𝒪[K]

@[inherit_doc]
scoped notation "𝓀[" K "]" => IsLocalRing.ResidueField ↥𝒪[K]

end ValuativeRel
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ValuativeRel/Variantd076f4b402765780c89ad6d3428a98e32f315743eb47dc999b07b22bce8fdb78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ValuativeRel/Variantd076f4b402765780c89ad6d3428a98e32f315743eb47dc999b07b22bce8fdb78.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b88cbc23effe5a56ec62ff33d73eec2dba2c7da4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

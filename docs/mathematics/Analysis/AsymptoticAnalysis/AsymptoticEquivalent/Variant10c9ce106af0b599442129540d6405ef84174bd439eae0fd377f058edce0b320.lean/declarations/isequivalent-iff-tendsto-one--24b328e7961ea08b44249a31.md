# isEquivalent_iff_tendsto_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:03f50711-201e-ca54-8e91-90455409a08a",
  "kind": "theorem",
  "lexical_name": "isEquivalent_iff_tendsto_one",
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
  "slug": "isequivalent-iff-tendsto-one--24b328e7961ea08b44249a31",
  "source": {
    "blob": "a24daaabedcafaec9066da29a8bd742086e7b8bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 237,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/AsymptoticEquivalent/Variant10c9ce106af0b599442129540d6405ef84174bd439eae0fd377f058edce0b320.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24b328e7961ea08b44249a314f638f6cd95afea478b5ae7dac422c90d72df4af",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/AsymptoticEquivalent/Variant10c9ce106af0b599442129540d6405ef84174bd439eae0fd377f058edce0b320.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03f50711-201e-ca54-8e91-90455409a08a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isEquivalent_iff_tendsto_one (hz : ∀ᶠ x in l, v x ≠ 0) :
    u ~[l] v ↔ Tendsto (u / v) l (𝓝 1) := by
  constructor
  · intro hequiv
    have := hequiv.isLittleO.tendsto_div_nhds_zero
    simp only [Pi.sub_apply, sub_div] at this
    have key : Tendsto (fun x ↦ v x / v x) l (𝓝 1) :=
      (tendsto_congr' <| hz.mono fun x hnz ↦ @div_self _ _ (v x) hnz).mpr tendsto_const_nhds
    convert this.add key
    · simp
    · norm_num
  · exact isEquivalent_of_tendsto_one (hz.mono fun x hnvz hz ↦ (hnvz hz).elim)
#align asymptotics.is_equivalent_iff_tendsto_one Asymptotics.isEquivalent_iff_tendsto_one

end NormedField

section Smul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/AsymptoticEquivalent/Variant10c9ce106af0b599442129540d6405ef84174bd439eae0fd377f058edce0b320.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/AsymptoticEquivalent/Variant10c9ce106af0b599442129540d6405ef84174bd439eae0fd377f058edce0b320.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a24daaabedcafaec9066da29a8bd742086e7b8bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

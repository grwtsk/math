# cubicSourceMoment_eq_selected_add_complement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a7923095-ccc4-bad1-0431-34d3ddc783f1",
  "kind": "theorem",
  "lexical_name": "cubicSourceMoment_eq_selected_add_complement",
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
  "slug": "cubicsourcemoment-eq-selected-add-complement--f950f86cf9ef00342df52918",
  "source": {
    "blob": "78ada58f59d7210b8fa01dd53477696de3ae809e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 426,
    "line": 413,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceMultiplicativePackets/Varianta52eaa22ace53e076e96374d97ca50eca10c7bd6a52c516f10a38f7cd6f8cac1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f950f86cf9ef00342df52918c21ee220385a1be2d1dcc86516cb19ad494ee796",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceMultiplicativePackets/Varianta52eaa22ace53e076e96374d97ca50eca10c7bd6a52c516f10a38f7cd6f8cac1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7923095-ccc4-bad1-0431-34d3ddc783f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 413–426.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cubicSourceMoment_eq_selected_add_complement {A : ℝ} (hA : 1 ≤ A)
    (selected : Finset CubicPacket) (hselected : selected ⊆ cubicPacketInventory A) :
    cubicSourceMoment A =
      (∑ p ∈ selected, cubicPacketWeight p * sourceCorrelation explicitSecondDerivative A
        (Real.log (cubicPacketKey p : ℝ))) +
      ∑ p ∈ cubicPacketInventory A \ selected,
        cubicPacketWeight p * sourceCorrelation explicitSecondDerivative A
          (Real.log (cubicPacketKey p : ℝ)) := by
  rw [cubicSourceMoment_eq_rational_packets hA]
  rw [add_comm]
  exact (Finset.sum_sdiff hselected).symm

/-- Every omitted packet is paid against the actual signed source profile. This
is a finite-scale certificate, with no claim of a scale-uniform bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceMultiplicativePackets/Varianta52eaa22ace53e076e96374d97ca50eca10c7bd6a52c516f10a38f7cd6f8cac1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceMultiplicativePackets/Varianta52eaa22ace53e076e96374d97ca50eca10c7bd6a52c516f10a38f7cd6f8cac1.lean#L413).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78ada58f59d7210b8fa01dd53477696de3ae809e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

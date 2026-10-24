# refinement_of_locallyCompact_sigmaCompact_of_nhds_basis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b3b56d28-c1ef-5556-86e1-c23974aab3bf",
  "kind": "theorem",
  "lexical_name": "refinement_of_locallyCompact_sigmaCompact_of_nhds_basis",
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
  "slug": "refinement-of-locallycompact-sigmacompact-of-nhds-basis--724c44b4a50e9ab1d4182c8f",
  "source": {
    "blob": "8d4dcac49497f753f50b685b559543173cc1c4fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 264,
    "path": "GRWTSK/Topology/GeneralTopology/Paracompact/Variant172887137e6f6456649d44a4f1e862da6a5ed5bc21180d64644aa43bad5a72d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:724c44b4a50e9ab1d4182c8fabcba1e4a5d155bb6880e9566fbbdc08f474c2f6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Paracompact/Variant172887137e6f6456649d44a4f1e862da6a5ed5bc21180d64644aa43bad5a72d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3b56d28-c1ef-5556-86e1-c23974aab3bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem refinement_of_locallyCompact_sigmaCompact_of_nhds_basis [WeaklyLocallyCompactSpace X]
    [SigmaCompactSpace X] [T2Space X] {ι : X → Type u} {p : ∀ x, ι x → Prop} {B : ∀ x, ι x → Set X}
    (hB : ∀ x, (𝓝 x).HasBasis (p x) (B x)) :
    ∃ (α : Type v) (c : α → X) (r : ∀ a, ι (c a)),
      (∀ a, p (c a) (r a)) ∧ ⋃ a, B (c a) (r a) = univ ∧ LocallyFinite fun a ↦ B (c a) (r a) :=
  let ⟨α, c, r, hp, hU, hfin⟩ :=
    refinement_of_locallyCompact_sigmaCompact_of_nhds_basis_set isClosed_univ fun x _ ↦ hB x
  ⟨α, c, r, fun a ↦ (hp a).2, univ_subset_iff.1 hU, hfin⟩

-- See note [lower instance priority]
/-- A locally compact sigma compact Hausdorff space is paracompact. See also
`refinement_of_locallyCompact_sigmaCompact_of_nhds_basis` for a more precise statement. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Paracompact/Variant172887137e6f6456649d44a4f1e862da6a5ed5bc21180d64644aa43bad5a72d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Paracompact/Variant172887137e6f6456649d44a4f1e862da6a5ed5bc21180d64644aa43bad5a72d3.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d4dcac49497f753f50b685b559543173cc1c4fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

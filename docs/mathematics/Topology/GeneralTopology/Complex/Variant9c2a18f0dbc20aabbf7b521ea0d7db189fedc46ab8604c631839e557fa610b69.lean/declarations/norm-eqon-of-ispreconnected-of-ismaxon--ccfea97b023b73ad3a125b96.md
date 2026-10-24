# norm_eqOn_of_isPreconnected_of_isMaxOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:34956c5d-6468-a9be-2979-6c4853d6450b",
  "kind": "theorem",
  "lexical_name": "norm_eqOn_of_isPreconnected_of_isMaxOn",
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
  "slug": "norm-eqon-of-ispreconnected-of-ismaxon--ccfea97b023b73ad3a125b96",
  "source": {
    "blob": "4ac438ded6e562e9336a3bfceb77fb691b9a618e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 96,
    "path": "GRWTSK/Topology/GeneralTopology/Complex/Variant9c2a18f0dbc20aabbf7b521ea0d7db189fedc46ab8604c631839e557fa610b69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ccfea97b023b73ad3a125b96857b35c5c37dcdb44e383c9b8f08c604f9f296a5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Complex/Variant9c2a18f0dbc20aabbf7b521ea0d7db189fedc46ab8604c631839e557fa610b69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34956c5d-6468-a9be-2979-6c4853d6450b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_eqOn_of_isPreconnected_of_isMaxOn {f : M → F} {U : Set M} {c : M}
    (hd : MDifferentiableOn I 𝓘(ℂ, F) f U) (hc : IsPreconnected U) (ho : IsOpen U)
    (hcU : c ∈ U) (hm : IsMaxOn (norm ∘ f) U c) : EqOn (norm ∘ f) (const M ‖f c‖) U := by
  set V := {z ∈ U | ‖f z‖ = ‖f c‖}
  suffices : U ⊆ V; exact fun x hx => (this hx).2
  have hVo : IsOpen V
  · refine isOpen_iff_mem_nhds.2 fun x hx ↦ inter_mem (ho.mem_nhds hx.1) ?_
    replace hm : IsLocalMax (‖f ·‖) x :=
      mem_of_superset (ho.mem_nhds hx.1) fun z hz ↦ (hm hz).out.trans_eq hx.2.symm
    replace hd : ∀ᶠ y in 𝓝 x, MDifferentiableAt I 𝓘(ℂ, F) f y :=
      (eventually_mem_nhds.2 (ho.mem_nhds hx.1)).mono fun z ↦ hd.mdifferentiableAt
    exact (Complex.norm_eventually_eq_of_mdifferentiableAt_of_isLocalMax hd hm).mono fun _ ↦
      (Eq.trans · hx.2)
  have hVne : (U ∩ V).Nonempty := ⟨c, hcU, hcU, rfl⟩
  set W := U ∩ {z | ‖f z‖ = ‖f c‖}ᶜ
  have hWo : IsOpen W := hd.continuousOn.norm.preimage_open_of_open ho isOpen_ne
  have hdVW : Disjoint V W := disjoint_compl_right.mono inf_le_right inf_le_right
  have hUVW : U ⊆ V ∪ W := fun x hx => (eq_or_ne ‖f x‖ ‖f c‖).imp (.intro hx) (.intro hx)
  exact hc.subset_left_of_subset_union hVo hWo hdVW hUVW hVne

/-- **Maximum modulus principle** on a connected set. Let `U` be a (pre)connected open set in a
complex normed space.  Let `f : E → F` be a function that is complex differentiable on `U`. Suppose
that `‖f x‖` takes its maximum value on `U` at `c ∈ U`. Then `f x = f c` for all `x ∈ U`.

TODO: change assumption from `IsMaxOn` to `IsLocalMax`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Complex/Variant9c2a18f0dbc20aabbf7b521ea0d7db189fedc46ab8604c631839e557fa610b69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Complex/Variant9c2a18f0dbc20aabbf7b521ea0d7db189fedc46ab8604c631839e557fa610b69.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ac438ded6e562e9336a3bfceb77fb691b9a618e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

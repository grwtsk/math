# norm_eqOn_of_isPreconnected_of_isMaxOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6512cafc7708ee890dc957b9115d6182acc79db0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 224,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/53/53e802c9584c8f3ee5a1e4241554ed3e3ddcabd3be317fdfa48d2874d8ef5f91.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:15660157-d05d-7c0b-4069-aea4bcafffad",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:02a96b01-5222-075b-9933-ec251976b09b",
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
  "slug": "norm-eqon-of-ispreconnected-of-ismaxon--befed4642637dd7fad3cc3cd",
  "source": {
    "blob": "6512cafc7708ee890dc957b9115d6182acc79db0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 224,
    "path": "GRWTSK/Analysis/ComplexAnalysis/AbsMax/Variant53e802c9584c8f3ee5a1e4241554ed3e3ddcabd3be317fdfa48d2874d8ef5f91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:befed4642637dd7fad3cc3cd2a1eb0d73b15ddafc1cf1007af0abd7948f9ae78",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/AbsMax/Variant53e802c9584c8f3ee5a1e4241554ed3e3ddcabd3be317fdfa48d2874d8ef5f91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02a96b01-5222-075b-9933-ec251976b09b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_eqOn_of_isPreconnected_of_isMaxOn {f : E → F} {U : Set E} {c : E}
    (hc : IsPreconnected U) (ho : IsOpen U) (hd : DifferentiableOn ℂ f U) (hcU : c ∈ U)
    (hm : IsMaxOn (norm ∘ f) U c) : EqOn (norm ∘ f) (const E ‖f c‖) U := by
  set V := U ∩ {z | IsMaxOn (norm ∘ f) U z}
  have hV : ∀ x ∈ V, ‖f x‖ = ‖f c‖ := fun x hx => le_antisymm (hm hx.1) (hx.2 hcU)
  suffices U ⊆ V from fun x hx => hV x (this hx)
  have hVo : IsOpen V := by
    simpa only [ho.mem_nhds_iff, setOf_and, setOf_mem_eq]
      using isOpen_setOf_mem_nhds_and_isMaxOn_norm hd
  have hVne : (U ∩ V).Nonempty := ⟨c, hcU, hcU, hm⟩
  set W := U ∩ {z | ‖f z‖ ≠ ‖f c‖}
  have hWo : IsOpen W := hd.continuousOn.norm.isOpen_inter_preimage ho isOpen_ne
  have hdVW : Disjoint V W := disjoint_left.mpr fun x hxV hxW => hxW.2 (hV x hxV)
  have hUVW : U ⊆ V ∪ W := fun x hx =>
    (eq_or_ne ‖f x‖ ‖f c‖).imp (fun h => ⟨hx, fun y hy => (hm hy).out.trans_eq h.symm⟩)
      (And.intro hx)
  exact hc.subset_left_of_subset_union hVo hWo hdVW hUVW hVne

/-- **Maximum modulus principle** on a connected set. Let `U` be a (pre)connected open set in a
complex normed space.  Let `f : E → F` be a function that is complex differentiable on `U` and is
continuous on its closure. Suppose that `‖f x‖` takes its maximum value on `U` at `c ∈ U`. Then
`‖f x‖ = ‖f c‖` for all `x ∈ closure U`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/AbsMax/Variant53e802c9584c8f3ee5a1e4241554ed3e3ddcabd3be317fdfa48d2874d8ef5f91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/AbsMax/Variant53e802c9584c8f3ee5a1e4241554ed3e3ddcabd3be317fdfa48d2874d8ef5f91.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6512cafc7708ee890dc957b9115d6182acc79db0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

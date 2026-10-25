# card_nfpFamily_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bdd3a3d3d627333141d74bd481dcda61c9b694fd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 120,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0d12c286fb03c18715a0f1cb57149888b75461999cdd05a31890813c0a65a376.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9e1e32b3-6eca-938f-2c78-631e02d29faa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:19d4a354-4f04-2d73-4b1b-f174386bdbb4",
  "kind": "theorem",
  "lexical_name": "card_nfpFamily_le",
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
  "slug": "card-nfpfamily-le--16dff384d35f543f3d1353c4",
  "source": {
    "blob": "bdd3a3d3d627333141d74bd481dcda61c9b694fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 120,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant0d12c286fb03c18715a0f1cb57149888b75461999cdd05a31890813c0a65a376.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16dff384d35f543f3d1353c4fca9b581112c29ed381f0b57dc605a75d43b7873",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant0d12c286fb03c18715a0f1cb57149888b75461999cdd05a31890813c0a65a376.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19d4a354-4f04-2d73-4b1b-f174386bdbb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_nfpFamily_le {ι : Type v} {f : ι → Ordinal → Ordinal}
    {c : Cardinal} (hc : ℵ₀ ≤ c) (hι : Cardinal.lift.{u} #ι ≤ Cardinal.lift.{v} c)
    (hf : ∀ i x, (f i x).card ≤ max c x.card) (o : Ordinal) :
    (nfpFamily f o).card ≤ max c o.card := by
  have : Small.{u} ι := small_of_lift_mk_le_lift hι
  replace hι : #(Shrink.{u} ι) ≤ c := by rwa [← Cardinal.lift_le.{v}, Cardinal.lift_mk_shrink' ι]
  set σ := equivShrink (List ι) |>.symm
  rw [nfpFamily, ← Equiv.iSup_comp σ]
  apply card_iSup_le_sum_card (List.foldr f o <| σ ·) |>.trans <|
    sum_le_lift_mk_mul_iSup _ |>.trans <|
    mul_le_mul' (b := c) ?_ (d := max c o.card) ?_ |>.trans ?_
  · simp only [Cardinal.lift_id]
    apply max_le hc hι |>.trans'
    grw [mk_congr (σ.trans (equivShrink ι).listEquivOfEquiv), mk_list_le_max (Shrink ι)]
  · have : Nonempty (Shrink (List ι)) := ⟨σ.symm []⟩
    apply ciSup_le fun i => ?_
    induction σ i with
    | nil => simp
    | cons => grind
  · rw [Cardinal.mul_eq_max hc (le_trans hc (le_max_left _ _)), ← max_assoc, max_self]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant0d12c286fb03c18715a0f1cb57149888b75461999cdd05a31890813c0a65a376.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant0d12c286fb03c18715a0f1cb57149888b75461999cdd05a31890813c0a65a376.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdd3a3d3d627333141d74bd481dcda61c9b694fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

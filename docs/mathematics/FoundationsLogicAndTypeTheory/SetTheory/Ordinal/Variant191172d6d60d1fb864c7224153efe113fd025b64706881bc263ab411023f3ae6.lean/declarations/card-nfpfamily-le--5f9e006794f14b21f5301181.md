# card_nfpFamily_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66e6c231-fdb1-eee4-181d-9ad4b87e3881",
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
  "slug": "card-nfpfamily-le--5f9e006794f14b21f5301181",
  "source": {
    "blob": "51b43d480793b1d1e10a95c2012c69808c94069e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 128,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant191172d6d60d1fb864c7224153efe113fd025b64706881bc263ab411023f3ae6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f9e006794f14b21f530118197e2a74c7f13a9d754421ba070baa0c9bc29b59a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant191172d6d60d1fb864c7224153efe113fd025b64706881bc263ab411023f3ae6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66e6c231-fdb1-eee4-181d-9ad4b87e3881`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–148.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant191172d6d60d1fb864c7224153efe113fd025b64706881bc263ab411023f3ae6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant191172d6d60d1fb864c7224153efe113fd025b64706881bc263ab411023f3ae6.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51b43d480793b1d1e10a95c2012c69808c94069e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

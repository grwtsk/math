# card_derivFamily_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9050c765-0f72-fea5-5771-65165a5d3877",
  "kind": "theorem",
  "lexical_name": "card_derivFamily_le",
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
  "slug": "card-derivfamily-le--986a044748d2e49607b6e258",
  "source": {
    "blob": "51b43d480793b1d1e10a95c2012c69808c94069e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 149,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant191172d6d60d1fb864c7224153efe113fd025b64706881bc263ab411023f3ae6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:986a044748d2e49607b6e258b2e5d134df1bebe22bd5bfda311c16bbf04873c9",
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

Occurrence: `result:9050c765-0f72-fea5-5771-65165a5d3877`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_derivFamily_le {ι : Type v} {f : ι → Ordinal → Ordinal}
    {c : Cardinal} (hc : ℵ₀ ≤ c) (hι : Cardinal.lift.{u} #ι ≤ Cardinal.lift.{v} c)
    (hf : ∀ i x, (f i x).card ≤ max c x.card) (o : Ordinal) :
    (derivFamily f o).card ≤ max c o.card := by
  induction o using limitRecOn with
  | zero => simpa using card_nfpFamily_le hc hι hf 0
  | add_one o ih =>
    simp only [derivFamily_add_one, card_add_one]
    grw [card_nfpFamily_le hc hι hf ((derivFamily f o) + 1), card_add_one, ih]
    suffices max c o.card + 1 ≤ c ∨ c ≤ o.card + 1 ∧ c ≤ o.card by simp [this]
    rcases lt_or_ge c o.card with ho | ho
    · simp [ho.le, hc.trans ho.le]
    · simp [ho, hc]
  | limit o ho ih =>
    rw [derivFamily_limit f ho]
    apply card_iSup_Iio_le_card_mul_iSup _ |>.trans <|
      mul_le_mul' (Cardinal.lift_le.mpr <| le_max_right c o.card)
        (ciSup_le' (a := max c o.card) ?_) |>.trans ?_
    · exact fun ⟨i, hi⟩ => ih _ hi |>.trans <| max_le_max_left _ (card_le_card hi.le)
    · grw [Cardinal.lift_id, ← sq, power_nat_le (by simp [hc])]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant191172d6d60d1fb864c7224153efe113fd025b64706881bc263ab411023f3ae6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant191172d6d60d1fb864c7224153efe113fd025b64706881bc263ab411023f3ae6.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51b43d480793b1d1e10a95c2012c69808c94069e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# card_derivFamily_le

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
      "line": 141,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0d12c286fb03c18715a0f1cb57149888b75461999cdd05a31890813c0a65a376.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7f4bacb4-959f-7585-0e9a-a842832eeef2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:77a84d98-e5e8-e24c-131c-de72f7a2d85d",
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
  "slug": "card-derivfamily-le--7f42f6af52845e7bf2af2b03",
  "source": {
    "blob": "bdd3a3d3d627333141d74bd481dcda61c9b694fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 141,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant0d12c286fb03c18715a0f1cb57149888b75461999cdd05a31890813c0a65a376.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f42f6af52845e7bf2af2b0369ce1e7a822c136347cbe762370f9bc048946ffa",
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

Occurrence: `result:77a84d98-e5e8-e24c-131c-de72f7a2d85d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–161.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant0d12c286fb03c18715a0f1cb57149888b75461999cdd05a31890813c0a65a376.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant0d12c286fb03c18715a0f1cb57149888b75461999cdd05a31890813c0a65a376.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdd3a3d3d627333141d74bd481dcda61c9b694fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

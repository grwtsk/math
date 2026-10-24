# iSup_succ_eq_sup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc255257-181b-6fc5-2416-f213aa17cce0",
  "kind": "theorem",
  "lexical_name": "iSup_succ_eq_sup",
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
  "slug": "isup-succ-eq-sup--bb307148551dd4b2487b59cb",
  "source": {
    "blob": "8ca321c5b9b5af65d66972a10523cdc7988786c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 800,
    "line": 788,
    "path": "GRWTSK/Analysis/MeasureTheory/Lebesgue/Variantdaf85c1d892e051f6a735c9c721bacb7082cfdf335ef94710112b29799c46278.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb307148551dd4b2487b59cb1ca7167d4599dd4128af37e410034ce6533b23fc",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Lebesgue/Variantdaf85c1d892e051f6a735c9c721bacb7082cfdf335ef94710112b29799c46278.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc255257-181b-6fc5-2416-f213aa17cce0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 788–800.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iSup_succ_eq_sup {α} (f : ℕ → α → ℝ≥0∞) (m : ℕ) (a : α) :
    ⨆ (k : ℕ) (_ : k ≤ m + 1), f k a = f m.succ a ⊔ ⨆ (k : ℕ) (_ : k ≤ m), f k a := by
  set c := ⨆ (k : ℕ) (_ : k ≤ m + 1), f k a with hc
  set d := f m.succ a ⊔ ⨆ (k : ℕ) (_ : k ≤ m), f k a with hd
  rw [le_antisymm_iff, hc, hd]
  constructor
  · refine iSup₂_le fun n hn ↦ ?_
    rcases Nat.of_le_succ hn with (h | h)
    · exact le_sup_of_le_right (le_iSup₂ (f := fun k (_ : k ≤ m) ↦ f k a) n h)
    · exact h ▸ le_sup_left
  · refine sup_le ?_ (biSup_mono fun n hn ↦ hn.trans m.le_succ)
    exact @le_iSup₂ ℝ≥0∞ ℕ (fun i ↦ i ≤ m + 1) _ _ (m + 1) le_rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Lebesgue/Variantdaf85c1d892e051f6a735c9c721bacb7082cfdf335ef94710112b29799c46278.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Lebesgue/Variantdaf85c1d892e051f6a735c9c721bacb7082cfdf335ef94710112b29799c46278.lean#L788).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ca321c5b9b5af65d66972a10523cdc7988786c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

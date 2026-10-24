# encard_sdiff_le_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d697e990-7b24-b115-e3ac-ffb3b9b1974a",
  "kind": "theorem",
  "lexical_name": "encard_sdiff_le_aux",
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
  "slug": "encard-sdiff-le-aux--77c307ffd1239412aeaf7cd9",
  "source": {
    "blob": "4d8b10ddceff4fc466b25719badbd13cf6f02d48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 314,
    "line": 292,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variante12bd51e7a02038869dd6841964ea55f6124a2445178eb56b1ee2eb4e9b35eb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77c307ffd1239412aeaf7cd9af52f3aedbce6578523f04b54c6c93762eb90559",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variante12bd51e7a02038869dd6841964ea55f6124a2445178eb56b1ee2eb4e9b35eb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d697e990-7b24-b115-e3ac-ffb3b9b1974a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem encard_sdiff_le_aux {B₁ B₂ : Set α}
    (exch : ExchangeProperty IsBase) (hB₁ : IsBase B₁) (hB₂ : IsBase B₂) :
    (B₁ \ B₂).encard ≤ (B₂ \ B₁).encard := by
  obtain (he | hinf | ⟨e, he, hcard⟩) :=
    (B₂ \ B₁).eq_empty_or_encard_eq_top_or_encard_sdiff_singleton_lt
  · rw [exch.antichain hB₂ hB₁ (sdiff_eq_empty.mp he)]
  · exact le_top.trans_eq hinf.symm
  obtain ⟨f, hf, hB'⟩ := exch B₂ B₁ hB₂ hB₁ e he
  have : encard (insert f (B₂ \ {e}) \ B₁) < encard (B₂ \ B₁) := by
    rw [insert_sdiff_of_mem _ hf.1, sdiff_sdiff_comm]; exact hcard
  have hencard := encard_sdiff_le_aux exch hB₁ hB'
  rw [insert_sdiff_of_mem _ hf.1, sdiff_sdiff_comm, ← union_singleton, ← sdiff_sdiff,
    sdiff_sdiff_right, inter_singleton_eq_empty.mpr he.2, union_empty] at hencard
  rw [← encard_sdiff_singleton_add_one he, ← encard_sdiff_singleton_add_one hf]
  gcongr
termination_by (B₂ \ B₁).encard

@[deprecated (since := "2026-06-03")] alias encard_diff_le_aux := encard_sdiff_le_aux

variable {B₁ B₂ : Set α}

/-- For any two sets `B₁`, `B₂` in a family with the exchange property, the differences `B₁ \ B₂`
and `B₂ \ B₁` have the same `ℕ∞`-cardinality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variante12bd51e7a02038869dd6841964ea55f6124a2445178eb56b1ee2eb4e9b35eb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variante12bd51e7a02038869dd6841964ea55f6124a2445178eb56b1ee2eb4e9b35eb3.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d8b10ddceff4fc466b25719badbd13cf6f02d48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

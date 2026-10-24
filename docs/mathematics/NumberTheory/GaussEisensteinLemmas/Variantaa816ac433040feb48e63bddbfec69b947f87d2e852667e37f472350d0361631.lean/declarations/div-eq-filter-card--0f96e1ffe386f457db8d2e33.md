# div_eq_filter_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7025d1d3-fcf8-db61-0820-521ab328fc35",
  "kind": "theorem",
  "lexical_name": "div_eq_filter_card",
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
  "slug": "div-eq-filter-card--0f96e1ffe386f457db8d2e33",
  "source": {
    "blob": "f4c6859663b5b9fb454c7f509fed5ad6dcf4c297",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 167,
    "path": "GRWTSK/NumberTheory/GaussEisensteinLemmas/Variantaa816ac433040feb48e63bddbfec69b947f87d2e852667e37f472350d0361631.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f96e1ffe386f457db8d2e332568362c1772fa35cf01f313b89edb41393fc2b7",
  "verification": {
    "reference": "docs/verification/NumberTheory/GaussEisensteinLemmas/Variantaa816ac433040feb48e63bddbfec69b947f87d2e852667e37f472350d0361631.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7025d1d3-fcf8-db61-0820-521ab328fc35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem div_eq_filter_card {a b c : ℕ} (hb0 : 0 < b) (hc : a / b ≤ c) :
    a / b = ((Ico 1 c.succ).filter fun x => x * b ≤ a).card :=
  calc
    a / b = (Ico 1 (a / b).succ).card := by simp
    _ = ((Ico 1 c.succ).filter fun x => x * b ≤ a).card :=
      congr_arg _ <| Finset.ext fun x => by
        have : x * b ≤ a → x ≤ c := fun h => le_trans (by rwa [le_div_iff_mul_le hb0]) hc
        simp [lt_succ_iff, le_div_iff_mul_le hb0]; tauto
#align zmod.div_eq_filter_card ZMod.div_eq_filter_card

/-- The given sum is the number of integer points in the triangle formed by the diagonal of the
  rectangle `(0, p/2) × (0, q/2)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/GaussEisensteinLemmas/Variantaa816ac433040feb48e63bddbfec69b947f87d2e852667e37f472350d0361631.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/GaussEisensteinLemmas/Variantaa816ac433040feb48e63bddbfec69b947f87d2e852667e37f472350d0361631.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4c6859663b5b9fb454c7f509fed5ad6dcf4c297` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

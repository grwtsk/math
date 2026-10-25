# infinite_pigeonhole_card_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:191f9c9d-6b23-4a6c-17d2-d966355282e1",
  "kind": "theorem",
  "lexical_name": "infinite_pigeonhole_card_lt",
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
  "slug": "infinite-pigeonhole-card-lt--ee76570a4b41d64cea5e5af7",
  "source": {
    "blob": "099488c9c85a4ae7d225015711495e72a2d4ee60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 76,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Pigeonhole/Variant355069236493a5c593b7b01915aba90f4d6ec0476800fb1e2bddcd1618e2844e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee76570a4b41d64cea5e5af75bd1f6ce3c951cff2cfcc00e63daadae739e52d1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Pigeonhole/Variant355069236493a5c593b7b01915aba90f4d6ec0476800fb1e2bddcd1618e2844e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:191f9c9d-6b23-4a6c-17d2-d966355282e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem infinite_pigeonhole_card_lt {β α : Type u} (f : β → α) (h : #α < #β) (hβ : ℵ₀ ≤ #β) :
    ∃ a : α, #α < #(f ⁻¹' {a}) := by
  simp_rw [← succ_le_iff]
  rcases lt_or_ge #α ℵ₀ with hα | hα
  · obtain ⟨a, ha⟩ := infinite_pigeonhole_card f ℵ₀ hβ le_rfl
      (by rwa [isRegular_aleph0.cof_ord])
    exact ⟨a, ha.trans' (succ_le_of_lt hα)⟩
  · exact infinite_pigeonhole_card f (succ #α) (succ_le_of_lt h) (hα.trans (le_succ _))
      ((lt_succ _).trans_le (isRegular_succ hα).2.ge)

/-- A function whose domain's cardinality is infinite and strictly greater than its codomain's
has an infinite fiber. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Pigeonhole/Variant355069236493a5c593b7b01915aba90f4d6ec0476800fb1e2bddcd1618e2844e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Pigeonhole/Variant355069236493a5c593b7b01915aba90f4d6ec0476800fb1e2bddcd1618e2844e.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `099488c9c85a4ae7d225015711495e72a2d4ee60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

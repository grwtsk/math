# map_prod_eq_map_prod_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:94c8209b-c316-3009-1a55-6bcf384a4b26",
  "kind": "theorem",
  "lexical_name": "map_prod_eq_map_prod_of_le",
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
  "slug": "map-prod-eq-map-prod-of-le--7c70175b8a0a6d304b5d607f",
  "source": {
    "blob": "5ac8c6151897609e54bd1d8b26504305af69a263",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 535,
    "line": 499,
    "path": "GRWTSK/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c70175b8a0a6d304b5d607f4746cfc4577f3ecf9101bff1466661a56707fabb",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94c8209b-c316-3009-1a55-6bcf384a4b26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 499–535.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_prod_eq_map_prod_of_le [FreimanHomClass F A β n] (f : F) {s t : Multiset α}
    (hsA : ∀ x ∈ s, x ∈ A) (htA : ∀ x ∈ t, x ∈ A)
    (hs : Multiset.card s = m) (ht : Multiset.card t = m)
    (hst : s.prod = t.prod) (h : m ≤ n) : (s.map f).prod = (t.map f).prod := by
  obtain rfl | hm := m.eq_zero_or_pos
  · rw [card_eq_zero] at hs ht
    rw [hs, ht]
  simp [← hs, card_pos_iff_exists_mem] at hm
  obtain ⟨a, ha⟩ := hm
  suffices
    ((s + Multiset.replicate (n - m) a).map f).prod =
      ((t + Multiset.replicate (n - m) a).map f).prod by
    simp_rw [Multiset.map_add, prod_add] at this
    exact mul_right_cancel this
  replace ha := hsA _ ha
  apply map_prod_eq_map_prod f (A := A) (β := β) (n := n) (fun x hx => _) (fun x hx => _) _ _ _
  -- porting note: below could be golfed when wlog is available
  · intro x hx
    rw [mem_add] at hx
    cases' hx with hx hx
    · exact hsA x hx
    · rwa [eq_of_mem_replicate hx]
  · intro x hx
    rw [mem_add] at hx
    cases' hx with hx hx
    · exact htA x hx
    · rwa [eq_of_mem_replicate hx]
  · rw [_root_.map_add, card_replicate, hs]; simp [h]
  · rw [_root_.map_add, card_replicate, ht]; simp [h]
  · rw [prod_add, prod_add, hst]
#align map_prod_eq_map_prod_of_le map_prod_eq_map_prod_of_le
#align map_sum_eq_map_sum_of_le map_sum_eq_map_sum_of_le

/-- `α →*[n] β` is naturally included in `A →*[m] β` for any `m ≤ n`. -/
@[to_additive AddFreimanHom.toAddFreimanHom
      "`α →+[n] β` is naturally included in `α →+[m] β`
      for any `m ≤ n`"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Freiman/Variant4d5d4f86f777f545a4d25a9096b077ec45b5bdb971bb95bcc1e61ded947d1966.lean#L499).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ac8c6151897609e54bd1d8b26504305af69a263` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

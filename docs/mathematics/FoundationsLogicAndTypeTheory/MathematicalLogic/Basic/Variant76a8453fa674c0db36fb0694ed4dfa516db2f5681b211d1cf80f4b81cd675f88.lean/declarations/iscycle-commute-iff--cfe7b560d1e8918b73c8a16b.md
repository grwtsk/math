# IsCycle.commute_iff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f234086f-2e98-28f6-205c-219375dcab06",
  "kind": "theorem",
  "lexical_name": "IsCycle.commute_iff'",
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
  "slug": "iscycle-commute-iff--cfe7b560d1e8918b73c8a16b",
  "source": {
    "blob": "33a0a177dacc514f42e4d5742e070ec7c0806fd9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1030,
    "line": 994,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant76a8453fa674c0db36fb0694ed4dfa516db2f5681b211d1cf80f4b81cd675f88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfe7b560d1e8918b73c8a16bb8dc828253150592b1f38682c78c22d9e4974115",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant76a8453fa674c0db36fb0694ed4dfa516db2f5681b211d1cf80f4b81cd675f88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f234086f-2e98-28f6-205c-219375dcab06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 994–1030.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsCycle.commute_iff' {g c : Perm α} (hc : c.IsCycle) :
    Commute g c ↔
      ∃ hc' : ∀ x : α, g x ∈ c.support ↔ x ∈ c.support,
        subtypePerm g hc' ∈ Subgroup.zpowers c.subtypePermOfSupport := by
  constructor
  · intro hgc
    have hgc' := mem_support_iff_of_commute hgc
    use hgc'
    obtain ⟨a, ha⟩ := IsCycle.nonempty_support hc
    obtain ⟨i, hi⟩ := hc.sameCycle (mem_support.mp ha) (mem_support.mp ((hgc' a).mpr ha))
    use i
    ext ⟨x, hx⟩
    simp only [subtypePermOfSupport, Subtype.coe_mk, subtypePerm_apply]
    rw [subtypePerm_apply_zpow_of_mem]
    obtain ⟨j, rfl⟩ := hc.sameCycle (mem_support.mp ha) (mem_support.mp hx)
    simp only [← mul_apply, Commute.eq (Commute.zpow_right hgc j)]
    rw [← zpow_add, add_comm i j, zpow_add]
    simp only [mul_apply, EmbeddingLike.apply_eq_iff_eq]
    exact hi
  · rintro ⟨hc', ⟨i, hi⟩⟩
    ext x
    simp only [coe_mul, Function.comp_apply]
    by_cases hx : x ∈ c.support
    · suffices hi' : ∀ x ∈ c.support, g x = (c ^ i) x by
        rw [hi' x hx, hi' (c x) (apply_mem_support.mpr hx)]
        simp only [← mul_apply, ← zpow_add_one, ← zpow_one_add, add_comm]
      intro x hx
      have hix := Perm.congr_fun hi ⟨x, hx⟩
      simp only [← Subtype.coe_inj, subtypePermOfSupport, subtypePerm_apply,
        subtypePerm_apply_zpow_of_mem] at hix
      exact hix.symm
    · rw [notMem_support.mp hx, eq_comm, ← notMem_support]
      contrapose hx
      exact (hc' x).mp hx

/-- A permutation `g` commutes with a cycle `c` if and only if
  `c.support` is invariant under `g`, and `g` acts on it as a power of `c`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant76a8453fa674c0db36fb0694ed4dfa516db2f5681b211d1cf80f4b81cd675f88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant76a8453fa674c0db36fb0694ed4dfa516db2f5681b211d1cf80f4b81cd675f88.lean#L994).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33a0a177dacc514f42e4d5742e070ec7c0806fd9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

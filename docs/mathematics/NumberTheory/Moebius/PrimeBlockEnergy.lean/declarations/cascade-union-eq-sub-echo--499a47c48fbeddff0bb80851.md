# cascade_union_eq_sub_echo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e8a2b2f0-94b6-4eb2-6dea-df8fd455cc2e",
  "kind": "theorem",
  "lexical_name": "cascade_union_eq_sub_echo",
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
  "slug": "cascade-union-eq-sub-echo--499a47c48fbeddff0bb80851",
  "source": {
    "blob": "3a083b29e3728de5a9395cf4008c1268efe3631d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 53,
    "path": "GRWTSK/NumberTheory/Moebius/PrimeBlockEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:499a47c48fbeddff0bb80851f5165c77a06217d3170666b6345dd394b249a49f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/PrimeBlockEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8a2b2f0-94b6-4eb2-6dea-df8fd455cc2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cascade_union_eq_sub_echo {P B : Finset ℕ}
    (hP : ∀ p ∈ P, p.Prime) (hB : ∀ p ∈ B, p.Prime) (hd : Disjoint P B)
    {T u : ℝ} (huT : u ≤ T)
    (hpair : ∀ p ∈ B, ∀ q ∈ B, p ≠ q → T ≤ log p + log q) :
    primeNoteCascade (P ∪ B) u = primeNoteCascade P u - primeBlockEcho P B u := by
  induction B using Finset.induction_on with
  | empty => simp [primeBlockEcho]
  | @insert p B hpB ih =>
    have hp := hB p (by simp)
    have hB' : ∀ q ∈ B, q.Prime := fun q hq ↦ hB q (by simp [hq])
    have hd' : Disjoint P B := hd.mono_right (Finset.subset_insert p B)
    have hpP : p ∉ P := fun h ↦ Finset.disjoint_left.mp hd h (by simp)
    have hshift : causalShift (log p) (primeNoteCascade (P ∪ B)) u =
        causalShift (log p) (primeNoteCascade P) u := by
      unfold causalShift
      split_ifs
      · exact cascade_union_before_delays hP hB' hd' (fun q hq ↦ by
          have hqp : p ≠ q := fun h ↦ hpB (h ▸ hq)
          have := hpair p (by simp) q (by simp [hq]) hqp
          linarith)
      · rfl
    rw [Finset.union_insert, primeNoteCascade_insert
      (fun q hq ↦ (Finset.mem_union.mp hq).elim (hP q) (hB' q)) hp
      (by simp [hpP, hpB])]
    unfold primeNoteFilter
    rw [hshift, ih hB' hd' (fun q hq r hr hqr ↦ hpair q (by simp [hq]) r (by simp [hr]) hqr)]
    simp only [primeBlockEcho, Finset.sum_insert hpB]
    ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/PrimeBlockEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/PrimeBlockEnergy.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a083b29e3728de5a9395cf4008c1268efe3631d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

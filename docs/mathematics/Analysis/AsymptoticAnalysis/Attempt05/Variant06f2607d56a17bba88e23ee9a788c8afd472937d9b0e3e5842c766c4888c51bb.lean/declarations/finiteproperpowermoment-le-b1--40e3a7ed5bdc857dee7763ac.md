# finiteProperPowerMoment_le_B1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aac6f014-f8bc-7243-b3ca-4516797e2267",
  "kind": "theorem",
  "lexical_name": "finiteProperPowerMoment_le_B1",
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
  "slug": "finiteproperpowermoment-le-b1--40e3a7ed5bdc857dee7763ac",
  "source": {
    "blob": "c035f6cc478b72a984905c7d56da2366e273092d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 137,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Attempt05/Variant06f2607d56a17bba88e23ee9a788c8afd472937d9b0e3e5842c766c4888c51bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40e3a7ed5bdc857dee7763ac728e4997f93116b157bdc7f8f38d97c9d81676db",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Attempt05/Variant06f2607d56a17bba88e23ee9a788c8afd472937d9b0e3e5842c766c4888c51bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aac6f014-f8bc-7243-b3ca-4516797e2267`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteProperPowerMoment_le_B1 : finiteProperPowerMoment ≤ properPowerB1 := by
  classical
  let e : {p : ℕ // p ∈ primeInventory} → Nat.Primes :=
    fun p => ⟨p.val, inventory_primes p.val p.property⟩
  have he : Function.Injective e := by
    intro p q hpq
    apply Subtype.ext
    exact congrArg (fun n : Nat.Primes => n.val) hpq
  have hsum := (primeMomentAtom_outer_summable 1).sum_le_tsum
    (primeInventory.attach.image e)
    (fun p _ => tsum_nonneg (fun k => momentAtom_nonneg 1 p.val k))
  rw [Finset.sum_image he.injOn] at hsum
  calc
    finiteProperPowerMoment = ∑ p ∈ primeInventory.attach, ∑ k ∈ Finset.range 11,
        momentAtom 1 p.val k := by
      rw [Finset.sum_attach primeInventory (fun p : ℕ => ∑ k ∈ Finset.range 11,
        momentAtom 1 p k), finiteProperPowerMoment_eq_atoms]
      apply Finset.sum_congr rfl
      intro p hp
      apply Finset.sum_congr rfl
      intro k hk
      simp only [momentAtom, pow_one]
      norm_num
    _ ≤ ∑ p ∈ primeInventory.attach, ∑' k : ℕ, primeMomentAtom 1 (e p) k := by
      apply Finset.sum_le_sum
      intro p hp
      exact (primeMomentAtom_inner_summable 1 (e p)).sum_le_tsum (Finset.range 11)
        (fun k _ => momentAtom_nonneg 1 p.val k)
    _ ≤ properPowerB1 := hsum

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Attempt05/Variant06f2607d56a17bba88e23ee9a788c8afd472937d9b0e3e5842c766c4888c51bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Attempt05/Variant06f2607d56a17bba88e23ee9a788c8afd472937d9b0e3e5842c766c4888c51bb.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c035f6cc478b72a984905c7d56da2366e273092d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

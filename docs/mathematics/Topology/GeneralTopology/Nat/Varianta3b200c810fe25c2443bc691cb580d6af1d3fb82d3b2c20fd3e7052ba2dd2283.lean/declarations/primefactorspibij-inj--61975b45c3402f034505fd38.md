# primeFactorsPiBij_inj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fe790ed17edfc5fb85642b444b393262caac3a95",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 191,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a3/a3b200c810fe25c2443bc691cb580d6af1d3fb82d3b2c20fd3e7052ba2dd2283.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:18427325-1fe2-a2e7-8d94-f592d42a5945",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:acab702d-2a59-14c7-2f11-a4b754c77ef8",
  "kind": "theorem",
  "lexical_name": "primeFactorsPiBij_inj",
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
  "slug": "primefactorspibij-inj--61975b45c3402f034505fd38",
  "source": {
    "blob": "fe790ed17edfc5fb85642b444b393262caac3a95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 191,
    "path": "GRWTSK/Topology/GeneralTopology/Nat/Varianta3b200c810fe25c2443bc691cb580d6af1d3fb82d3b2c20fd3e7052ba2dd2283.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61975b45c3402f034505fd38932a4b65cf4cb7e08c67ffe37958692414771490",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Nat/Varianta3b200c810fe25c2443bc691cb580d6af1d3fb82d3b2c20fd3e7052ba2dd2283.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:acab702d-2a59-14c7-2f11-a4b754c77ef8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem primeFactorsPiBij_inj (d n : ℕ)
    (f : (p : ℕ) → p ∈ n.primeFactors → Fin d) (hf : f ∈ pi n.primeFactors fun _ => univ)
    (g : (p : ℕ) → p ∈ n.primeFactors → Fin d) (hg : g ∈ pi n.primeFactors fun _ => univ) :
    Nat.primeFactorsPiBij d n f hf = Nat.primeFactorsPiBij d n g hg → f = g := by
  contrapose!
  simp_rw [Function.ne_iff]
  intro ⟨p, hp, hfg⟩
  use f p hp
  dsimp only [Nat.primeFactorsPiBij]
  apply ne_of_mem_of_not_mem (s := {x | p ∣ x}) <;> simp_rw [Set.mem_setOf_eq]
  · rw [Finset.prod_filter]
    convert Finset.dvd_prod_of_mem _ (mem_attach (n.primeFactors) ⟨p, hp⟩)
    rw [if_pos rfl]
  · rw [mem_primeFactors] at hp
    rw [Prime.dvd_finset_prod_iff hp.1.prime]
    push_neg
    intro q hq
    rw [Nat.prime_dvd_prime_iff_eq hp.1 (Nat.prime_of_mem_primeFactorsList
      <| List.mem_toFinset.mp q.2)]
    rintro rfl
    rw [(mem_filter.mp hq).2] at hfg
    exact hfg rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Nat/Varianta3b200c810fe25c2443bc691cb580d6af1d3fb82d3b2c20fd3e7052ba2dd2283.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Nat/Varianta3b200c810fe25c2443bc691cb580d6af1d3fb82d3b2c20fd3e7052ba2dd2283.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe790ed17edfc5fb85642b444b393262caac3a95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# primeFactorsPiBij_surj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7fdc2ca609ff443ae8079ced89c6ed28b4a03af6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 209,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1f/1fa0e08509717364c79a8df6e589baccd3404cd0f3878d123f8a5e8b853f24af.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2704263e-b371-6479-6a4f-a14d47d71dd9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a47f75d3-8558-4f66-86a6-d36708c1db58",
  "kind": "theorem",
  "lexical_name": "primeFactorsPiBij_surj",
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
  "slug": "primefactorspibij-surj--0b38b6e42cc7155a2661de6c",
  "source": {
    "blob": "7fdc2ca609ff443ae8079ced89c6ed28b4a03af6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 209,
    "path": "GRWTSK/Topology/GeneralTopology/Nat/Variant1fa0e08509717364c79a8df6e589baccd3404cd0f3878d123f8a5e8b853f24af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b38b6e42cc7155a2661de6c0ee8475fbfcabb61617f2c5f3f30c307245a6b44",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Nat/Variant1fa0e08509717364c79a8df6e589baccd3404cd0f3878d123f8a5e8b853f24af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a47f75d3-8558-4f66-86a6-d36708c1db58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem primeFactorsPiBij_surj (d n : ℕ) (hn : Squarefree n)
    (t : Fin d → ℕ) (ht : t ∈ finMulAntidiag d n) : ∃ (g : _)
    (hg : g ∈ pi n.primeFactors fun _ => univ), Nat.primeFactorsPiBij d n g hg = t := by
  have existsUnique := fun (p : ℕ) (hp : p ∈ n.primeFactors) =>
    (finMulAntidiag_existsUnique_prime_dvd hn
      (mem_primeFactors_iff_mem_primeFactorsList.mp hp) t ht)
  choose f hf hf_unique using existsUnique
  refine ⟨f, ?_, ?_⟩
  · simp only [mem_pi, mem_univ, forall_true_iff]
  funext i
  have : t i ∣ n := dvd_of_mem_finMulAntidiag ht _
  trans (∏ p ∈ n.primeFactors.attach, if p.1 ∣ t i then p else 1)
  · rw [Nat.primeFactorsPiBij, ← prod_filter]
    congr
    grind
  rw [prod_attach (f := fun p => if p ∣ t i then p else 1), ← Finset.prod_filter]
  rw [primeFactors_filter_dvd_of_dvd hn.ne_zero this]
  exact prod_primeFactors_of_squarefree <| hn.squarefree_of_dvd this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Nat/Variant1fa0e08509717364c79a8df6e589baccd3404cd0f3878d123f8a5e8b853f24af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Nat/Variant1fa0e08509717364c79a8df6e589baccd3404cd0f3878d123f8a5e8b853f24af.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fdc2ca609ff443ae8079ced89c6ed28b4a03af6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

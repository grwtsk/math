# finMulAntidiag_existsUnique_prime_dvd

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
      "line": 156,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1f/1fa0e08509717364c79a8df6e589baccd3404cd0f3878d123f8a5e8b853f24af.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bf41e7f8-bc8d-8fbb-5dce-3985fd95ac5c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ee0f77bd-bfb2-b4b3-770a-241f1bf4866e",
  "kind": "lemma",
  "lexical_name": "finMulAntidiag_existsUnique_prime_dvd",
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
  "slug": "finmulantidiag-existsunique-prime-dvd--e797972853613951e34f2769",
  "source": {
    "blob": "7fdc2ca609ff443ae8079ced89c6ed28b4a03af6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 156,
    "path": "GRWTSK/Topology/GeneralTopology/Nat/Variant1fa0e08509717364c79a8df6e589baccd3404cd0f3878d123f8a5e8b853f24af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e797972853613951e34f27696a7be43472edc5f7793f4cb1fca926decb786350",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Nat/Variant1fa0e08509717364c79a8df6e589baccd3404cd0f3878d123f8a5e8b853f24af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee0f77bd-bfb2-b4b3-770a-241f1bf4866e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma finMulAntidiag_existsUnique_prime_dvd {d n p : ℕ} (hn : Squarefree n)
    (hp : p ∈ n.primeFactorsList) (f : Fin d → ℕ) (hf : f ∈ finMulAntidiag d n) :
    ∃! i, p ∣ f i := by
  rw [mem_finMulAntidiag] at hf
  rw [mem_primeFactorsList hf.2, ← hf.1, hp.1.prime.dvd_finsetProd_iff] at hp
  obtain ⟨i, his, hi⟩ := hp.2
  refine ⟨i, hi, ?_⟩
  intro j hj
  by_contra hij
  apply Nat.Prime.not_coprime_iff_dvd.mpr ⟨p, hp.1, hi, hj⟩
  apply Nat.coprime_of_squarefree_mul
  apply hn.squarefree_of_dvd
  rw [← hf.1, ← Finset.mul_prod_erase _ _ his,
    ← Finset.mul_prod_erase _ _ (mem_erase.mpr ⟨hij, mem_univ _⟩), ← mul_assoc]
  apply Nat.dvd_mul_right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Nat/Variant1fa0e08509717364c79a8df6e589baccd3404cd0f3878d123f8a5e8b853f24af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Nat/Variant1fa0e08509717364c79a8df6e589baccd3404cd0f3878d123f8a5e8b853f24af.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fdc2ca609ff443ae8079ced89c6ed28b4a03af6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

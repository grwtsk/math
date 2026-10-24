# reverse_lucas_primality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "39e0f93a7b61bb552bc2c993d64a0e962b9686c6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 53,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/66/66ffb4a47b65199342ee6b40e72b832f092f2fc15e305f44bf5a0fc0e2d75c0e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f921c9a3-126a-bb00-4469-7e3a0bd62f4d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:08a1596c-c45d-88f2-3894-126c6e5eefab",
  "kind": "theorem",
  "lexical_name": "reverse_lucas_primality",
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
  "slug": "reverse-lucas-primality--8b56075878f8ea345f9db7a5",
  "source": {
    "blob": "39e0f93a7b61bb552bc2c993d64a0e962b9686c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 53,
    "path": "GRWTSK/Algebra/LucasPrimality/Variant66ffb4a47b65199342ee6b40e72b832f092f2fc15e305f44bf5a0fc0e2d75c0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b56075878f8ea345f9db7a5ae9687970a1bf56f5d69dccc205b5a34c7778e23",
  "verification": {
    "reference": "docs/verification/Algebra/LucasPrimality/Variant66ffb4a47b65199342ee6b40e72b832f092f2fc15e305f44bf5a0fc0e2d75c0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08a1596c-c45d-88f2-3894-126c6e5eefab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reverse_lucas_primality (p : ℕ) (hP : p.Prime) :
    ∃ a : ZMod p, a ^ (p - 1) = 1 ∧ ∀ q : ℕ, q.Prime → q ∣ p - 1 → a ^ ((p - 1) / q) ≠ 1 := by
  have : Fact p.Prime := ⟨hP⟩
  obtain ⟨g, hg⟩ := IsCyclic.exists_generator (α := (ZMod p)ˣ)
  have h1 : orderOf g = p - 1 := by
    rwa [orderOf_eq_card_of_forall_mem_zpowers hg, Nat.card_eq_fintype_card,
      ← Nat.prime_iff_card_units]
  have h2 := tsub_pos_iff_lt.2 hP.one_lt
  rw [← orderOf_injective (Units.coeHom _) Units.ext _, orderOf_eq_iff h2] at h1
  refine ⟨g, h1.1, fun q hq hqd ↦ ?_⟩
  replace hq := hq.one_lt
  exact h1.2 _ (Nat.div_lt_self h2 hq) (Nat.div_pos (Nat.le_of_dvd h2 hqd) (zero_lt_one.trans hq))

/-- A number `p` is prime if and only if there exists an `a` such that
`a^(p-1) = 1 mod p` and `a^((p-1)/q) ≠ 1 mod p` for all prime factors `q` of `p-1`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LucasPrimality/Variant66ffb4a47b65199342ee6b40e72b832f092f2fc15e305f44bf5a0fc0e2d75c0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LucasPrimality/Variant66ffb4a47b65199342ee6b40e72b832f092f2fc15e305f44bf5a0fc0e2d75c0e.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39e0f93a7b61bb552bc2c993d64a0e962b9686c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

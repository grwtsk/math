# nat_is_prime_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0cb127333ca0fc98d8f09ebb60f8bbf4b7dbe236",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 111,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ff/ffdf5ac2cb185f001f92cfe5e2baa63feb4e835d31ab27739781dad2c6769d9b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a3b8651b-bf43-1551-f7f2-488959f5f87d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3ef4e530-da6d-8b2e-67ef-cd19b80500d1",
  "kind": "theorem",
  "lexical_name": "nat_is_prime_iff",
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
  "slug": "nat-is-prime-iff--3b869bc69f136ec2350dbc71",
  "source": {
    "blob": "0cb127333ca0fc98d8f09ebb60f8bbf4b7dbe236",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 111,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Divisibility/Variantffdf5ac2cb185f001f92cfe5e2baa63feb4e835d31ab27739781dad2c6769d9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b869bc69f136ec2350dbc7113d394be9d0367a173169106d692aa8ed56801c2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Divisibility/Variantffdf5ac2cb185f001f92cfe5e2baa63feb4e835d31ab27739781dad2c6769d9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ef4e530-da6d-8b2e-67ef-cd19b80500d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nat_is_prime_iff : Prime (n : Cardinal) ↔ n.Prime := by
  simp only [Prime, Nat.prime_iff]
  refine' and_congr (by simp) (and_congr _ ⟨fun h b c hbc => _, fun h b c hbc => _⟩)
  · simp only [isUnit_iff, Nat.isUnit_iff]
    exact_mod_cast Iff.rfl
  · exact_mod_cast h b c (by exact_mod_cast hbc)
  cases' lt_or_le (b * c) ℵ₀ with h' h'
  · rcases mul_lt_aleph0_iff.mp h' with (rfl | rfl | ⟨hb, hc⟩)
    · simp
    · simp
    lift b to ℕ using hb
    lift c to ℕ using hc
    exact_mod_cast h b c (by exact_mod_cast hbc)
  rcases aleph0_le_mul_iff.mp h' with ⟨hb, hc, hℵ₀⟩
  have hn : (n : Cardinal) ≠ 0 := by
    intro h
    rw [h, zero_dvd_iff, mul_eq_zero] at hbc
    cases hbc <;> contradiction
  wlog hℵ₀b : ℵ₀ ≤ b
  refine' (this h c b _ _ hc hb hℵ₀.symm hn (hℵ₀.resolve_left hℵ₀b)).symm <;> try assumption
  rwa [mul_comm] at hbc
  rwa [mul_comm] at h'
  exact Or.inl (dvd_of_le_of_aleph0_le hn ((nat_lt_aleph0 n).le.trans hℵ₀b) hℵ₀b)
#align cardinal.nat_is_prime_iff Cardinal.nat_is_prime_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Divisibility/Variantffdf5ac2cb185f001f92cfe5e2baa63feb4e835d31ab27739781dad2c6769d9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Divisibility/Variantffdf5ac2cb185f001f92cfe5e2baa63feb4e835d31ab27739781dad2c6769d9b.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cb127333ca0fc98d8f09ebb60f8bbf4b7dbe236` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

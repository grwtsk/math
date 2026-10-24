# eq_pow_of_mem_rootsOfUnity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:79867eb6-9f91-64f0-e605-47583e2340a6",
  "kind": "theorem",
  "lexical_name": "eq_pow_of_mem_rootsOfUnity",
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
  "slug": "eq-pow-of-mem-rootsofunity--82628d1abd5d9ef26898c07c",
  "source": {
    "blob": "16f0e4840a5bd997c0264c5ad2940ff923ee6a9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 774,
    "line": 762,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant507a55fa0af44c5ef5eeb57a8cead19605a65243c4a08d6760f07fec18e3a441.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82628d1abd5d9ef26898c07cf288fb21a1ab37bd69dc93677b9746bae6d5a79f",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variant507a55fa0af44c5ef5eeb57a8cead19605a65243c4a08d6760f07fec18e3a441.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79867eb6-9f91-64f0-e605-47583e2340a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 762–774.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_pow_of_mem_rootsOfUnity {k : ℕ+} {ζ ξ : Rˣ} (h : IsPrimitiveRoot ζ k)
    (hξ : ξ ∈ rootsOfUnity k R) : ∃ (i : ℕ), i < k ∧ ζ ^ i = ξ := by
  obtain ⟨n, rfl⟩ : ∃ n : ℤ, ζ ^ n = ξ := by rwa [← h.zpowers_eq] at hξ
  have hk0 : (0 : ℤ) < k := by exact_mod_cast k.pos
  let i := n % k
  have hi0 : 0 ≤ i := Int.emod_nonneg _ (ne_of_gt hk0)
  lift i to ℕ using hi0 with i₀ hi₀
  refine' ⟨i₀, _, _⟩
  · zify; rw [hi₀]; exact Int.emod_lt_of_pos _ hk0
  · rw [← zpow_ofNat, hi₀, ← Int.emod_add_ediv n k, zpow_add, zpow_mul, h.zpow_eq_one, one_zpow,
      mul_one]
#align is_primitive_root.eq_pow_of_mem_roots_of_unity IsPrimitiveRoot.eq_pow_of_mem_rootsOfUnity

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variant507a55fa0af44c5ef5eeb57a8cead19605a65243c4a08d6760f07fec18e3a441.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant507a55fa0af44c5ef5eeb57a8cead19605a65243c4a08d6760f07fec18e3a441.lean#L762).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16f0e4840a5bd997c0264c5ad2940ff923ee6a9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

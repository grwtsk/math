# exists_int_eq_of_part_denom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c57784793a3c2f2fef2db7353a5f21672cd2408e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 175,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bd/bd3ac0ed13dd8446977fdaf4d02568dc289401e3c2a7e6f105654178e8cc6d17.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2703c3d7-ac4b-2f89-18ee-cf94020eae3f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:043c94fa-cb6c-e361-085a-8e35ca3a4fcc",
  "kind": "theorem",
  "lexical_name": "exists_int_eq_of_part_denom",
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
  "slug": "exists-int-eq-of-part-denom--7c59cfb1e206700a18aab75b",
  "source": {
    "blob": "c57784793a3c2f2fef2db7353a5f21672cd2408e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 175,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variantbd3ac0ed13dd8446977fdaf4d02568dc289401e3c2a7e6f105654178e8cc6d17.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c59cfb1e206700a18aab75be9df512cd2f8bbebc5a7522835b810aeb793300b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variantbd3ac0ed13dd8446977fdaf4d02568dc289401e3c2a7e6f105654178e8cc6d17.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:043c94fa-cb6c-e361-085a-8e35ca3a4fcc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_int_eq_of_part_denom {b : K}
    (nth_part_denom_eq : (of v).partialDenominators.get? n = some b) : ∃ z : ℤ, b = (z : K) := by
  obtain ⟨gp, nth_s_eq, gp_b_eq_b_n⟩ : ∃ gp, (of v).s.get? n = some gp ∧ gp.b = b;
  exact exists_s_b_of_part_denom nth_part_denom_eq
  have : ∃ z : ℤ, gp.b = (z : K) := (of_part_num_eq_one_and_exists_int_part_denom_eq nth_s_eq).right
  rwa [gp_b_eq_b_n] at this
#align generalized_continued_fraction.exists_int_eq_of_part_denom GeneralizedContinuedFraction.exists_int_eq_of_part_denom

/-!
One of our next goals is to show that `bₙ * Bₙ ≤ Bₙ₊₁`. For this, we first show that the partial
denominators `Bₙ` are bounded from below by the fibonacci sequence `Nat.fib`. This then implies that
`0 ≤ Bₙ` and hence `Bₙ₊₂ = bₙ₊₁ * Bₙ₊₁ + Bₙ ≥ bₙ₊₁ * Bₙ₊₁ + 0 = bₙ₊₁ * Bₙ₊₁`.
-/


-- open `Nat` as we will make use of fibonacci numbers.
open Nat

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variantbd3ac0ed13dd8446977fdaf4d02568dc289401e3c2a7e6f105654178e8cc6d17.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variantbd3ac0ed13dd8446977fdaf4d02568dc289401e3c2a7e6f105654178e8cc6d17.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c57784793a3c2f2fef2db7353a5f21672cd2408e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

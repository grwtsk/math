# exists_right_complement'_of_coprime_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:45b87b6f-4fb7-e5f8-8ba2-64e04410bdd1",
  "kind": "theorem",
  "lexical_name": "exists_right_complement'_of_coprime_aux",
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
  "slug": "exists-right-complement-of-coprime-aux--65c1516071b7886a3bb353d8",
  "source": {
    "blob": "f4a972b6051a0c32d0d4b0dc56aa44753d9bb0a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 136,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant5c01de5a56a736a4ce85637944e16fb2dcbfd47baa3fa3d30cef05a5593b8b99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65c1516071b7886a3bb353d8820eee16e5470c270f1d6b5e28fe44f6bbec2d3f",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant5c01de5a56a736a4ce85637944e16fb2dcbfd47baa3fa3d30cef05a5593b8b99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45b87b6f-4fb7-e5f8-8ba2-64e04410bdd1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem exists_right_complement'_of_coprime_aux (hH : Nat.coprime (Nat.card H) H.index) :
    ∃ K : Subgroup G, IsComplement' H K :=
  instNonempty.elim fun α => ⟨stabilizer G α, isComplement'_stabilizer_of_coprime hH⟩

end SchurZassenhausAbelian

open scoped Classical

universe u

namespace SchurZassenhausInduction

/-! ## Proof of the Schur-Zassenhaus theorem

In this section, we prove the Schur-Zassenhaus theorem.
The proof is by contradiction. We assume that `G` is a minimal counterexample to the theorem.
-/


variable {G : Type u} [Group G] [Fintype G] {N : Subgroup G} [Normal N]
  (h1 : Nat.coprime (Fintype.card N) N.index)
  (h2 :
    ∀ (G' : Type u) [Group G'] [Fintype G'],
      ∀ (_ : Fintype.card G' < Fintype.card G) {N' : Subgroup G'} [N'.Normal]
        (_ : Nat.coprime (Fintype.card N') N'.index), ∃ H' : Subgroup G', IsComplement' N' H')
  (h3 : ∀ H : Subgroup G, ¬IsComplement' N H)

/-! We will arrive at a contradiction via the following steps:
 * step 0: `N` (the normal Hall subgroup) is nontrivial.
 * step 1: If `K` is a subgroup of `G` with `K ⊔ N = ⊤`, then `K = ⊤`.
 * step 2: `N` is a minimal normal subgroup, phrased in terms of subgroups of `G`.
 * step 3: `N` is a minimal normal subgroup, phrased in terms of subgroups of `N`.
 * step 4: `p` (`min_fact (Fintype.card N)`) is prime (follows from step0).
 * step 5: `P` (a Sylow `p`-subgroup of `N`) is nontrivial.
 * step 6: `N` is a `p`-group (applies step 1 to the normalizer of `P` in `G`).
 * step 7: `N` is abelian (applies step 3 to the center of `N`).
-/


/-- Do not use this lemma: It is made obsolete by `exists_right_complement'_of_coprime` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant5c01de5a56a736a4ce85637944e16fb2dcbfd47baa3fa3d30cef05a5593b8b99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variant5c01de5a56a736a4ce85637944e16fb2dcbfd47baa3fa3d30cef05a5593b8b99.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4a972b6051a0c32d0d4b0dc56aa44753d9bb0a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

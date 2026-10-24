# centeredBeta_of_minFac_gt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:87a3db0b-0e7e-f10d-d94f-62f511aa6bf7",
  "kind": "theorem",
  "lexical_name": "centeredBeta_of_minFac_gt",
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
  "slug": "centeredbeta-of-minfac-gt--d24659accb9f9af951f1193d",
  "source": {
    "blob": "e2b004aed76d3fa80a4542de11c6f6e24a563801",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 21,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceLargePrimeDiagonal/Variantb54b81d111d48753eba04a3c928c9a6755fd5555dbadd9345b6b8f602b940132.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d24659accb9f9af951f1193de4a6eaeab8ed620343f01a495665ec7d36234735",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceLargePrimeDiagonal/Variantb54b81d111d48753eba04a3c928c9a6755fd5555dbadd9345b6b8f602b940132.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87a3db0b-0e7e-f10d-d94f-62f511aa6bf7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredBeta_of_minFac_gt (U n : ℕ) (hU : 1 ≤ U) (hn : U < n)
    (hmin : U < n.minFac) : centeredBeta U n = alpha U - 1 := by
  classical
  have hshort : n.divisors.filter (fun d ↦ d ≤ U) = {1} := by
    ext d
    simp only [Finset.mem_filter, Finset.mem_singleton]
    constructor
    · rintro ⟨hd, hdU⟩
      have hd0 : 0 < d := Nat.pos_of_dvd_of_pos (Nat.dvd_of_mem_divisors hd) (by omega)
      by_contra hd1
      have hdm : n.minFac ≤ d := Nat.minFac_le_of_dvd (by omega)
        (Nat.dvd_of_mem_divisors hd)
      omega
    · rintro rfl
      exact ⟨Nat.mem_divisors.mpr ⟨one_dvd n, by omega⟩, hU⟩
  unfold centeredBeta
  rw [beta_eq_delta_sub_short, if_neg (by omega), hshort]
  simp
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceLargePrimeDiagonal/Variantb54b81d111d48753eba04a3c928c9a6755fd5555dbadd9345b6b8f602b940132.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceLargePrimeDiagonal/Variantb54b81d111d48753eba04a3c928c9a6755fd5555dbadd9345b6b8f602b940132.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2b004aed76d3fa80a4542de11c6f6e24a563801` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

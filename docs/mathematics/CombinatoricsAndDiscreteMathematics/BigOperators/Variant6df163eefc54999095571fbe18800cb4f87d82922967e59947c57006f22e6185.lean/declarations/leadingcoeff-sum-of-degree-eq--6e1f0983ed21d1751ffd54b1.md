# leadingCoeff_sum_of_degree_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b333d462-2c2f-bd88-f1ab-79e9d5a451d2",
  "kind": "theorem",
  "lexical_name": "leadingCoeff_sum_of_degree_eq",
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
  "slug": "leadingcoeff-sum-of-degree-eq--6e1f0983ed21d1751ffd54b1",
  "source": {
    "blob": "804d8253c397a0e3934a2f809957eb8f6509e41f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 81,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant6df163eefc54999095571fbe18800cb4f87d82922967e59947c57006f22e6185.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e1f0983ed21d1751ffd54b1fa8ed5aa32dc135f161f69b45fc33ba1c6dade48",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BigOperators/Variant6df163eefc54999095571fbe18800cb4f87d82922967e59947c57006f22e6185.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b333d462-2c2f-bd88-f1ab-79e9d5a451d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem leadingCoeff_sum_of_degree_eq {f : ι → S[X]} {s : Finset ι} {d}
    (hd : ∀ k ∈ s, (f k).degree = d) (hf : ∑ k ∈ s, (f k).leadingCoeff ≠ 0) :
    (∑ k ∈ s, f k).leadingCoeff = ∑ k ∈ s, (f k).leadingCoeff := by
  obtain _ | d := d
  · simp_all [WithBot.none_eq_bot]
  · replace hd k (hk : k ∈ s) : (f k).natDegree = d := natDegree_eq_of_degree_eq_some <| hd k hk
    suffices (∑ k ∈ s, f k).natDegree = d by simp_all [leadingCoeff]
    apply natDegree_eq_of_le_of_coeff_ne_zero
    · aesop (add safe natDegree_sum_le_of_forall_le)
    · simp_all [leadingCoeff]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BigOperators/Variant6df163eefc54999095571fbe18800cb4f87d82922967e59947c57006f22e6185.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant6df163eefc54999095571fbe18800cb4f87d82922967e59947c57006f22e6185.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `804d8253c397a0e3934a2f809957eb8f6509e41f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

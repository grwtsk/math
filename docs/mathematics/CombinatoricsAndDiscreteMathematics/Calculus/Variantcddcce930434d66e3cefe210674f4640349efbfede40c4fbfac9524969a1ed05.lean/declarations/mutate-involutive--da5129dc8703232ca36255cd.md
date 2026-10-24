# mutate_involutive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5acf55b2-4edd-4ca2-1d11-6c60f3c75e13",
  "kind": "theorem",
  "lexical_name": "mutate_involutive",
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
  "slug": "mutate-involutive--da5129dc8703232ca36255cd",
  "source": {
    "blob": "e4a8c9ba6c212f81b7a71c3e9c28507ca152fb6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 34,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Calculus/Variantcddcce930434d66e3cefe210674f4640349efbfede40c4fbfac9524969a1ed05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da5129dc8703232ca36255cd769df4513851700bcfbbd62bef13dedb2f713864",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Calculus/Variantcddcce930434d66e3cefe210674f4640349efbfede40c4fbfac9524969a1ed05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5acf55b2-4edd-4ca2-1d11-6c60f3c75e13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mutate_involutive {n : ℕ} (A : Matrix (Fin n) (Fin n) ℤ) (i : Fin n) :
    Function.Involutive (mutate A i) := by
  intro x
  funext j
  by_cases h : j = i
  · subst j
    have hs : (∑ k ∈ Finset.univ.erase i, A i k * mutate A i x k) =
        ∑ k ∈ Finset.univ.erase i, A i k * x k := by
      apply Finset.sum_congr rfl
      intro k hk
      rw [mutate_other A i k x (Finset.mem_erase.mp hk).1]
    simp only [mutate]
    change -(-x i + ∑ k ∈ Finset.univ.erase i, A i k * x k) +
      (∑ k ∈ Finset.univ.erase i, A i k * mutate A i x k) = x i
    rw [hs]
    ring
  · rw [mutate_other A i j _ h, mutate_other A i j _ h]

/-- Words are executed left to right on column populations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Calculus/Variantcddcce930434d66e3cefe210674f4640349efbfede40c4fbfac9524969a1ed05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Calculus/Variantcddcce930434d66e3cefe210674f4640349efbfede40c4fbfac9524969a1ed05.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4a8c9ba6c212f81b7a71c3e9c28507ca152fb6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

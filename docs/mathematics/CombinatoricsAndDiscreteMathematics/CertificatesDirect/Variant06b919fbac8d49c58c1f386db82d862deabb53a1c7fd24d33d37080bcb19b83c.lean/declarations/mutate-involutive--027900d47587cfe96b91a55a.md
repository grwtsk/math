# mutate_involutive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:12c7fd89-518a-e9b7-e9ed-bae130b273e1",
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
  "slug": "mutate-involutive--027900d47587cfe96b91a55a",
  "source": {
    "blob": "afbb7db15b02e959b830f440e25ca185f30fc7cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 25,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CertificatesDirect/Variant06b919fbac8d49c58c1f386db82d862deabb53a1c7fd24d33d37080bcb19b83c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:027900d47587cfe96b91a55a758bfc555165516d987c5bc275d6cae544f4640b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CertificatesDirect/Variant06b919fbac8d49c58c1f386db82d862deabb53a1c7fd24d33d37080bcb19b83c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12c7fd89-518a-e9b7-e9ed-bae130b273e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–43.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CertificatesDirect/Variant06b919fbac8d49c58c1f386db82d862deabb53a1c7fd24d33d37080bcb19b83c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CertificatesDirect/Variant06b919fbac8d49c58c1f386db82d862deabb53a1c7fd24d33d37080bcb19b83c.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afbb7db15b02e959b830f440e25ca185f30fc7cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

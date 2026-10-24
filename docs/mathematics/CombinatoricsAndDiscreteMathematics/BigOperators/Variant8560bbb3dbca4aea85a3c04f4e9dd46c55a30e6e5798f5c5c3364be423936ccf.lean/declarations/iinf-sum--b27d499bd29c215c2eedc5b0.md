# iInf_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0095c50c-54c0-0568-d4bc-f334c73e059d",
  "kind": "theorem",
  "lexical_name": "iInf_sum",
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
  "slug": "iinf-sum--b27d499bd29c215c2eedc5b0",
  "source": {
    "blob": "34944db3f529ba9a651f79824b82660a80af28cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 58,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8560bbb3dbca4aea85a3c04f4e9dd46c55a30e6e5798f5c5c3364be423936ccf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b27d499bd29c215c2eedc5b037bde1e46917dd3f992058a80fcf2786998f6a0a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8560bbb3dbca4aea85a3c04f4e9dd46c55a30e6e5798f5c5c3364be423936ccf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0095c50c-54c0-0568-d4bc-f334c73e059d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iInf_sum {ι α : Type*} {f : ι → α → ℝ≥0∞} {s : Finset α} [Nonempty ι]
    (h : ∀ (t : Finset α) (i j : ι), ∃ k, ∀ a ∈ t, f k a ≤ f i a ∧ f k a ≤ f j a) :
    ⨅ i, ∑ a ∈ s, f i a = ∑ a ∈ s, ⨅ i, f i a := by
  induction' s using Finset.cons_induction_on with a s ha ih
  · simp only [Finset.sum_empty, ciInf_const]
  · simp only [Finset.sum_cons, ← ih]
    refine (iInf_add_iInf fun i j => ?_).symm
    refine (h (Finset.cons a s ha) i j).imp fun k hk => ?_
    rw [Finset.forall_mem_cons] at hk
    exact add_le_add hk.1.1 (Finset.sum_le_sum fun a ha => (hk.2 a ha).2)

end OperationsAndInfty

section Sum

open Finset

variable {α : Type*} {s : Finset α} {f : α → ℝ≥0∞}

/-- A product of finite numbers is still finite. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8560bbb3dbca4aea85a3c04f4e9dd46c55a30e6e5798f5c5c3364be423936ccf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8560bbb3dbca4aea85a3c04f4e9dd46c55a30e6e5798f5c5c3364be423936ccf.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34944db3f529ba9a651f79824b82660a80af28cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

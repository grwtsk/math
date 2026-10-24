# finiteCyclicReciprocalWeight_endpoint_add_steps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b6091e99-52ca-330f-08a9-8b7600213cca",
  "kind": "theorem",
  "lexical_name": "finiteCyclicReciprocalWeight_endpoint_add_steps",
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
  "slug": "finitecyclicreciprocalweight-endpoint-add-steps--1e57337059974db0fa2802ef",
  "source": {
    "blob": "eae3fa546b9a840cdf165382f97b80952c06d8d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 76,
    "path": "GRWTSK/NumberTheory/CharacterSums/FiniteCyclicReciprocalAbel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e57337059974db0fa2802efd6f71bb8892c906c901925f6aeeb2b6d07bdf810",
  "verification": {
    "reference": "docs/verification/NumberTheory/CharacterSums/FiniteCyclicReciprocalAbel.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6091e99-52ca-330f-08a9-8b7600213cca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteCyclicReciprocalWeight_endpoint_add_steps
    (A B R : ℕ) (hAB : A < B) :
    finiteCyclicReciprocalWeight R (B - 1) +
        ∑ k ∈ Finset.Ico A (B - 1),
          (finiteCyclicReciprocalWeight R k -
            finiteCyclicReciprocalWeight R (k + 1)) =
      finiteCyclicReciprocalWeight R A := by
  have hAle : A ≤ B - 1 := Nat.le_sub_one_of_lt hAB
  have htel :=
    Finset.sum_Ico_sub (fun n => finiteCyclicReciprocalWeight R n) hAle
  calc
    finiteCyclicReciprocalWeight R (B - 1) +
        ∑ k ∈ Finset.Ico A (B - 1),
          (finiteCyclicReciprocalWeight R k -
            finiteCyclicReciprocalWeight R (k + 1)) =
      finiteCyclicReciprocalWeight R (B - 1) -
        ∑ k ∈ Finset.Ico A (B - 1),
          (finiteCyclicReciprocalWeight R (k + 1) -
            finiteCyclicReciprocalWeight R k) := by
        congr 1
        rw [← Finset.sum_neg_distrib]
        apply Finset.sum_congr rfl
        intro k _hk
        ring
    _ = finiteCyclicReciprocalWeight R A := by
      rw [htel]
      ring

/-- Exact finite Abel identity.  The first term is the terminal endpoint and
the remaining sum contains every reciprocal decrement and its corresponding
partial character sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/CharacterSums/FiniteCyclicReciprocalAbel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/CharacterSums/FiniteCyclicReciprocalAbel.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eae3fa546b9a840cdf165382f97b80952c06d8d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

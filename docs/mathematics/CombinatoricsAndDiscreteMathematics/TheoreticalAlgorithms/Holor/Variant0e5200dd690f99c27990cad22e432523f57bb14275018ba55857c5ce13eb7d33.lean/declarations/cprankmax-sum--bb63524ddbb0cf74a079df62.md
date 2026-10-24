# cprankMax_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d40f9d0-6dc9-dab1-6e11-a2a2eb95cf5d",
  "kind": "theorem",
  "lexical_name": "cprankMax_sum",
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
  "slug": "cprankmax-sum--bb63524ddbb0cf74a079df62",
  "source": {
    "blob": "17a804e36f384069614a5b69bca9fda3ee315d2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 384,
    "line": 369,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant0e5200dd690f99c27990cad22e432523f57bb14275018ba55857c5ce13eb7d33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb63524ddbb0cf74a079df62bb579e3eff15e15d37ff76cff2734b646c119485",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant0e5200dd690f99c27990cad22e432523f57bb14275018ba55857c5ce13eb7d33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d40f9d0-6dc9-dab1-6e11-a2a2eb95cf5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 369–384.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cprankMax_sum [Ring α] {β} {n : ℕ} (s : Finset β) (f : β → Holor α ds) :
    (∀ x ∈ s, CPRankMax n (f x)) → CPRankMax (s.card * n) (∑ x in s, f x) :=
  letI := Classical.decEq β
  Finset.induction_on s (by simp [CPRankMax.zero])
    (by
      intro x s(h_x_notin_s : x ∉ s)ih h_cprank
      simp only [Finset.sum_insert h_x_notin_s, Finset.card_insert_of_not_mem h_x_notin_s]
      rw [Nat.right_distrib]
      simp only [Nat.one_mul, Nat.add_comm]
      have ih' : CPRankMax (Finset.card s * n) (∑ x in s, f x) := by
        apply ih
        intro (x : β) (h_x_in_s : x ∈ s)
        simp only [h_cprank, Finset.mem_insert_of_mem, h_x_in_s]
      exact cprankMax_add (h_cprank x (Finset.mem_insert_self x s)) ih')
#align holor.cprank_max_sum Holor.cprankMax_sum

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant0e5200dd690f99c27990cad22e432523f57bb14275018ba55857c5ce13eb7d33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variant0e5200dd690f99c27990cad22e432523f57bb14275018ba55857c5ce13eb7d33.lean#L369).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17a804e36f384069614a5b69bca9fda3ee315d2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

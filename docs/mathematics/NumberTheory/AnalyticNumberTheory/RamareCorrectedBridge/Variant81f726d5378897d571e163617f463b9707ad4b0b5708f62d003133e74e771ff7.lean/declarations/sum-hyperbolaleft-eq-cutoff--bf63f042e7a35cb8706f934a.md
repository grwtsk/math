# sum_hyperbolaLeft_eq_cutoff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fc5d4f7bddc48e8e02422bac8d7b700317c7436c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 129,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/81f726d5378897d571e163617f463b9707ad4b0b5708f62d003133e74e771ff7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dfb18983-b9b6-0960-3483-783bd5c329c2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1121453d-0357-a703-8d66-6144ef8af619",
  "kind": "theorem",
  "lexical_name": "sum_hyperbolaLeft_eq_cutoff",
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
  "slug": "sum-hyperbolaleft-eq-cutoff--bf63f042e7a35cb8706f934a",
  "source": {
    "blob": "fc5d4f7bddc48e8e02422bac8d7b700317c7436c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 129,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant81f726d5378897d571e163617f463b9707ad4b0b5708f62d003133e74e771ff7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf63f042e7a35cb8706f934a3c9efda75440cca5c39f267f71d58f0676215adf",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant81f726d5378897d571e163617f463b9707ad4b0b5708f62d003133e74e771ff7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1121453d-0357-a703-8d66-6144ef8af619`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem sum_hyperbolaLeft_eq_cutoff (N : Nat) (F : Nat -> Nat -> Real) :
    (∑ p ∈ hyperbolaLeft N, F p.1 p.2) =
      ∑ d ∈ Finset.Icc 1 (Nat.sqrt N),
        ∑ m ∈ Finset.Icc 1 (N / d), F d m := by
  classical
  rw [Finset.sum_sigma']
  refine Finset.sum_bij (fun p _ => ⟨p.1, p.2⟩) ?_ ?_ ?_ ?_
  · intro p hp
    simp only [hyperbolaLeft, Finset.mem_filter, Finset.mem_product,
      Finset.mem_Icc] at hp
    rcases hp with ⟨⟨⟨hp1, hp1s⟩, ⟨hp2, hp2N⟩⟩, hprod⟩
    simp only [Finset.mem_sigma, Finset.mem_Icc]
    exact ⟨⟨hp1, hp1s⟩, hp2,
      (Nat.le_div_iff_mul_le (by omega : 0 < p.1)).2
        (by simpa [Nat.mul_comm] using hprod)⟩
  · intro p _ q _ heq
    apply Prod.ext
    · exact congrArg Sigma.fst heq
    · exact congrArg (fun z => z.2) heq
  · intro q hq
    rcases q with ⟨d, m⟩
    simp only [Finset.mem_sigma, Finset.mem_Icc] at hq
    rcases hq with ⟨⟨hd1, hds⟩, hm1, hmdiv⟩
    have hmN : m <= N := hmdiv.trans (Nat.div_le_self N d)
    have hprod : d * m <= N := by
      simpa [Nat.mul_comm] using
        (Nat.le_div_iff_mul_le (by omega : 0 < d)).1 hmdiv
    refine ⟨(d, m), ?_, rfl⟩
    simp only [hyperbolaLeft, Finset.mem_filter, Finset.mem_product,
      Finset.mem_Icc]
    exact ⟨⟨⟨hd1, hds⟩, ⟨hm1, hmN⟩⟩, hprod⟩
  · intro p hp
    rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant81f726d5378897d571e163617f463b9707ad4b0b5708f62d003133e74e771ff7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant81f726d5378897d571e163617f463b9707ad4b0b5708f62d003133e74e771ff7.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc5d4f7bddc48e8e02422bac8d7b700317c7436c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

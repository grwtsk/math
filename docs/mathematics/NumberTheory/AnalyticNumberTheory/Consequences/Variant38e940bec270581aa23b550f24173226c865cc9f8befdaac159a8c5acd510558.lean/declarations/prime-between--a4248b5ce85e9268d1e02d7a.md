# prime_between

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0c16c416971c366503f7f5ff829e7c163fa4c9df",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1555,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/38e940bec270581aa23b550f24173226c865cc9f8befdaac159a8c5acd510558.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2b575c6e-fe37-f857-6903-2aa1a41ca9af",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0ea17f41-484e-9456-2f93-6343a6d3bb58",
  "kind": "theorem",
  "lexical_name": "prime_between",
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
  "slug": "prime-between--a4248b5ce85e9268d1e02d7a",
  "source": {
    "blob": "0c16c416971c366503f7f5ff829e7c163fa4c9df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1589,
    "line": 1555,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Consequences/Variant38e940bec270581aa23b550f24173226c865cc9f8befdaac159a8c5acd510558.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4248b5ce85e9268d1e02d7a032c14eccd8fe122f6d9ffe85f38af9ef488d0da",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Consequences/Variant38e940bec270581aa23b550f24173226c865cc9f8befdaac159a8c5acd510558.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ea17f41-484e-9456-2f93-6343a6d3bb58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1555–1589.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_between {ε : ℝ} (hε : 0 < ε) :
    ∀ᶠ x : ℝ in atTop, ∃ p : ℕ, Nat.Prime p ∧ x < p ∧ p < (1 + ε) * x := by
  have squeeze := tendsto_by_squeeze (ε/2) (by linarith)
  rw [Filter.tendsto_iff_forall_eventually_mem] at squeeze
  specialize squeeze (Set.Ici 1) (by exact Ici_mem_atTop 1)
  simp only [Set.mem_Ici, eventually_atTop, ge_iff_le] at squeeze
  obtain ⟨a, ha⟩ := squeeze
  rw [eventually_atTop]
  use (max a 1)
  intro b hb
  rw [ge_iff_le, sup_le_iff] at hb
  specialize ha b hb.1

  have val_lt : (⌊b⌋₊.primeCounting : ℝ) < ⌊(1 + ε/2) * b⌋₊.primeCounting := by linarith
  norm_cast at val_lt

  have jump := prime_in_gap b ((1 + ε/2) * b) (by linarith) val_lt
  obtain ⟨p, hp, b_lt_p, p_le⟩ := jump
  have p_lt: p < (1 + ε) * b := by
    linarith
  use p


@[blueprint
  "mun"
  (statement := /-- We have $|\sum_{n \leq x} \frac{\mu(n)}{n}| \leq 1$. -/)
  (proof := /--
  From M\"obius inversion $1_{n=1} = \sum_{d|n} \mu(d)$ and summing we have
    $$ 1 = \sum_{d \leq x} \mu(d) \lfloor \frac{x}{d} \rfloor$$
    for any $x \geq 1$. Since $\lfloor \frac{x}{d} \rfloor = \frac{x}{d} - \epsilon_d$ with
    $0 \leq \epsilon_d < 1$ and $\epsilon_x = 0$, we conclude that
    $$ 1 ≥ x \sum_{d \leq x} \frac{\mu(d)}{d} - (x - 1)$$
    and the claim follows.
  -/)
  (latexEnv := "proposition")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Consequences/Variant38e940bec270581aa23b550f24173226c865cc9f8befdaac159a8c5acd510558.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Consequences/Variant38e940bec270581aa23b550f24173226c865cc9f8befdaac159a8c5acd510558.lean#L1555).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c16c416971c366503f7f5ff829e7c163fa4c9df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

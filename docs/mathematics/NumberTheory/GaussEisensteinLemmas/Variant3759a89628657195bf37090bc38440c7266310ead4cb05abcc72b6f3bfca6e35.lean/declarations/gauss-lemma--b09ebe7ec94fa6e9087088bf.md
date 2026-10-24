# gauss_lemma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:60bb4589-b214-90ea-9bb6-2d4150733387",
  "kind": "theorem",
  "lexical_name": "gauss_lemma",
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
  "slug": "gauss-lemma--b09ebe7ec94fa6e9087088bf",
  "source": {
    "blob": "de1c9e93a464938136b41363748e9ce5bcc87415",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 103,
    "path": "GRWTSK/NumberTheory/GaussEisensteinLemmas/Variant3759a89628657195bf37090bc38440c7266310ead4cb05abcc72b6f3bfca6e35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b09ebe7ec94fa6e9087088bfbd9e2f19f54605b9bf6a4340dbcec16c0b716877",
  "verification": {
    "reference": "docs/verification/NumberTheory/GaussEisensteinLemmas/Variant3759a89628657195bf37090bc38440c7266310ead4cb05abcc72b6f3bfca6e35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60bb4589-b214-90ea-9bb6-2d4150733387`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gauss_lemma {p : ℕ} [h : Fact p.Prime] {a : ℤ} (hp : p ≠ 2) (ha0 : (a : ZMod p) ≠ 0) :
    legendreSym p a = (-1) ^ #{x ∈ Ico 1 (p / 2).succ | p / 2 < (a * x.cast : ZMod p).val} := by
  replace hp : Odd p := h.out.odd_of_ne_two hp
  have : (legendreSym p a : ZMod p) =
      (((-1) ^ #{x ∈ Ico 1 (p / 2).succ | p / 2 < (a * x.cast : ZMod p).val} : ℤ) : ZMod p) := by
    rw [legendreSym.eq_pow, gauss_lemma_aux p ha0]
  cases legendreSym.eq_one_or_neg_one p ha0 <;>
  cases neg_one_pow_eq_or ℤ #{x ∈ Ico 1 (p / 2).succ | p / 2 < (a * x.cast : ZMod p).val} <;>
  simp_all [ne_neg_self hp one_ne_zero, (ne_neg_self hp one_ne_zero).symm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/GaussEisensteinLemmas/Variant3759a89628657195bf37090bc38440c7266310ead4cb05abcc72b6f3bfca6e35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/GaussEisensteinLemmas/Variant3759a89628657195bf37090bc38440c7266310ead4cb05abcc72b6f3bfca6e35.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de1c9e93a464938136b41363748e9ce5bcc87415` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

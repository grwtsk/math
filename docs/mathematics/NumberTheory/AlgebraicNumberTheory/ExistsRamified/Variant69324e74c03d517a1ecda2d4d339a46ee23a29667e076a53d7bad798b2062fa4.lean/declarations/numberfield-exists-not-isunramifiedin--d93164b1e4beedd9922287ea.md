# NumberField.exists_not_isUnramifiedIn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7bd5970b1d73db608d3d18928b78aa6c7caea49b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 31,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/69/69324e74c03d517a1ecda2d4d339a46ee23a29667e076a53d7bad798b2062fa4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fc01aa6f-7d7a-b74a-94ae-320ef2bf2a41",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bdbac041-654c-8d26-e9a4-9af8eec64c27",
  "kind": "lemma",
  "lexical_name": "NumberField.exists_not_isUnramifiedIn",
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
  "slug": "numberfield-exists-not-isunramifiedin--d93164b1e4beedd9922287ea",
  "source": {
    "blob": "7bd5970b1d73db608d3d18928b78aa6c7caea49b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 31,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/ExistsRamified/Variant69324e74c03d517a1ecda2d4d339a46ee23a29667e076a53d7bad798b2062fa4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d93164b1e4beedd9922287eaa361da3d429a74631e6bcb4e08815dede449ac05",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/ExistsRamified/Variant69324e74c03d517a1ecda2d4d339a46ee23a29667e076a53d7bad798b2062fa4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bdbac041-654c-8d26-e9a4-9af8eec64c27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma NumberField.exists_not_isUnramifiedIn (H : Module.finrank ℚ K ≠ 1) :
    ∃ p : ℕ, p.Prime ∧ ¬ Algebra.IsUnramifiedIn 𝒪 (Ideal.span {(p : ℤ)}) := by
  have : 0 < Module.finrank ℚ K := Module.finrank_pos
  have : 2 < |discr K| := abs_discr_gt_two (by lia)
  obtain ⟨p, hp1, hp2⟩ := (discr K).exists_prime_and_dvd (by linarith)
  use p.natAbs, p.prime_iff_natAbs_prime.mp hp1
  simpa [← not_dvd_discr_iff_isUnramifiedIn K 𝒪 hp1]

/-- If `K` is a number field with positive rank, then there exists some maximal ideal of `𝓞 K`
that is ramified over `ℤ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/ExistsRamified/Variant69324e74c03d517a1ecda2d4d339a46ee23a29667e076a53d7bad798b2062fa4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/ExistsRamified/Variant69324e74c03d517a1ecda2d4d339a46ee23a29667e076a53d7bad798b2062fa4.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7bd5970b1d73db608d3d18928b78aa6c7caea49b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

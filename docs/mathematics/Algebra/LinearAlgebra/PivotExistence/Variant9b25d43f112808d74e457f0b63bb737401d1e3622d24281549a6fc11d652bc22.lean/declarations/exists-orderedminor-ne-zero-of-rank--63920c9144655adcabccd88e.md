# exists_orderedMinor_ne_zero_of_rank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d721aebe0b39e3789be81e9d0cad24587a868151",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 119,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9b/9b25d43f112808d74e457f0b63bb737401d1e3622d24281549a6fc11d652bc22.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:98c0f93d-c99a-2168-2972-42d493ae6dc8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:29e03ab5-9139-08ca-5b5a-a8745a703172",
  "kind": "theorem",
  "lexical_name": "exists_orderedMinor_ne_zero_of_rank",
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
  "slug": "exists-orderedminor-ne-zero-of-rank--63920c9144655adcabccd88e",
  "source": {
    "blob": "d721aebe0b39e3789be81e9d0cad24587a868151",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 119,
    "path": "GRWTSK/Algebra/LinearAlgebra/PivotExistence/Variant9b25d43f112808d74e457f0b63bb737401d1e3622d24281549a6fc11d652bc22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63920c9144655adcabccd88e0475b37827d19c3a6a1d005f18745c7159220ad5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PivotExistence/Variant9b25d43f112808d74e457f0b63bb737401d1e3622d24281549a6fc11d652bc22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29e03ab5-9139-08ca-5b5a-a8745a703172`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_orderedMinor_ne_zero_of_rank (A : Matrix (Fin k) (Fin n) ℝ)
    (hA : A.rank = k) : ∃ I : Fin k ↪o Fin n, orderedMinor A I ≠ 0 := by
  obtain ⟨c, hc⟩ := exists_columnMinor_ne_zero_of_rank A hA
  obtain ⟨I, e, he⟩ := exists_ordered_selection c (injective_of_columnMinor_ne_zero A c hc)
  refine ⟨I, ?_⟩
  intro hz
  have hce : c = fun j => I (e j) := funext he
  apply hc
  rw [hce, columnMinor_comp_perm]
  change (Equiv.Perm.sign e : ℝ) * orderedMinor A I = 0
  rw [hz, mul_zero]

/-- Full row rank is equivalent to existence of a nonzero selected minor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PivotExistence/Variant9b25d43f112808d74e457f0b63bb737401d1e3622d24281549a6fc11d652bc22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PivotExistence/Variant9b25d43f112808d74e457f0b63bb737401d1e3622d24281549a6fc11d652bc22.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d721aebe0b39e3789be81e9d0cad24587a868151` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

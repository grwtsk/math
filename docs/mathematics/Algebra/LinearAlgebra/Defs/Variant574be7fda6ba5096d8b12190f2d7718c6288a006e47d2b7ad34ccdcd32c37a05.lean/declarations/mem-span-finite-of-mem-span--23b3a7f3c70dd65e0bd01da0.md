# mem_span_finite_of_mem_span

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "46784503b9910f8e9c9f022b4018bdb56a515b3a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 516,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/574be7fda6ba5096d8b12190f2d7718c6288a006e47d2b7ad34ccdcd32c37a05.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:93eb1b01-9b8b-6320-45a9-632eaa15e694",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:68d675b5-9596-9401-b004-8888bf2ad757",
  "kind": "theorem",
  "lexical_name": "mem_span_finite_of_mem_span",
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
  "slug": "mem-span-finite-of-mem-span--23b3a7f3c70dd65e0bd01da0",
  "source": {
    "blob": "46784503b9910f8e9c9f022b4018bdb56a515b3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 534,
    "line": 516,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant574be7fda6ba5096d8b12190f2d7718c6288a006e47d2b7ad34ccdcd32c37a05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23b3a7f3c70dd65e0bd01da0ee55966189e914efa7ee7a1a80e7827371633561",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variant574be7fda6ba5096d8b12190f2d7718c6288a006e47d2b7ad34ccdcd32c37a05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68d675b5-9596-9401-b004-8888bf2ad757`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 516–534.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_span_finite_of_mem_span {S : Set M} {x : M} (hx : x ∈ span R S) :
    ∃ T : Finset M, ↑T ⊆ S ∧ x ∈ span R (T : Set M) := by
  classical
  refine span_induction (fun x hx => ?_) ?_ ?_ ?_ hx
  · refine ⟨{x}, ?_, ?_⟩
    · rwa [Finset.coe_singleton, Set.singleton_subset_iff]
    · rw [Finset.coe_singleton]
      exact Submodule.mem_span_singleton_self x
  · use ∅
    simp
  · rintro x y - - ⟨X, hX, hxX⟩ ⟨Y, hY, hyY⟩
    refine ⟨X ∪ Y, ?_, ?_⟩
    · rw [Finset.coe_union]
      exact Set.union_subset hX hY
    rw [Finset.coe_union, span_union, mem_sup]
    exact ⟨x, hxX, y, hyY, rfl⟩
  · rintro a x - ⟨T, hT, h2⟩
    exact ⟨T, hT, smul_mem _ _ h2⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variant574be7fda6ba5096d8b12190f2d7718c6288a006e47d2b7ad34ccdcd32c37a05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variant574be7fda6ba5096d8b12190f2d7718c6288a006e47d2b7ad34ccdcd32c37a05.lean#L516).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46784503b9910f8e9c9f022b4018bdb56a515b3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

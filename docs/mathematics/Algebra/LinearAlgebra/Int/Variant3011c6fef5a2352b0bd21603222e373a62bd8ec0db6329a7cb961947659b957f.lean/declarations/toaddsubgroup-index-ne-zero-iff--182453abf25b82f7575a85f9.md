# toAddSubgroup_index_ne_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b4c58b6-1cd4-8984-1deb-53030c2231b0",
  "kind": "lemma",
  "lexical_name": "toAddSubgroup_index_ne_zero_iff",
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
  "slug": "toaddsubgroup-index-ne-zero-iff--182453abf25b82f7575a85f9",
  "source": {
    "blob": "e882ba034fc7dba42658522cc3ba0be85466f6fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 171,
    "path": "GRWTSK/Algebra/LinearAlgebra/Int/Variant3011c6fef5a2352b0bd21603222e373a62bd8ec0db6329a7cb961947659b957f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:182453abf25b82f7575a85f967c79e267c6b44c34f3095bfe2da2fcac787cf63",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Int/Variant3011c6fef5a2352b0bd21603222e373a62bd8ec0db6329a7cb961947659b957f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b4c58b6-1cd4-8984-1deb-53030c2231b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toAddSubgroup_index_ne_zero_iff {N : Submodule ℤ M} (snf : Basis.SmithNormalForm N ι n) :
    N.toAddSubgroup.index ≠ 0 ↔ n = Fintype.card ι := by
  rw [snf.toAddSubgroup_index_eq_ite]
  rcases snf with ⟨bM, bN, f, a, snf⟩
  simp only [ne_eq, ite_eq_right_iff, Classical.not_imp, and_iff_left_iff_imp]
  have ha : ∀ i, a i ≠ 0 := by
    intro i hi
    apply Basis.ne_zero bN i
    specialize snf i
    simpa [hi] using snf
  intro h
  simpa [Ideal.span_singleton_toAddSubgroup_eq_zmultiples, Int.index_zmultiples,
    Finset.prod_eq_zero_iff] using ha

end Module.Basis.SmithNormalForm

namespace Int

variable [Finite ι]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Int/Variant3011c6fef5a2352b0bd21603222e373a62bd8ec0db6329a7cb961947659b957f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Int/Variant3011c6fef5a2352b0bd21603222e373a62bd8ec0db6329a7cb961947659b957f.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e882ba034fc7dba42658522cc3ba0be85466f6fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

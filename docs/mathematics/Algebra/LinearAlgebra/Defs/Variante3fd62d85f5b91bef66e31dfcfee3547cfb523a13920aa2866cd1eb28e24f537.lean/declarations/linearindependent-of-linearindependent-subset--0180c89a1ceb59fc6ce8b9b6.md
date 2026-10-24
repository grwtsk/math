# LinearIndependent.of_linearIndependent_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:21a63033-6709-f9f2-ddf0-764eaa2967cb",
  "kind": "lemma",
  "lexical_name": "LinearIndependent.of_linearIndependent_subset",
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
  "slug": "linearindependent-of-linearindependent-subset--0180c89a1ceb59fc6ce8b9b6",
  "source": {
    "blob": "2ae3d68d4194746108d192c5bb94dadb0aa991dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 337,
    "line": 329,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variante3fd62d85f5b91bef66e31dfcfee3547cfb523a13920aa2866cd1eb28e24f537.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0180c89a1ceb59fc6ce8b9b6607c750552cfd9af27dd0787f82385a304f3bd98",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variante3fd62d85f5b91bef66e31dfcfee3547cfb523a13920aa2866cd1eb28e24f537.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21a63033-6709-f9f2-ddf0-764eaa2967cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–337.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LinearIndependent.of_linearIndependent_subset (s : Set ι') {v : ι → ι' → R}
    (hv : LinearIndependent R fun (i : ι) (j : s) ↦ v i j) :
    LinearIndependent R v :=
  hv.of_comp ⟨⟨s.domRestrict, fun _ _ ↦ rfl⟩, fun _ _ ↦ rfl⟩

/-- If `f` is a linear map injective on the span of the range of `v`, then the family `f ∘ v`
is linearly independent if and only if the family `v` is linearly independent.
See `LinearMap.linearIndependent_iff_of_disjoint` for the version with `Set.InjOn` replaced
by `Disjoint` when working over a ring. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variante3fd62d85f5b91bef66e31dfcfee3547cfb523a13920aa2866cd1eb28e24f537.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variante3fd62d85f5b91bef66e31dfcfee3547cfb523a13920aa2866cd1eb28e24f537.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ae3d68d4194746108d192c5bb94dadb0aa991dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

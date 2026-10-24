# map_of_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:113dfbcb-0266-24f6-c16f-811c7f38ebea",
  "kind": "theorem",
  "lexical_name": "map_of_image",
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
  "slug": "map-of-image--443dee760b52e9ba48568bc3",
  "source": {
    "blob": "66f233a06d3bee55297e90179f85e1272bd0a990",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 230,
    "path": "GRWTSK/Algebra/LinearAlgebra/Ideal/Variant2ad45e82e565b32f61141a40100697c03e80d507249c58c249d1c130eb261fda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:443dee760b52e9ba48568bc3a86d360ec8bea1ade06e06885d458f2eec277cd7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Ideal/Variant2ad45e82e565b32f61141a40100697c03e80d507249c58c249d1c130eb261fda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:113dfbcb-0266-24f6-c16f-811c7f38ebea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem map_of_image (h : f '' I = J) : I.map f = J := by
  apply le_antisymm
  · rw [map, LieSubmodule.lieSpan_le, Submodule.map_coe]
    /- I'm uncertain how to best resolve this `erw`.
    ```
    have : (↑(toLieSubalgebra R L I).toSubmodule : Set L) = I := rfl
    rw [this]
    simp [h]
    ```
    works, but still feels awkward. There are missing `simp` lemmas here.`
    -/
    erw [h]
  · rw [← SetLike.coe_subset_coe, ← h]; exact LieSubmodule.subset_lieSpan

/-- Note that this is not a special case of `LieSubmodule.subsingleton_of_bot`. Indeed, given
`I : LieIdeal R L`, in general the two lattices `LieIdeal R I` and `LieSubmodule R L I` are
different (though the latter does naturally inject into the former).

In other words, in general, ideals of `I`, regarded as a Lie algebra in its own right, are not the
same as ideals of `L` contained in `I`. -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Ideal/Variant2ad45e82e565b32f61141a40100697c03e80d507249c58c249d1c130eb261fda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Ideal/Variant2ad45e82e565b32f61141a40100697c03e80d507249c58c249d1c130eb261fda.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66f233a06d3bee55297e90179f85e1272bd0a990` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

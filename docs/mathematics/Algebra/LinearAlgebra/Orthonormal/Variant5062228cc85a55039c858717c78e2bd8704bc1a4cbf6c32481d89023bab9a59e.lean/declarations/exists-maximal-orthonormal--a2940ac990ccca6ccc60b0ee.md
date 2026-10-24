# exists_maximal_orthonormal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:28847ec0-9a29-8b23-b0df-488e7c96b271",
  "kind": "theorem",
  "lexical_name": "exists_maximal_orthonormal",
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
  "slug": "exists-maximal-orthonormal--a2940ac990ccca6ccc60b0ee",
  "source": {
    "blob": "fbb9476a43faedb956189b02cdbc2eae7ccd7201",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 259,
    "path": "GRWTSK/Algebra/LinearAlgebra/Orthonormal/Variant5062228cc85a55039c858717c78e2bd8704bc1a4cbf6c32481d89023bab9a59e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2940ac990ccca6ccc60b0ee84cdcdd71dc4916a37a7aa336a98bd1f0370b712",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Orthonormal/Variant5062228cc85a55039c858717c78e2bd8704bc1a4cbf6c32481d89023bab9a59e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28847ec0-9a29-8b23-b0df-488e7c96b271`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_maximal_orthonormal {s : Set E} (hs : Orthonormal 𝕜 (Subtype.val : s → E)) :
    ∃ w ⊇ s, Orthonormal 𝕜 (Subtype.val : w → E) ∧
      ∀ u ⊇ w, Orthonormal 𝕜 (Subtype.val : u → E) → u = w := by
  have := zorn_subset_nonempty { b | Orthonormal 𝕜 (Subtype.val : b → E) } ?_ _ hs
  · obtain ⟨b, hb⟩ := this
    exact ⟨b, hb.1, hb.2.1, fun u hus hu => hb.2.eq_of_ge hu hus⟩
  · refine fun c hc cc _c0 => ⟨⋃₀ c, ?_, ?_⟩
    · exact orthonormal_sUnion_of_directed cc.directedOn fun x xc => hc xc
    · exact fun _ => Set.subset_sUnion_of_mem

open Module

/-- A family of orthonormal vectors with the correct cardinality forms a basis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Orthonormal/Variant5062228cc85a55039c858717c78e2bd8704bc1a4cbf6c32481d89023bab9a59e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Orthonormal/Variant5062228cc85a55039c858717c78e2bd8704bc1a4cbf6c32481d89023bab9a59e.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbb9476a43faedb956189b02cdbc2eae7ccd7201` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

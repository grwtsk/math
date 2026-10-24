# norm_normedMk_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "75d5508fbadcfd344e5305ead78ea7ea8cc4a990",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 118,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/27/277875b66345ea81da4c99d6c3a8d7619b403f15fb59a75cb573744299743821.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:95db0599-8084-e51e-2163-abe4eb532a24",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:abd97e9f-8a8b-6f4d-117f-faec6c23ffc6",
  "kind": "theorem",
  "lexical_name": "norm_normedMk_eq_one",
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
  "slug": "norm-normedmk-eq-one--751cf9a1ae41dc19904d1ee5",
  "source": {
    "blob": "75d5508fbadcfd344e5305ead78ea7ea8cc4a990",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 118,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeparationQuotient/Variant277875b66345ea81da4c99d6c3a8d7619b403f15fb59a75cb573744299743821.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:751cf9a1ae41dc19904d1ee52fa4af7b77fac45bd669931143d9490f41d05c35",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeparationQuotient/Variant277875b66345ea81da4c99d6c3a8d7619b403f15fb59a75cb573744299743821.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:abd97e9f-8a8b-6f4d-117f-faec6c23ffc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_normedMk_eq_one (h : ∃ x : M, ‖x‖ ≠ 0) :
    ‖normedMk (M := M)‖ = 1 := by
  apply NormedAddGroupHom.opNorm_eq_of_bounds _ zero_le_one
  · simpa only [normedMk_apply, one_mul] using fun _ ↦ le_rfl
  · intro N _ hle
    obtain ⟨x, _⟩ := h
    exact one_le_of_le_mul_right₀ (by positivity) (hle x)

/-- The projection is `0` if and only if all the elements have norm `0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeparationQuotient/Variant277875b66345ea81da4c99d6c3a8d7619b403f15fb59a75cb573744299743821.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeparationQuotient/Variant277875b66345ea81da4c99d6c3a8d7619b403f15fb59a75cb573744299743821.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75d5508fbadcfd344e5305ead78ea7ea8cc4a990` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

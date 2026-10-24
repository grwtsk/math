# separated_def

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d2144f3c-96b0-ad48-7a09-667856436f03",
  "kind": "theorem",
  "lexical_name": "separated_def",
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
  "slug": "separated-def--b7eb33eaee921502d990d553",
  "source": {
    "blob": "9ea6eaf03cfed2bdd437e882d412373fb6098323",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 141,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7eb33eaee921502d990d553057efa0ac25dc72a3fcbc3e30af3215bae325fd1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2144f3c-96b0-ad48-7a09-667856436f03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem separated_def {α : Type u} [UniformSpace α] :
    SeparatedSpace α ↔ ∀ x y, (∀ r ∈ 𝓤 α, (x, y) ∈ r) → x = y := by
  simp only [separatedSpace_iff, Set.ext_iff, Prod.forall, mem_idRel, separationRel, mem_sInter]
  exact forall₂_congr fun _ _ => ⟨Iff.mp, fun h => ⟨h, fun H U hU => H ▸ refl_mem_uniformity hU⟩⟩
#align separated_def separated_def

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ea6eaf03cfed2bdd437e882d412373fb6098323` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# abs_density_star_sub_density_le_eps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ecb4a5e1-f354-0bf6-28e8-3bd9c1271e48",
  "kind": "theorem",
  "lexical_name": "abs_density_star_sub_density_le_eps",
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
  "slug": "abs-density-star-sub-density-le-eps--243d6e8ec732372b98d8bb6f",
  "source": {
    "blob": "6790588d16c212f809dcd20bfa350c3ce7220c36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 380,
    "line": 369,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant4fa4ad01ea6b0a0270fc3b25c4d5f8b9f514fdd2105007bf6874b6a2823d253a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:243d6e8ec732372b98d8bb6f52d86a56f3f7b5153197cf4545307b0072c646f4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant4fa4ad01ea6b0a0270fc3b25c4d5f8b9f514fdd2105007bf6874b6a2823d253a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ecb4a5e1-f354-0bf6-28e8-3bd9c1271e48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 369–380.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem abs_density_star_sub_density_le_eps (hPε : ↑100 ≤ ↑4 ^ #P.parts * ε ^ 5)
    (hε₁ : ε ≤ 1) {hU : U ∈ P.parts} {hV : V ∈ P.parts} (hUV' : U ≠ V) (hUV : ¬G.IsUniform ε U V) :
    |(G.edgeDensity ((star hP G ε hU V).biUnion id) ((star hP G ε hV U).biUnion id) : ℝ) -
      G.edgeDensity (G.nonuniformWitness ε U V) (G.nonuniformWitness ε V U)| ≤ ε / 5 := by
  convert abs_edgeDensity_sub_edgeDensity_le_two_mul G.Adj
    (biUnion_star_subset_nonuniformWitness hP G ε hU V)
    (biUnion_star_subset_nonuniformWitness hP G ε hV U) (by sz_positivity)
    (one_sub_eps_mul_card_nonuniformWitness_le_card_star hV hUV' hUV hPε hε₁)
    (one_sub_eps_mul_card_nonuniformWitness_le_card_star hU hUV'.symm (fun hVU => hUV hVU.symm)
      hPε hε₁) using 1
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant4fa4ad01ea6b0a0270fc3b25c4d5f8b9f514fdd2105007bf6874b6a2823d253a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant4fa4ad01ea6b0a0270fc3b25c4d5f8b9f514fdd2105007bf6874b6a2823d253a.lean#L369).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6790588d16c212f809dcd20bfa350c3ce7220c36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

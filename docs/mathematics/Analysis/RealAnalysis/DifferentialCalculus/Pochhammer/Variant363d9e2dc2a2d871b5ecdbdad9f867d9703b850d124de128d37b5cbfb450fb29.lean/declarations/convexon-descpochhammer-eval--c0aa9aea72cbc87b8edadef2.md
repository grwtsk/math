# convexOn_descPochhammer_eval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "af9738747a343e3e08735bf0cf94d35b319ef86b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/36/363d9e2dc2a2d871b5ecdbdad9f867d9703b850d124de128d37b5cbfb450fb29.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6d7b22bd-4e14-96c4-5a08-31bbd3f79ff3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f83c94a5-078c-03d5-2c2c-cc6d55ac2694",
  "kind": "theorem",
  "lexical_name": "convexOn_descPochhammer_eval",
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
  "slug": "convexon-descpochhammer-eval--c0aa9aea72cbc87b8edadef2",
  "source": {
    "blob": "af9738747a343e3e08735bf0cf94d35b319ef86b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 69,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant363d9e2dc2a2d871b5ecdbdad9f867d9703b850d124de128d37b5cbfb450fb29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0aa9aea72cbc87b8edadef232a651afa0a3599e08b4c8f86a7765d3be1a1ea5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant363d9e2dc2a2d871b5ecdbdad9f867d9703b850d124de128d37b5cbfb450fb29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f83c94a5-078c-03d5-2c2c-cc6d55ac2694`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem convexOn_descPochhammer_eval (n : ℕ) :
    ConvexOn ℝ (Set.Ici (n - 1 : ℝ)) (descPochhammer ℝ n).eval := by
  rcases n.eq_zero_or_pos with h_eq | _
  · simp [h_eq, convexOn_const, convex_Ici]
  · apply MonotoneOn.convexOn_of_deriv (convex_Ici (n - 1 : ℝ))
      continuous_descPochhammer_eval.continuousOn
      differentiable_descPochhammer_eval.differentiableOn
    rw [interior_Ici]
    exact monotoneOn_deriv_descPochhammer_eval n

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant363d9e2dc2a2d871b5ecdbdad9f867d9703b850d124de128d37b5cbfb450fb29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant363d9e2dc2a2d871b5ecdbdad9f867d9703b850d124de128d37b5cbfb450fb29.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af9738747a343e3e08735bf0cf94d35b319ef86b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

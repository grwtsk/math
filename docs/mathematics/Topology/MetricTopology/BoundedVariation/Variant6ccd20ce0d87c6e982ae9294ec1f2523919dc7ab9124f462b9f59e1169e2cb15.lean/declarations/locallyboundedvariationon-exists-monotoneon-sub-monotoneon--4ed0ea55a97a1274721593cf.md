# LocallyBoundedVariationOn.exists_monotoneOn_sub_monotoneOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4d28797699551140f9f7b377513cb20df5c6f1bb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 721,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6ccd20ce0d87c6e982ae9294ec1f2523919dc7ab9124f462b9f59e1169e2cb15.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a6b3f175-270a-aecf-00bd-17b25e5e3c7c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:da0c252c-16bd-4acd-456f-4394132e6dce",
  "kind": "theorem",
  "lexical_name": "LocallyBoundedVariationOn.exists_monotoneOn_sub_monotoneOn",
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
  "slug": "locallyboundedvariationon-exists-monotoneon-sub-monotoneon--4ed0ea55a97a1274721593cf",
  "source": {
    "blob": "4d28797699551140f9f7b377513cb20df5c6f1bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 735,
    "line": 721,
    "path": "GRWTSK/Topology/MetricTopology/BoundedVariation/Variant6ccd20ce0d87c6e982ae9294ec1f2523919dc7ab9124f462b9f59e1169e2cb15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ed0ea55a97a1274721593cf75058215bcf6fcbd5d12ecade7fabef99b8f73ef",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/BoundedVariation/Variant6ccd20ce0d87c6e982ae9294ec1f2523919dc7ab9124f462b9f59e1169e2cb15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da0c252c-16bd-4acd-456f-4394132e6dce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 721–735.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LocallyBoundedVariationOn.exists_monotoneOn_sub_monotoneOn {f : α → ℝ} {s : Set α}
    (h : LocallyBoundedVariationOn f s) :
    ∃ p q : α → ℝ, MonotoneOn p s ∧ MonotoneOn q s ∧ f = p - q := by
  rcases eq_empty_or_nonempty s with (rfl | ⟨c, cs⟩)
  · exact ⟨f, 0, subsingleton_empty.monotoneOn _, subsingleton_empty.monotoneOn _,
      (sub_zero f).symm⟩
  · exact ⟨_, _, variationOnFromTo.monotoneOn h cs, variationOnFromTo.sub_self_monotoneOn h cs,
      (sub_sub_cancel _ _).symm⟩

/-! ## Lipschitz functions and bounded variation -/

section LipschitzOnWith

variable {F : Type*} [PseudoEMetricSpace F]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/BoundedVariation/Variant6ccd20ce0d87c6e982ae9294ec1f2523919dc7ab9124f462b9f59e1169e2cb15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/BoundedVariation/Variant6ccd20ce0d87c6e982ae9294ec1f2523919dc7ab9124f462b9f59e1169e2cb15.lean#L721).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d28797699551140f9f7b377513cb20df5c6f1bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

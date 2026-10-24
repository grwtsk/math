# bound_of_shell_of_norm_map_coord_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b21619ae8a5a046aa4cc639ee8f498b486e57114",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 88,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2f/2f7895800774c898bd00e4ce38be6a03387b3d91722f695b9633c10f71d23987.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7242ced6-f9b0-cda4-464d-2766cd496016",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e52bce8b-d1c1-72cf-e0e7-079ca17b3b84",
  "kind": "theorem",
  "lexical_name": "bound_of_shell_of_norm_map_coord_zero",
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
  "slug": "bound-of-shell-of-norm-map-coord-zero--f590da0012226ae27d3e6780",
  "source": {
    "blob": "b21619ae8a5a046aa4cc639ee8f498b486e57114",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 88,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant2f7895800774c898bd00e4ce38be6a03387b3d91722f695b9633c10f71d23987.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f590da0012226ae27d3e67800ce4464096f137ae8c5c7e1232e1cec710d88a09",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant2f7895800774c898bd00e4ce38be6a03387b3d91722f695b9633c10f71d23987.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e52bce8b-d1c1-72cf-e0e7-079ca17b3b84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bound_of_shell_of_norm_map_coord_zero (f : E [⋀^ι]→ₗ[𝕜] F)
    (hf₀ : ∀ {m i}, ‖m i‖ = 0 → ‖f m‖ = 0)
    {ε : ι → ℝ} {C : ℝ} (hε : ∀ i, 0 < ε i) {c : ι → 𝕜} (hc : ∀ i, 1 < ‖c i‖)
    (hf : ∀ m : ι → E, (∀ i, ε i / ‖c i‖ ≤ ‖m i‖) → (∀ i, ‖m i‖ < ε i) → ‖f m‖ ≤ C * ∏ i, ‖m i‖)
    (m : ι → E) : ‖f m‖ ≤ C * ∏ i, ‖m i‖ :=
  f.1.bound_of_shell_of_norm_map_coord_zero hf₀ hε hc hf m

/-- If a continuous alternating map in finitely many variables on normed spaces
satisfies the inequality `‖f m‖ ≤ C * ∏ i, ‖m i‖`
on a shell `ε / ‖c‖ < ‖m i‖ < ε` for some positive number `ε` and an elements `c : 𝕜`, `1 < ‖c‖`,
then it satisfies this inequality for all `m`.

If the domain is a Hausdorff space, then the continuity assumption is reduntant,
see `bound_of_shell` below. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant2f7895800774c898bd00e4ce38be6a03387b3d91722f695b9633c10f71d23987.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant2f7895800774c898bd00e4ce38be6a03387b3d91722f695b9633c10f71d23987.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b21619ae8a5a046aa4cc639ee8f498b486e57114` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

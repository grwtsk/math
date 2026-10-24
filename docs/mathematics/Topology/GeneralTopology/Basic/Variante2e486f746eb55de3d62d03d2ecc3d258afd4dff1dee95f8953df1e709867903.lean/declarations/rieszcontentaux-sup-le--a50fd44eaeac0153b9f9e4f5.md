# rieszContentAux_sup_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bc9701e2-57a2-7337-7369-f62f0f6a3042",
  "kind": "theorem",
  "lexical_name": "rieszContentAux_sup_le",
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
  "slug": "rieszcontentaux-sup-le--a50fd44eaeac0153b9f9e4f5",
  "source": {
    "blob": "8e6b2056157bf93f9f2185db974c666d91fc8063",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 138,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variante2e486f746eb55de3d62d03d2ecc3d258afd4dff1dee95f8953df1e709867903.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a50fd44eaeac0153b9f9e4f57b8df802def22d1eab77d5b83dd7e2d45ff3fdc3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variante2e486f746eb55de3d62d03d2ecc3d258afd4dff1dee95f8953df1e709867903.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc9701e2-57a2-7337-7369-f62f0f6a3042`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rieszContentAux_sup_le (K1 K2 : Compacts X) :
    rieszContentAux Λ (K1 ⊔ K2) ≤ rieszContentAux Λ K1 + rieszContentAux Λ K2 := by
  apply _root_.le_of_forall_pos_le_add
  intro ε εpos
  --get test functions s.t. `λ(Ki) ≤ Λfi ≤ λ(Ki) + ε/2, i=1,2`
  obtain ⟨f1, f_test_function_K1⟩ := exists_lt_rieszContentAux_add_pos Λ K1 (half_pos εpos)
  obtain ⟨f2, f_test_function_K2⟩ := exists_lt_rieszContentAux_add_pos Λ K2 (half_pos εpos)
  --let `f := f1 + f2` test function for the content of `K`
  have f_test_function_union : ∀ x ∈ K1 ⊔ K2, (1 : ℝ≥0) ≤ (f1 + f2) x := by
    rintro x (x_in_K1 | x_in_K2)
    · exact le_add_right (f_test_function_K1.left x x_in_K1)
    · exact le_add_left (f_test_function_K2.left x x_in_K2)
  --use that `Λf` is an upper bound for `λ(K1⊔K2)`
  apply (rieszContentAux_le Λ f_test_function_union).trans (le_of_lt _)
  rw [map_add]
  --use that `Λfi` are lower bounds for `λ(Ki) + ε/2`
  apply lt_of_lt_of_le (_root_.add_lt_add f_test_function_K1.right f_test_function_K2.right)
    (le_of_eq _)
  rw [add_assoc, add_comm (ε / 2), add_assoc, add_halves ε, add_assoc]

end RieszSubadditive


section PartitionOfUnity

variable [T2Space X] [LocallyCompactSpace X]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variante2e486f746eb55de3d62d03d2ecc3d258afd4dff1dee95f8953df1e709867903.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variante2e486f746eb55de3d62d03d2ecc3d258afd4dff1dee95f8953df1e709867903.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e6b2056157bf93f9f2185db974c666d91fc8063` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

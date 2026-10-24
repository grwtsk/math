# continuous_Icc_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4edc9c24b99d4d90cbc3b410248fc2a2c8d38f0f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3b/3b7e7c4200cbb10a35444d56bb6217ba17af1c1b5e565ecdb9fe87e683589565.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4fe45779-987b-262f-76ce-ef958e0aa15c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:04ce82df-9948-54fb-964e-4e2ad9f66aff",
  "kind": "theorem",
  "lexical_name": "continuous_Icc_bounds",
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
  "slug": "continuous-icc-bounds--5258c1eb64397c8832a699d2",
  "source": {
    "blob": "4edc9c24b99d4d90cbc3b410248fc2a2c8d38f0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 73,
    "path": "GRWTSK/Topology/GeneralTopology/Interval/Variant3b7e7c4200cbb10a35444d56bb6217ba17af1c1b5e565ecdb9fe87e683589565.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5258c1eb64397c8832a699d23764ac1b022b7477ab29275fea284a4c30d820e9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Interval/Variant3b7e7c4200cbb10a35444d56bb6217ba17af1c1b5e565ecdb9fe87e683589565.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04ce82df-9948-54fb-964e-4e2ad9f66aff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_Icc_bounds {f : ℝ → ℝ} {a b : ℝ} (hab : a ≤ b)
    (hf : Continuous f) :
    ∃ (lo hi : ℝ), (∀ x ∈ Set.Icc a b, lo ≤ f x ∧ f x ≤ hi) ∧
      (∃ x ∈ Set.Icc a b, f x = lo) ∧ (∃ x ∈ Set.Icc a b, f x = hi) := by
  have hne : (Set.Icc a b).Nonempty := Set.nonempty_Icc.mpr hab
  have hcpt : IsCompact (Set.Icc a b) := isCompact_Icc
  obtain ⟨xmin, hxmin_mem, hxmin⟩ := hcpt.exists_isMinOn hne hf.continuousOn
  obtain ⟨xmax, hxmax_mem, hxmax⟩ := hcpt.exists_isMaxOn hne hf.continuousOn
  exact ⟨f xmin, f xmax,
    fun x hx => ⟨hxmin hx, hxmax hx⟩,
    ⟨xmin, hxmin_mem, rfl⟩,
    ⟨xmax, hxmax_mem, rfl⟩⟩

end LeanCert.Core
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Interval/Variant3b7e7c4200cbb10a35444d56bb6217ba17af1c1b5e565ecdb9fe87e683589565.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Interval/Variant3b7e7c4200cbb10a35444d56bb6217ba17af1c1b5e565ecdb9fe87e683589565.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4edc9c24b99d4d90cbc3b410248fc2a2c8d38f0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

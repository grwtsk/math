# sqrt_isLittleO

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0c70e9d4de7e8d454df1a5840334ef3e0dcbf777",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 729,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/074796f7737b6d08e00f07240e4436349e99a9e033cfc4128b96327bdcff8625.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:54229d17-d615-1d11-a59d-aa301093d982",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b38969d8-cc6a-450f-08d7-f8b1799eb3ae",
  "kind": "theorem",
  "lexical_name": "sqrt_isLittleO",
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
  "slug": "sqrt-islittleo--54476ab4d0365f7db962d0ef",
  "source": {
    "blob": "0c70e9d4de7e8d454df1a5840334ef3e0dcbf777",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 739,
    "line": 729,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant074796f7737b6d08e00f07240e4436349e99a9e033cfc4128b96327bdcff8625.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54476ab4d0365f7db962d0ef7fec2990e9aee6dae1a42337fb5c75e671a89acf",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant074796f7737b6d08e00f07240e4436349e99a9e033cfc4128b96327bdcff8625.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b38969d8-cc6a-450f-08d7-f8b1799eb3ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 729–739.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem sqrt_isLittleO :
    Real.sqrt =o[atTop] (fun x ↦ x / log x ^ 2) := by
  apply isLittleO_mul_iff_isLittleO_div _ |>.mp
  · conv => arg 2; ext; rw [mul_comm]
    apply isLittleO_mul_iff_isLittleO_div _ |>.mpr
    · simp_rw [div_sqrt, sqrt_eq_rpow, ← rpow_two]
      apply isLittleO_log_rpow_rpow_atTop _ (by norm_num)
    filter_upwards [eventually_gt_atTop 0] with x hx using sqrt_ne_zero'.mpr hx
  filter_upwards [eventually_gt_atTop 1] with x _
  apply pow_ne_zero _ <| log_ne_zero.mpr ⟨_, _, _⟩ <;> linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant074796f7737b6d08e00f07240e4436349e99a9e033cfc4128b96327bdcff8625.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant074796f7737b6d08e00f07240e4436349e99a9e033cfc4128b96327bdcff8625.lean#L729).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c70e9d4de7e8d454df1a5840334ef3e0dcbf777` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

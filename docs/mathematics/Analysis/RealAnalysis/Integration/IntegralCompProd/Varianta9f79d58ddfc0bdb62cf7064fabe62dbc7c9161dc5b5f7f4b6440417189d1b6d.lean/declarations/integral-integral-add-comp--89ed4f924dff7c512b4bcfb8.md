# integral_integral_add_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dbd26301909fd60eea6072b18e36ade6ebe72405",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 382,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a9/a9f79d58ddfc0bdb62cf7064fabe62dbc7c9161dc5b5f7f4b6440417189d1b6d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:53207c1e-a58e-3adb-a726-c24e85a29a9d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9de0981d-3068-f36f-ed02-92e9c3d87f7d",
  "kind": "theorem",
  "lexical_name": "integral_integral_add_comp",
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
  "slug": "integral-integral-add-comp--89ed4f924dff7c512b4bcfb8",
  "source": {
    "blob": "dbd26301909fd60eea6072b18e36ade6ebe72405",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 386,
    "line": 382,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegralCompProd/Varianta9f79d58ddfc0bdb62cf7064fabe62dbc7c9161dc5b5f7f4b6440417189d1b6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89ed4f924dff7c512b4bcfb8f9ea6628d0a2fee5d6f5fbe05f28033450a4f3a1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntegralCompProd/Varianta9f79d58ddfc0bdb62cf7064fabe62dbc7c9161dc5b5f7f4b6440417189d1b6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9de0981d-3068-f36f-ed02-92e9c3d87f7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 382–386.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_integral_add_comp ⦃f g : γ → E⦄ (hf : Integrable f ((η ∘ₖ κ) a))
    (hg : Integrable g ((η ∘ₖ κ) a)) :
    ∫ x, ∫ y, f y + g y ∂η x ∂κ a = ∫ x, ∫ y, f y ∂η x ∂κ a + ∫ x, ∫ y, g y ∂η x ∂κ a :=
  (integral_fn_integral_add_comp id hf hg).trans <| integral_add hf.integral_comp hg.integral_comp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntegralCompProd/Varianta9f79d58ddfc0bdb62cf7064fabe62dbc7c9161dc5b5f7f4b6440417189d1b6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntegralCompProd/Varianta9f79d58ddfc0bdb62cf7064fabe62dbc7c9161dc5b5f7f4b6440417189d1b6d.lean#L382).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbd26301909fd60eea6072b18e36ade6ebe72405` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

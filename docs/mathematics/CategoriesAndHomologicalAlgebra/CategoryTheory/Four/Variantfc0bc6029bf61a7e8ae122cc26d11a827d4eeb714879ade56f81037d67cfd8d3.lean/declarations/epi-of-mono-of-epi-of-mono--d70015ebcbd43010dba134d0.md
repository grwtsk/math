# epi_of_mono_of_epi_of_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fc443c76cb081a4b4a11a8690dc0d068608fe411",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 189,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fc/fc0bc6029bf61a7e8ae122cc26d11a827d4eeb714879ade56f81037d67cfd8d3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3bd2ff73-abe8-bd1a-fb63-eda70f2e478c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ac1aa0e0-92f1-d453-840d-2572fdde209d",
  "kind": "theorem",
  "lexical_name": "epi_of_mono_of_epi_of_mono",
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
  "slug": "epi-of-mono-of-epi-of-mono--d70015ebcbd43010dba134d0",
  "source": {
    "blob": "fc443c76cb081a4b4a11a8690dc0d068608fe411",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 189,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variantfc0bc6029bf61a7e8ae122cc26d11a827d4eeb714879ade56f81037d67cfd8d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d70015ebcbd43010dba134d0835d0bbf067ad8d308c95fb628abcfd11050cac3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variantfc0bc6029bf61a7e8ae122cc26d11a827d4eeb714879ade56f81037d67cfd8d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac1aa0e0-92f1-d453-840d-2572fdde209d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem epi_of_mono_of_epi_of_mono (hR₁ : R₁.Exact) (hR₂ : R₂.Exact)
    (hR₂' : Mono (R₂.map' 0 1)) (h₀ : Epi (app' φ 1)) (h₁ : Mono (app' φ 2)) :
    Epi (app' φ 0) :=
  epi_of_mono_of_epi_of_mono' φ hR₁
    (by simpa only [map'_comp R₂ 0 1 2] using hR₂.toIsComplex.zero 0) hR₂' h₀ h₁

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variantfc0bc6029bf61a7e8ae122cc26d11a827d4eeb714879ade56f81037d67cfd8d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variantfc0bc6029bf61a7e8ae122cc26d11a827d4eeb714879ade56f81037d67cfd8d3.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc443c76cb081a4b4a11a8690dc0d068608fe411` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

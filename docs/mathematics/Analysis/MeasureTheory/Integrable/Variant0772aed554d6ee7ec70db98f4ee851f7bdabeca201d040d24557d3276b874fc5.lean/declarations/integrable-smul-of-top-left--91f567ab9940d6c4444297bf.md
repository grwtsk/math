# Integrable.smul_of_top_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a1a8ba1c3a319d72ca4abd600932379e812abb7e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 977,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/0772aed554d6ee7ec70db98f4ee851f7bdabeca201d040d24557d3276b874fc5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1480d1e5-286c-a4af-6bdb-ba575be33e57",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:42798328-5b37-c1f4-cc0f-0c20d162325d",
  "kind": "theorem",
  "lexical_name": "Integrable.smul_of_top_left",
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
  "slug": "integrable-smul-of-top-left--91f567ab9940d6c4444297bf",
  "source": {
    "blob": "a1a8ba1c3a319d72ca4abd600932379e812abb7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 982,
    "line": 977,
    "path": "GRWTSK/Analysis/MeasureTheory/Integrable/Variant0772aed554d6ee7ec70db98f4ee851f7bdabeca201d040d24557d3276b874fc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91f567ab9940d6c4444297bf5db04f0422bc2c8ede1c4a55b90d5e3b64417d15",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Integrable/Variant0772aed554d6ee7ec70db98f4ee851f7bdabeca201d040d24557d3276b874fc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42798328-5b37-c1f4-cc0f-0c20d162325d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 977–982.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Integrable.smul_of_top_left {f : α → β} {φ : α → 𝕜} (hφ : Integrable φ μ)
    (hf : MemLp f ∞ μ) : Integrable (φ • f) μ := by
  rw [← memLp_one_iff_integrable] at hφ ⊢
  exact MemLp.smul hf hφ

@[fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Integrable/Variant0772aed554d6ee7ec70db98f4ee851f7bdabeca201d040d24557d3276b874fc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Integrable/Variant0772aed554d6ee7ec70db98f4ee851f7bdabeca201d040d24557d3276b874fc5.lean#L977).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1a8ba1c3a319d72ca4abd600932379e812abb7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# energy_derivative_nonpositive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4b96d5e0842c0f6eb5cd5aadd9606dd00c96fa4f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 72,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/02aa75fec9294131ee1927ef9f68a3ef6c75c663db226934884cd880b9912e08.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7549f710-3ae8-7c3f-5a33-2719466af742",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3118a669-8b44-4ad8-0c2c-d597709d2cef",
  "kind": "theorem",
  "lexical_name": "energy_derivative_nonpositive",
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
  "slug": "energy-derivative-nonpositive--1f46631481aa3c78ca9e6725",
  "source": {
    "blob": "4b96d5e0842c0f6eb5cd5aadd9606dd00c96fa4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 72,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Lyapunov/Variant02aa75fec9294131ee1927ef9f68a3ef6c75c663db226934884cd880b9912e08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f46631481aa3c78ca9e67254361db3c6106cbbe97e00c58c077a1ef9908eeb4",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Lyapunov/Variant02aa75fec9294131ee1927ef9f68a3ef6c75c663db226934884cd880b9912e08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3118a669-8b44-4ad8-0c2c-d597709d2cef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem energy_derivative_nonpositive :
    ∀ v ∈ Set.Icc (-1:ℝ) 1, -2/5 * v * v ≤ (0 : ℝ) := by
  intro v ⟨hlo, hhi⟩
  by_cases! h : v ≥ 0
  · have := energy_derivative_on_positive v ⟨h, hhi⟩
    linarith
  · have := energy_derivative_on_negative v ⟨hlo, le_of_lt h⟩
    linarith

-- The derivative is strictly negative when v ≠ 0
-- On [0.1, 1], we have v² ≥ 0.01, so -(2/5)v² ≤ -0.004 = -1/250

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Lyapunov/Variant02aa75fec9294131ee1927ef9f68a3ef6c75c663db226934884cd880b9912e08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Lyapunov/Variant02aa75fec9294131ee1927ef9f68a3ef6c75c663db226934884cd880b9912e08.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b96d5e0842c0f6eb5cd5aadd9606dd00c96fa4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

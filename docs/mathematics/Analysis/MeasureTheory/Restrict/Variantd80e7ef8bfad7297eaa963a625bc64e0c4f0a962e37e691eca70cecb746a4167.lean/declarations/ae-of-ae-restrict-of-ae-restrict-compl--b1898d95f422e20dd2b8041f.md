# ae_of_ae_restrict_of_ae_restrict_compl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c4300bd82e6ff27f6c553405ab9da0e88765b0a8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 603,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d8/d80e7ef8bfad7297eaa963a625bc64e0c4f0a962e37e691eca70cecb746a4167.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6b68075c-4864-0892-f7bc-27765698acb3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9631af12-86e4-1b04-70b6-17683a772ac1",
  "kind": "theorem",
  "lexical_name": "ae_of_ae_restrict_of_ae_restrict_compl",
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
  "slug": "ae-of-ae-restrict-of-ae-restrict-compl--b1898d95f422e20dd2b8041f",
  "source": {
    "blob": "c4300bd82e6ff27f6c553405ab9da0e88765b0a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 612,
    "line": 603,
    "path": "GRWTSK/Analysis/MeasureTheory/Restrict/Variantd80e7ef8bfad7297eaa963a625bc64e0c4f0a962e37e691eca70cecb746a4167.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1898d95f422e20dd2b8041f90f7bf6ba4970a8aae11dd8898866ac08f3b4ce7",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Restrict/Variantd80e7ef8bfad7297eaa963a625bc64e0c4f0a962e37e691eca70cecb746a4167.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9631af12-86e4-1b04-70b6-17683a772ac1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 603–612.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ae_of_ae_restrict_of_ae_restrict_compl (t : Set α) {p : α → Prop}
    (ht : ∀ᵐ x ∂μ.restrict t, p x) (htc : ∀ᵐ x ∂μ.restrict tᶜ, p x) : ∀ᵐ x ∂μ, p x :=
  nonpos_iff_eq_zero.1 <|
    calc
      μ { x | ¬p x } ≤ μ ({ x | ¬p x } ∩ t) + μ ({ x | ¬p x } ∩ tᶜ) :=
        measure_le_inter_add_diff _ _ _
      _ ≤ μ.restrict t { x | ¬p x } + μ.restrict tᶜ { x | ¬p x } :=
        add_le_add (le_restrict_apply _ _) (le_restrict_apply _ _)
      _ = 0 := by rw [ae_iff.1 ht, ae_iff.1 htc, zero_add]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Restrict/Variantd80e7ef8bfad7297eaa963a625bc64e0c4f0a962e37e691eca70cecb746a4167.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Restrict/Variantd80e7ef8bfad7297eaa963a625bc64e0c4f0a962e37e691eca70cecb746a4167.lean#L603).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4300bd82e6ff27f6c553405ab9da0e88765b0a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

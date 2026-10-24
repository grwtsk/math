# finite_image_fst_and_snd_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:89e270c7-f688-2c8f-c59d-4ca8360624ff",
  "kind": "theorem",
  "lexical_name": "finite_image_fst_and_snd_iff",
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
  "slug": "finite-image-fst-and-snd-iff--d7b2bb5a984355962fd1e98d",
  "source": {
    "blob": "5f9a679b7365b5247a3e1f83cb911f992154a044",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 212,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prod/Variant3d347c7a3e686006ee747974b4b8216b9b6d651ca461dba6e36337f1fc972d9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7b2bb5a984355962fd1e98de879d250cf567bde918ef5062a7a6efd847b2d57",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prod/Variant3d347c7a3e686006ee747974b4b8216b9b6d651ca461dba6e36337f1fc972d9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89e270c7-f688-2c8f-c59d-4ca8360624ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_image_fst_and_snd_iff {s : Set (α × β)} :
    (Prod.fst '' s).Finite ∧ (Prod.snd '' s).Finite ↔ s.Finite :=
  ⟨fun h => (h.1.prod h.2).subset fun _ h => ⟨mem_image_of_mem _ h, mem_image_of_mem _ h⟩,
    fun h => ⟨h.image _, h.image _⟩⟩

/-! ### Infinite sets -/

variable {s t : Set α}

section Image2

variable {f : α → β → γ} {s : Set α} {t : Set β} {a : α} {b : β}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prod/Variant3d347c7a3e686006ee747974b4b8216b9b6d651ca461dba6e36337f1fc972d9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prod/Variant3d347c7a3e686006ee747974b4b8216b9b6d651ca461dba6e36337f1fc972d9f.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f9a679b7365b5247a3e1f83cb911f992154a044` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

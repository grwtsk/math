# Convex.lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce3d3a4d-3605-edb0-6d45-cbf15b5cf260",
  "kind": "theorem",
  "lexical_name": "Convex.lift",
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
  "slug": "convex-lift--7f8ea241b609d6f9f2b81770",
  "source": {
    "blob": "7bb9022ae02caeee5317cd384cf0ac4bad4f8b7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 329,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant133e8af7b9a8d0cc21d95c56c6bb7e45c6215e263d1675d22468701a14847522.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f8ea241b609d6f9f2b81770d123deea9e138e0a54723a25b5d8be6c0799e10e",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Basic/Variant133e8af7b9a8d0cc21d95c56c6bb7e45c6215e263d1675d22468701a14847522.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce3d3a4d-3605-edb0-6d45-cbf15b5cf260`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Convex.lift [SMulPosMono R 𝕜] {s : Set E} (hs : Convex 𝕜 s) : Convex R s := by
  intro x hx y hy a b ha hb hab
  suffices (a • (1 : 𝕜)) • x + (b • (1 : 𝕜)) • y ∈ s by simpa using this
  refine hs hx hy ?_ ?_ (by simpa [add_smul] using congr($(hab) • (1 : 𝕜)))
  all_goals exact zero_smul R (1 : 𝕜) ▸ smul_le_smul_of_nonneg_right ‹_› zero_le_one

end IsScalarTower

end AddCommMonoid

section LinearOrderedAddCommMonoid

variable [AddCommMonoid E] [LinearOrder E] [IsOrderedAddMonoid E]
  [PartialOrder β] [Module 𝕜 E] [PosSMulMono 𝕜 E]
  {s : Set E} {f : E → β}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Basic/Variant133e8af7b9a8d0cc21d95c56c6bb7e45c6215e263d1675d22468701a14847522.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant133e8af7b9a8d0cc21d95c56c6bb7e45c6215e263d1675d22468701a14847522.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7bb9022ae02caeee5317cd384cf0ac4bad4f8b7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

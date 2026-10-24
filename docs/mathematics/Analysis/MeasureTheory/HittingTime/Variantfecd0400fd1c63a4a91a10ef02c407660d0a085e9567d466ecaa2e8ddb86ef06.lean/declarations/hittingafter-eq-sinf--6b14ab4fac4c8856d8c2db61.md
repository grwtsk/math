# hittingAfter_eq_sInf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:18932c0a-ba71-deaf-c439-559159490581",
  "kind": "lemma",
  "lexical_name": "hittingAfter_eq_sInf",
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
  "slug": "hittingafter-eq-sinf--6b14ab4fac4c8856d8c2db61",
  "source": {
    "blob": "8334b2527a87d557eafd9a09959ca771a65c2952",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 498,
    "line": 486,
    "path": "GRWTSK/Analysis/MeasureTheory/HittingTime/Variantfecd0400fd1c63a4a91a10ef02c407660d0a085e9567d466ecaa2e8ddb86ef06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b14ab4fac4c8856d8c2db61651346243071a31f32aaa10c98055538d807744e",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/HittingTime/Variantfecd0400fd1c63a4a91a10ef02c407660d0a085e9567d466ecaa2e8ddb86ef06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18932c0a-ba71-deaf-c439-559159490581`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 486–498.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hittingAfter_eq_sInf [∀ ω, Decidable (∃ j, u j ω ∈ s)] (ω : Ω) :
    hittingAfter u s ⊥ ω
      = if ∃ j, u j ω ∈ s then ((sInf {i : ι | u i ω ∈ s} : ι) : WithTop ι)
        else (⊤ : WithTop ι) := by
  simp [hittingAfter]

end CompleteLattice

section ConditionallyCompleteLinearOrderBot

variable [ConditionallyCompleteLinearOrderBot ι] [WellFoundedLT ι]
variable {u : ι → Ω → β} {s : Set β}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/HittingTime/Variantfecd0400fd1c63a4a91a10ef02c407660d0a085e9567d466ecaa2e8ddb86ef06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/HittingTime/Variantfecd0400fd1c63a4a91a10ef02c407660d0a085e9567d466ecaa2e8ddb86ef06.lean#L486).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8334b2527a87d557eafd9a09959ca771a65c2952` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d196b04a549193f6a32216e5e6bca63d353ffb4f59351f7899ad0733ce79b94d",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--aa5744d5efa7baf173099cf3",
  "source": {
    "blob": "150f6d0025a7893ebf3874f679a8941b7e731e0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 100,
    "path": "GRWTSK/Analysis/MeasureTheory/Measurability/Variant1ac3e45476c06210729edc97787b91fb5cc4455e4520932d4c6a91a5bab74670.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aa5744d5efa7baf173099cf3ffe46326dc425f91b9a596b084d135532f8bc48c",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Measurability/Variant1ac3e45476c06210729edc97787b91fb5cc4455e4520932d4c6a91a5bab74670.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d196b04a549193f6a32216e5e6bca63d353ffb4f59351f7899ad0733ce79b94d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example [TopologicalSpace α] [BorelSpace α] [NormedAddCommGroup β] [BorelSpace β]
    [MeasurableAdd₂ β] [MeasurableSub₂ β] {s : Finset ℕ} {F : ℕ → α → β}
    (hF : ∀ i, Measurable (F i)) : AEMeasurable (∑ i ∈ s, (fun x => F (i+1) x - F i x)) μ := by
  measurability

open scoped RealInnerProductSpace

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Measurability/Variant1ac3e45476c06210729edc97787b91fb5cc4455e4520932d4c6a91a5bab74670.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Measurability/Variant1ac3e45476c06210729edc97787b91fb5cc4455e4520932d4c6a91a5bab74670.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `150f6d0025a7893ebf3874f679a8941b7e731e0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# IndepFun.process_congr_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7d9bb6fe-2115-afdb-a83c-142ddef149f6",
  "kind": "lemma",
  "lexical_name": "IndepFun.process_congr_right",
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
  "slug": "indepfun-process-congr-right--4e0547f8b39a93af48be0591",
  "source": {
    "blob": "2362a7c914b9f8a3015e4c5c2628628019deb82e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 78,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variant8ea490b808cf2d687d50a054943ecd8892d9d2541732cd5cc40f391530c45904.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e0547f8b39a93af48be0591c05189f3ca9936f5c65d771d894f09df37fd8fe8",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variant8ea490b808cf2d687d50a054943ecd8892d9d2541732cd5cc40f391530c45904.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d9bb6fe-2115-afdb-a83c-142ddef149f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IndepFun.process_congr_right {𝓧 : S → Type*} {𝓨 : Type*}
    [∀ i, MeasurableSpace (𝓧 i)] [MeasurableSpace 𝓨] {X X' : (i : S) → Ω → 𝓧 i}
    {Y : Ω → 𝓨} (h1 : IndepFun Y (fun ω i ↦ X i ω) κ P) (h2 : ∀ i, ∀ᵐ a ∂P, X i =ᵐ[κ a] X' i) :
    IndepFun Y (fun ω i ↦ X' i ω) κ P :=
  (h1.symm.process_congr_left h2).symm

/-- If `X` and `Y` are two independent processes and for all `i`, `X' i` is almost everywhere equal
to `X i`, and for all `j`, `Y' j` is almost everywhere equal to `Y j`,
then `X'` is independent from `Y'`. This implies that independence results about
measurable processes should generally also hold
for processes whose marginals are only a.e.-measurable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variant8ea490b808cf2d687d50a054943ecd8892d9d2541732cd5cc40f391530c45904.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variant8ea490b808cf2d687d50a054943ecd8892d9d2541732cd5cc40f391530c45904.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2362a7c914b9f8a3015e4c5c2628628019deb82e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

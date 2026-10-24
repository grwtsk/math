# hitting_le_iff_of_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8ab4b648-247e-4680-9089-d2576e0ebe22",
  "kind": "theorem",
  "lexical_name": "hitting_le_iff_of_lt",
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
  "slug": "hitting-le-iff-of-lt--52c71b826ef1660c86508efa",
  "source": {
    "blob": "7d66eb7ac3040847f34d1fa38b020a970c913fcb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 180,
    "path": "GRWTSK/Analysis/MeasureTheory/HittingTime/Variant1329ca4f5dbe0a5a00224cded7618a682b9f3ed6664014067915f6318a84f09b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52c71b826ef1660c86508efa8e16e5d19787dd6346b26489ef01746d146c71b7",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/HittingTime/Variant1329ca4f5dbe0a5a00224cded7618a682b9f3ed6664014067915f6318a84f09b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ab4b648-247e-4680-9089-d2576e0ebe22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hitting_le_iff_of_lt [IsWellOrder ι (· < ·)] {m : ι} (i : ι) (hi : i < m) :
    hitting u s n m ω ≤ i ↔ ∃ j ∈ Set.Icc n i, u j ω ∈ s := by
  by_cases h_exists : ∃ j ∈ Set.Icc n m, u j ω ∈ s
  · rw [hitting_le_iff_of_exists h_exists]
  · simp_rw [hitting, if_neg h_exists]
    push_neg at h_exists
    simp only [not_le.mpr hi, Set.mem_Icc, false_iff_iff, not_exists, not_and, and_imp]
    exact fun k hkn hki => h_exists k ⟨hkn, hki.trans hi.le⟩
#align measure_theory.hitting_le_iff_of_lt MeasureTheory.hitting_le_iff_of_lt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/HittingTime/Variant1329ca4f5dbe0a5a00224cded7618a682b9f3ed6664014067915f6318a84f09b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/HittingTime/Variant1329ca4f5dbe0a5a00224cded7618a682b9f3ed6664014067915f6318a84f09b.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d66eb7ac3040847f34d1fa38b020a970c913fcb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

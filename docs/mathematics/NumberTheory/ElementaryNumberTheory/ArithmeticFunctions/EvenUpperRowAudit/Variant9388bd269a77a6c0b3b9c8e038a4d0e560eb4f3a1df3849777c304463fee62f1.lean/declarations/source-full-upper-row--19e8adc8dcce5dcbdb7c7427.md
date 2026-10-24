# source_full_upper_row

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "40b447e22ee98627f7a4c75c8b7816715fa655b6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 78,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/93/9388bd269a77a6c0b3b9c8e038a4d0e560eb4f3a1df3849777c304463fee62f1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b2178a6a-29ed-e572-4718-c3631dbebeac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dc635d1d-868d-6525-4835-0bdbd9f9bef0",
  "kind": "theorem",
  "lexical_name": "source_full_upper_row",
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
  "slug": "source-full-upper-row--19e8adc8dcce5dcbdb7c7427",
  "source": {
    "blob": "40b447e22ee98627f7a4c75c8b7816715fa655b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 78,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EvenUpperRowAudit/Variant9388bd269a77a6c0b3b9c8e038a4d0e560eb4f3a1df3849777c304463fee62f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19e8adc8dcce5dcbdb7c74278b06d3e5273748f36b5373707d642407466979c6",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EvenUpperRowAudit/Variant9388bd269a77a6c0b3b9c8e038a4d0e560eb4f3a1df3849777c304463fee62f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc635d1d-868d-6525-4835-0bdbd9f9bef0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_full_upper_row (A : ℝ) (i : ℕ) :
    (∑ j ∈ Ioc i ⌊Real.exp A⌋₊, (ArithmeticFunction.moebius j : ℝ) *
      SourceSampling.sourceSamplingKernel A ((i * j : ℕ) : ℝ)) =
      (∑ j ∈ (Ioc i ⌊Real.exp A⌋₊).filter (fun j ↦ Nat.Coprime j 2),
        (ArithmeticFunction.moebius j : ℝ) *
          SourceSampling.sourceSamplingKernel A ((i * j : ℕ) : ℝ)) -
      ∑ r ∈ (Ioc (i / 2) (⌊Real.exp A⌋₊ / 2)).filter (fun r ↦ Nat.Coprime r 2),
        (ArithmeticFunction.moebius r : ℝ) *
          SourceSampling.sourceSamplingKernel A ((2 * i * r : ℕ) : ℝ) := by
  have h := moebius_interval_two_split i ⌊Real.exp A⌋₊
    (fun j ↦ SourceSampling.sourceSamplingKernel A ((i * j : ℕ) : ℝ))
  have ha (r : ℕ) : i * (2 * r) = 2 * i * r := by ring
  simpa only [ha] using h

end
end EvenUpperRowScratch

#print EvenUpperRowScratch.doubled_interval_iff
#print axioms EvenUpperRowScratch.doubled_interval_iff
#print EvenUpperRowScratch.even_interval_reindex
#print axioms EvenUpperRowScratch.even_interval_reindex
#print EvenUpperRowScratch.even_interval_signed
#print axioms EvenUpperRowScratch.even_interval_signed
#print EvenUpperRowScratch.moebius_interval_two_split
#print axioms EvenUpperRowScratch.moebius_interval_two_split
#print EvenUpperRowScratch.source_even_upper_row
#print axioms EvenUpperRowScratch.source_even_upper_row
#print EvenUpperRowScratch.source_full_upper_row
#print axioms EvenUpperRowScratch.source_full_upper_row
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EvenUpperRowAudit/Variant9388bd269a77a6c0b3b9c8e038a4d0e560eb4f3a1df3849777c304463fee62f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EvenUpperRowAudit/Variant9388bd269a77a6c0b3b9c8e038a4d0e560eb4f3a1df3849777c304463fee62f1.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40b447e22ee98627f7a4c75c8b7816715fa655b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

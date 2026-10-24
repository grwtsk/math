# cutoffOneDiagonal_tail_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aeff995d-ac73-82a0-3a47-16ebe4cf68ae",
  "kind": "theorem",
  "lexical_name": "cutoffOneDiagonal_tail_error",
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
  "slug": "cutoffonediagonal-tail-error--6d7b1af0255b2b949845f85f",
  "source": {
    "blob": "840f3289f64cc1e34bc442af46880f14c201ab20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 81,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceCutoffOneSharpTail/Variant829263a4b8b320642dffcc657a3e91e5ee2c2293e0fcdbfcf88e614bac200ce7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d7b1af0255b2b949845f85f2a91232e873c383e856dd9dcd65dff368cbf3ab5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceCutoffOneSharpTail/Variant829263a4b8b320642dffcc657a3e91e5ee2c2293e0fcdbfcf88e614bac200ce7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aeff995d-ac73-82a0-3a47-16ebe4cf68ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cutoffOneDiagonal_tail_error {Q A : ℝ} (hQ : 1 ≤ Q) (hQA : Q ≤ A) :
    |cutoffOneDiagonal A + diagonalMainCoefficient A * A| ≤ cutoffOneSharpDiagonalCost Q := by
  have hproper := cutoffOneDiagonal_sub_prime_le_three_halves A (hQ.trans hQA)
  have hprime := cutoffOnePrimeDiagonal_tail_error hQ hQA
  have htri := abs_add_le (cutoffOneDiagonal A - cutoffOnePrimeDiagonal A)
    (cutoffOnePrimeDiagonal A + diagonalMainCoefficient A * A)
  unfold cutoffOneSharpDiagonalCost
  convert htri.trans (add_le_add hproper hprime) using 1 <;> ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceCutoffOneSharpTail/Variant829263a4b8b320642dffcc657a3e91e5ee2c2293e0fcdbfcf88e614bac200ce7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceCutoffOneSharpTail/Variant829263a4b8b320642dffcc657a3e91e5ee2c2293e0fcdbfcf88e614bac200ce7.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `840f3289f64cc1e34bc442af46880f14c201ab20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

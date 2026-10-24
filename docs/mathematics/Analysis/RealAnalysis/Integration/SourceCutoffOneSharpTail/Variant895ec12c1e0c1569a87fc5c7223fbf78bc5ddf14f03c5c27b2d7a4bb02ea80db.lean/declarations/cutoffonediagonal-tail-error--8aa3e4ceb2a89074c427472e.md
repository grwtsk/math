# cutoffOneDiagonal_tail_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d6f172f-598a-6ec9-68bc-36e414be134d",
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
  "slug": "cutoffonediagonal-tail-error--8aa3e4ceb2a89074c427472e",
  "source": {
    "blob": "7418c44fcb72db71f47ab634d9cb6e9fa122dbd4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 73,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceCutoffOneSharpTail/Variant895ec12c1e0c1569a87fc5c7223fbf78bc5ddf14f03c5c27b2d7a4bb02ea80db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8aa3e4ceb2a89074c427472efb0c1180df3593325d178ec26cdbae24c96aa58b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceCutoffOneSharpTail/Variant895ec12c1e0c1569a87fc5c7223fbf78bc5ddf14f03c5c27b2d7a4bb02ea80db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d6f172f-598a-6ec9-68bc-36e414be134d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cutoffOneDiagonal_tail_error {Q A : ℝ} (hQ : 1 ≤ Q) (hQA : Q ≤ A) :
    |cutoffOneDiagonal A + diagonalMainCoefficient A * A| ≤ cutoffOneSharpDiagonalCost Q := by
  have hproper := cutoffOneDiagonal_sub_prime_le_three_halves A (hQ.trans hQA)
  have hprime := cutoffOnePrimeDiagonal_tail_error hQ hQA
  have htri := abs_add_le (cutoffOneDiagonal A - cutoffOnePrimeDiagonal A)
    (cutoffOnePrimeDiagonal A + diagonalMainCoefficient A * A)
  have heq : (cutoffOneDiagonal A - cutoffOnePrimeDiagonal A) +
      (cutoffOnePrimeDiagonal A + diagonalMainCoefficient A * A) =
      cutoffOneDiagonal A + diagonalMainCoefficient A * A := by ring
  rw [heq] at htri
  exact htri.trans (add_le_add hproper hprime)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceCutoffOneSharpTail/Variant895ec12c1e0c1569a87fc5c7223fbf78bc5ddf14f03c5c27b2d7a4bb02ea80db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceCutoffOneSharpTail/Variant895ec12c1e0c1569a87fc5c7223fbf78bc5ddf14f03c5c27b2d7a4bb02ea80db.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7418c44fcb72db71f47ab634d9cb6e9fa122dbd4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# inertia_counts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "72fe9351e4b19e50a0b7b0f7823fe25cea9b352d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 36,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/72/72de4debf1dde0222803eac9999a0ca266679c886bf4a065263e441630eef201.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ef943091-5992-6ab4-01d8-c658dc054f22",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:23c4a15a-0fb6-cc13-831f-3a4456661beb",
  "kind": "theorem",
  "lexical_name": "inertia_counts",
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
  "slug": "inertia-counts--c3c9165a45ba6ac2836f1dfb",
  "source": {
    "blob": "72fe9351e4b19e50a0b7b0f7823fe25cea9b352d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 36,
    "path": "GRWTSK/Algebra/LinearAlgebra/72de4debf1dde0222803eac9999a0ca266679c886bf4a065263e441630eef201FeshbachInertiaA/Variant72de4debf1dde0222803eac9999a0ca266679c886bf4a065263e441630eef201.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3c9165a45ba6ac2836f1dfbadb2c6cd78d75a80270584bec61a106b28f43fa9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/72de4debf1dde0222803eac9999a0ca266679c886bf4a065263e441630eef201FeshbachInertiaA/Variant72de4debf1dde0222803eac9999a0ca266679c886bf4a065263e441630eef201.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23c4a15a-0fb6-cc13-831f-3a4456661beb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem inertia_counts (a : ℝ) :
    (sigPos (fullForm (scalar a) (1 : Matrix Unit Unit ℝ) 1),
        sigNeg (fullForm (scalar a) (1 : Matrix Unit Unit ℝ) 1),
        Module.finrank ℝ (fullForm (scalar a) (1 : Matrix Unit Unit ℝ) 1).radical) =
      ({i | 0 < weights a i}.ncard, {i | weights a i < 0}.ncard,
        {i | weights a i = 0}.ncard) := by
  have h : (fullForm (scalar a) (1 : Matrix Unit Unit ℝ) 1).Equivalent
      (QuadraticMap.weightedSumSquares ℝ (weights a)) :=
    ⟨(formEquiv (scalar a) (1 : Matrix Unit Unit ℝ) 1 Matrix.isHermitian_one).trans
      (reducedWeightedEquiv a)⟩
  rw [QuadraticForm.sigPos_of_equiv_weightedSumSquares h,
    QuadraticForm.sigNeg_of_equiv_weightedSumSquares h,
    QuadraticForm.finrank_radical_of_equiv_weightedSumSquares h]

/-- The completion-of-squares shear has the required plus sign. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/72de4debf1dde0222803eac9999a0ca266679c886bf4a065263e441630eef201FeshbachInertiaA/Variant72de4debf1dde0222803eac9999a0ca266679c886bf4a065263e441630eef201.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/72de4debf1dde0222803eac9999a0ca266679c886bf4a065263e441630eef201FeshbachInertiaA/Variant72de4debf1dde0222803eac9999a0ca266679c886bf4a065263e441630eef201.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72fe9351e4b19e50a0b7b0f7823fe25cea9b352d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

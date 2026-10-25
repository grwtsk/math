# cycleIcc.trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32b640f8-38e3-7950-8ec9-9ec4ae5d2808",
  "kind": "theorem",
  "lexical_name": "cycleIcc.trans",
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
  "slug": "cycleicc-trans--09005c5b368f6605f4ce69c2",
  "source": {
    "blob": "cd5ef9c23015fad6c56281100d374fb674bdef3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 490,
    "line": 475,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant1157cbe2f52015d34fada9b0e45a0a88af4f990237bbb12c76aa57fdd711dc53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09005c5b368f6605f4ce69c20321a9e1d8f931ad7732eef0908eb7850a0ea19e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant1157cbe2f52015d34fada9b0e45a0a88af4f990237bbb12c76aa57fdd711dc53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32b640f8-38e3-7950-8ec9-9ec4ae5d2808`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 475–490.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cycleIcc.trans [NeZero n] (hij : i ≤ j) (hjk : j ≤ k) :
    (cycleIcc i j) ∘ (cycleIcc j k) = (cycleIcc i k) := by
  ext x
  rcases lt_or_ge x i with ch | ch
  · simp [cycleIcc_of_lt (lt_of_lt_of_le ch hij), cycleIcc_of_lt ch]
  rcases lt_or_ge k x with ch | ch1
  · simp [cycleIcc_of_gt (lt_of_le_of_lt hjk ch), cycleIcc_of_gt ch]
  rcases lt_or_ge x j with ch2 | ch2
  · simp [cycleIcc_of_lt ch2, cycleIcc_of_le_of_le ch ch1, cycleIcc_of_le_of_le ch (le_of_lt ch2)]
    split_ifs
    repeat lia
  · simp only [Function.comp_apply, cycleIcc_of_le_of_le ch2 ch1, cycleIcc_of_le_of_le ch ch1]
    split_ifs with h
    · exact val_eq_of_eq (cycleIcc_of_last hij)
    · simp [cycleIcc_of_gt (lt_of_le_of_lt ch2 (lt_add_one_of_succ_lt (by lia)))]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant1157cbe2f52015d34fada9b0e45a0a88af4f990237bbb12c76aa57fdd711dc53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant1157cbe2f52015d34fada9b0e45a0a88af4f990237bbb12c76aa57fdd711dc53.lean#L475).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd5ef9c23015fad6c56281100d374fb674bdef3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

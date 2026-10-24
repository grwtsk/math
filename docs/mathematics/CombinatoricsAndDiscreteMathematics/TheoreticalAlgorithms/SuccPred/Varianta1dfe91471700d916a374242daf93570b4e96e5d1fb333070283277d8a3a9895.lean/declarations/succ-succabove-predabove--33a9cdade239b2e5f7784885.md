# succ_succAbove_predAbove

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:35dcc226-5740-ce20-a67e-3d20fcee92b3",
  "kind": "lemma",
  "lexical_name": "succ_succAbove_predAbove",
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
  "slug": "succ-succabove-predabove--33a9cdade239b2e5f7784885",
  "source": {
    "blob": "5486f27ace594898edd57d48ae58c0065cceb12c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 890,
    "line": 880,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SuccPred/Varianta1dfe91471700d916a374242daf93570b4e96e5d1fb333070283277d8a3a9895.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33a9cdade239b2e5f778488520284b813e362882f7f96c944c168e1f39198a18",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SuccPred/Varianta1dfe91471700d916a374242daf93570b4e96e5d1fb333070283277d8a3a9895.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35dcc226-5740-ce20-a67e-3d20fcee92b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 880–890.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma succ_succAbove_predAbove {n : ℕ} {p : Fin n} {i : Fin (n + 1)} (h : i ≠ p.succ) :
    p.succ.succAbove (p.predAbove i) = i := by
  obtain h | h := Fin.lt_or_lt_of_ne h
  · rw [predAbove_of_le_castSucc _ _ (le_castSucc_iff.2 h),
      succAbove_castPred_of_lt _ _ h]
  · rw [predAbove_of_castSucc_lt _ _ (Fin.lt_of_le_of_lt (p.castSucc_le_succ) h),
      succAbove_pred_of_lt _ _ h]

/-- Sending `Fin n` into `Fin (n + 1)` with a gap at `p`
then back to `Fin n` by subtracting one from anything above `p` is the identity. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SuccPred/Varianta1dfe91471700d916a374242daf93570b4e96e5d1fb333070283277d8a3a9895.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SuccPred/Varianta1dfe91471700d916a374242daf93570b4e96e5d1fb333070283277d8a3a9895.lean#L880).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5486f27ace594898edd57d48ae58c0065cceb12c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

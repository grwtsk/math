# unitsSMul_cancels_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ef057e3-9284-0837-40e3-13f6764fce9c",
  "kind": "theorem",
  "lexical_name": "unitsSMul_cancels_iff",
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
  "slug": "unitssmul-cancels-iff--23d6492a25c15cbf1ddbaff9",
  "source": {
    "blob": "03f7120ea7479e251be0d2edd29f8ca027b9d6cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 428,
    "line": 412,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Variantdb44068e106cad15d3480d8e75885c7004c13ea70182f145fd4dea6d1c6f9df5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23d6492a25c15cbf1ddbaff9f16db71492963f9c88050b1665dde0ac45066dec",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Variantdb44068e106cad15d3480d8e75885c7004c13ea70182f145fd4dea6d1c6f9df5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ef057e3-9284-0837-40e3-13f6764fce9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 412–428.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unitsSMul_cancels_iff (u : ℤˣ) (w : NormalWord d) :
    Cancels (-u) (unitsSMul φ u w) ↔ ¬ Cancels u w := by
  by_cases h : Cancels u w
  · simp only [unitsSMul, h, dite_true, not_true_eq_false, iff_false]
    induction w using consRecOn with
    | ofGroup => simp [Cancels, unitsSMulWithCancel]
    | cons g u' w h1 h2 _ =>
      intro hc
      apply not_cancels_of_cons_hyp _ _ h2
      simp only [Cancels, cons_head, cons_toList, List.head?_cons,
        Option.map_some, Option.some.injEq] at h
      cases h.2
      simpa [Cancels, unitsSMulWithCancel,
        Subgroup.mul_mem_cancel_left] using hc
  · simp only [unitsSMul, dite_eq_right h]
    simpa [Cancels] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Variantdb44068e106cad15d3480d8e75885c7004c13ea70182f145fd4dea6d1c6f9df5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Variantdb44068e106cad15d3480d8e75885c7004c13ea70182f145fd4dea6d1c6f9df5.lean#L412).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03f7120ea7479e251be0d2edd29f8ca027b9d6cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

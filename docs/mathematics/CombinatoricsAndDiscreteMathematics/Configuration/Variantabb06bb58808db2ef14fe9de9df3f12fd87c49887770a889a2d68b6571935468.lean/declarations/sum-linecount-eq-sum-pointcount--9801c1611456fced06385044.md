# sum_lineCount_eq_sum_pointCount

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3e0a96a1-297f-02d8-6a05-b41220bcba99",
  "kind": "theorem",
  "lexical_name": "sum_lineCount_eq_sum_pointCount",
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
  "slug": "sum-linecount-eq-sum-pointcount--9801c1611456fced06385044",
  "source": {
    "blob": "90fe22ae0eab72724e4a79c792addc7d76d1f5d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 196,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Configuration/Variantabb06bb58808db2ef14fe9de9df3f12fd87c49887770a889a2d68b6571935468.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9801c1611456fced06385044f173b15dad85fd3058cc49d097f4f54329b7ea16",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Configuration/Variantabb06bb58808db2ef14fe9de9df3f12fd87c49887770a889a2d68b6571935468.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e0a96a1-297f-02d8-6a05-b41220bcba99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_lineCount_eq_sum_pointCount [Fintype P] [Fintype L] :
    ∑ p : P, lineCount L p = ∑ l : L, pointCount P l := by
  classical
    simp only [lineCount, pointCount, Nat.card_eq_fintype_card, ← Fintype.card_sigma]
    apply Fintype.card_congr
    calc
      (Σp, { l : L // p ∈ l }) ≃ { x : P × L // x.1 ∈ x.2 } :=
        (Equiv.subtypeProdEquivSigmaSubtype (· ∈ ·)).symm
      _ ≃ { x : L × P // x.2 ∈ x.1 } := ((Equiv.prodComm P L).subtypeEquiv fun x => Iff.rfl)
      _ ≃ Σl, { p // p ∈ l } := Equiv.subtypeProdEquivSigmaSubtype fun (l : L) (p : P) => p ∈ l
#align configuration.sum_line_count_eq_sum_point_count Configuration.sum_lineCount_eq_sum_pointCount

variable {P L}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Configuration/Variantabb06bb58808db2ef14fe9de9df3f12fd87c49887770a889a2d68b6571935468.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Configuration/Variantabb06bb58808db2ef14fe9de9df3f12fd87c49887770a889a2d68b6571935468.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90fe22ae0eab72724e4a79c792addc7d76d1f5d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

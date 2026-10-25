# blt_eq_false_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:04085c97-e5c3-7bc1-5cfc-51a01dfb6456",
  "kind": "theorem",
  "lexical_name": "blt_eq_false_iff",
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
  "slug": "blt-eq-false-iff--734c3283cd8ea8347b3da4b2",
  "source": {
    "blob": "452395bb8cdf6ea14fb051fb7993a1dc2e361e38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 687,
    "line": 674,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante963f9a88268d61db206e831cac909a1cb1c7080bd470072ce2157518d28e4bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:734c3283cd8ea8347b3da4b2b935b4b311257863c1f0a95b51c45d16b0e2a4c5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante963f9a88268d61db206e831cac909a1cb1c7080bd470072ce2157518d28e4bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04085c97-e5c3-7bc1-5cfc-51a01dfb6456`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 674–687.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem blt_eq_false_iff : blt x y = false ↔ ble y x = true := by
  cases x <;> cases y
  · simp [ble, blt]
  · simp [ble, blt]
  · simp [ble, blt]
  · rename_i n₁ k₁ hn₁ n₂ k₂ hn₂
    simp only [blt, ble]
    rw [← Int.neg_sub]
    rcases k₁ - k₂ with (_ | _) | _
    · simp
    · simp [← Int.negSucc_eq]
    · simp only [Int.neg_negSucc, decide_eq_false_iff_not, Int.not_lt,
        decide_eq_true_eq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante963f9a88268d61db206e831cac909a1cb1c7080bd470072ce2157518d28e4bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante963f9a88268d61db206e831cac909a1cb1c7080bd470072ce2157518d28e4bf.lean#L674).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `452395bb8cdf6ea14fb051fb7993a1dc2e361e38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

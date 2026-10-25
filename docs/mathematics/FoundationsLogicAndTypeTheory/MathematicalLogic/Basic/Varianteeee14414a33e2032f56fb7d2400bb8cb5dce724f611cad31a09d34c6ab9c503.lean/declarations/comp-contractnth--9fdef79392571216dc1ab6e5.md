# comp_contractNth

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a7f1130f-fdac-3bc2-4cb5-2bd844b74a1b",
  "kind": "lemma",
  "lexical_name": "comp_contractNth",
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
  "slug": "comp-contractnth--9fdef79392571216dc1ab6e5",
  "source": {
    "blob": "e2aa3a588bea6d4d714a2a1d7e3d2524186fc490",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1169,
    "line": 1157,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianteeee14414a33e2032f56fb7d2400bb8cb5dce724f611cad31a09d34c6ab9c503.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9fdef79392571216dc1ab6e5273e283063470240323136bd781aa6faf41d1c63",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianteeee14414a33e2032f56fb7d2400bb8cb5dce724f611cad31a09d34c6ab9c503.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7f1130f-fdac-3bc2-4cb5-2bd844b74a1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1157–1169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma comp_contractNth {β : Sort*} (opα : α → α → α) (opβ : β → β → β) {f : α → β}
    (hf : ∀ x y, f (opα x y) = opβ (f x) (f y)) (j : Fin (n + 1)) (g : Fin (n + 1) → α) :
    f ∘ contractNth j opα g = contractNth j opβ (f ∘ g) := by
  ext x
  rcases lt_trichotomy (x : ℕ) j with (h|h|h)
  · simp only [Function.comp_apply, contractNth_apply_of_lt, h]
  · simp only [Function.comp_apply, contractNth_apply_of_eq, h, hf]
  · simp only [Function.comp_apply, contractNth_apply_of_gt, h]

end ContractNth

/-- To show two sigma pairs of tuples agree, it to show the second elements are related via
`Fin.cast`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianteeee14414a33e2032f56fb7d2400bb8cb5dce724f611cad31a09d34c6ab9c503.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianteeee14414a33e2032f56fb7d2400bb8cb5dce724f611cad31a09d34c6ab9c503.lean#L1157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2aa3a588bea6d4d714a2a1d7e3d2524186fc490` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# congr_build_observe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:93f623a4-69cf-6f6b-108e-0650106bc417",
  "kind": "theorem",
  "lexical_name": "congr_build_observe",
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
  "slug": "congr-build-observe--36f458591d5db81106cd2f7c",
  "source": {
    "blob": "3462d8a5a4c7b70eb34c05d74626edd4369bd8c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1499,
    "line": 1465,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pairs/Variant433608a250f01205b5e44477776035984e3e48d9ed022b3d5028af177d6f6540.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36f458591d5db81106cd2f7c28c86684ef773600b50431d56be9f3493f11232d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pairs/Variant433608a250f01205b5e44477776035984e3e48d9ed022b3d5028af177d6f6540.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93f623a4-69cf-6f6b-108e-0650106bc417`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1465–1499.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem congr_build_observe {b} (R : DataWrapper S b) :
    (∀ {T T' a a'}, Converts T T' → Converts a a' → Converts (R.build T a) (R.build T' a')) ∧
    (∀ {T T' w w' a a'}, Converts T T' → Converts w w' → Converts a a' →
      Converts (R.observe T w a) (R.observe T' w' a')) := by
  generalize he : R.depth = n
  induction n using Nat.strong_induction_on generalizing b R with
  | h n rec =>
    cases R with
    | identity =>
      constructor
      · intro T T' a a' hT ha; simpa only [build] using ha
      · intro T T' w w' a a' hT hw ha
        simp only [observe]
        exact .trans _ _ _ (ha.subst (Expr.single w)) (hw.instantiate_right a')
    | positive R D e =>
      have ih := rec R.depth (by simp only [← he,depth]; omega) R rfl
      constructor
      · intro T T' a a' hT ha
        simp only [build]
        exact .lam (.refl _) ((ih.1 hT ha).rename Nat.succ)
      · intro T T' w w' a a' hT hw ha
        simp only [observe]
        exact ih.2 hT (.app hw (.refl _)) ha
    | @negative b R U =>
      have ih := rec R.depth (by simp only [← he,depth]; omega) R rfl
      have ih' := rec R.depth (by simp only [← he,depth]; omega)
        (R.rename Nat.succ) (R.depth_rename Nat.succ)
      constructor
      · intro T T' a a' hT ha
        simp only [build]
        exact .lam (R.apply_converts hT) ((U.rename Nat.succ).send_converts
          (ih'.2 (hT.rename Nat.succ) (.refl _) (ha.rename (argRen (!b) Nat.succ))))
      · intro T T' w w' a a' hT hw ha
        simp only [observe]
        exact U.read_converts (.app hw (ih.1 hT ha))
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pairs/Variant433608a250f01205b5e44477776035984e3e48d9ed022b3d5028af177d6f6540.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pairs/Variant433608a250f01205b5e44477776035984e3e48d9ed022b3d5028af177d6f6540.lean#L1465).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3462d8a5a4c7b70eb34c05d74626edd4369bd8c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

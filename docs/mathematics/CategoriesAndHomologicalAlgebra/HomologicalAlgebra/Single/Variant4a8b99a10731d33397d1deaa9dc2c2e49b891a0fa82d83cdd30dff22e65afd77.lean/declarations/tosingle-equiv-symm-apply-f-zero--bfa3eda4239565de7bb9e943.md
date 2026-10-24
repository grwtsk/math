# toSingle₀Equiv_symm_apply_f_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a3bfeb86550c5c45d87f030aecdf8ab60a723cac",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 237,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4a8b99a10731d33397d1deaa9dc2c2e49b891a0fa82d83cdd30dff22e65afd77.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:96f53bef-214e-3571-2a48-0ab93d8b846d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:db874b00-70d5-0973-ed66-76c396cfbc9f",
  "kind": "lemma",
  "lexical_name": "toSingle₀Equiv_symm_apply_f_zero",
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
  "slug": "tosingle-equiv-symm-apply-f-zero--bfa3eda4239565de7bb9e943",
  "source": {
    "blob": "a3bfeb86550c5c45d87f030aecdf8ab60a723cac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 237,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Single/Variant4a8b99a10731d33397d1deaa9dc2c2e49b891a0fa82d83cdd30dff22e65afd77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bfa3eda4239565de7bb9e94349326d1163d050933e6bfacf95e66b84375be3a1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Single/Variant4a8b99a10731d33397d1deaa9dc2c2e49b891a0fa82d83cdd30dff22e65afd77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db874b00-70d5-0973-ed66-76c396cfbc9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toSingle₀Equiv_symm_apply_f_zero {C : ChainComplex V ℕ} {X : V}
    (f : C.X 0 ⟶ X) (hf : C.d 1 0 ≫ f = 0) :
    ((toSingle₀Equiv C X).symm ⟨f, hf⟩).f 0 = f := by
  simp [toSingle₀Equiv]

set_option backward.isDefEq.respectTransparency.types false in
/-- Morphisms from a single object chain complex with `X` concentrated in degree 0
to an `ℕ`-indexed chain complex `C` are the same as morphisms `f : X → C.X 0`.
-/
@[simps apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Single/Variant4a8b99a10731d33397d1deaa9dc2c2e49b891a0fa82d83cdd30dff22e65afd77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Single/Variant4a8b99a10731d33397d1deaa9dc2c2e49b891a0fa82d83cdd30dff22e65afd77.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3bfeb86550c5c45d87f030aecdf8ab60a723cac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:268594bdf32bb8b6e2cf4e4416844ad4c4b95ae95828cf61fd5c114a1a1471e2",
  "kind": "def",
  "lexical_name": "prod",
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
  "slug": "prod--a48d30f5ae48bacb04d81e71",
  "source": {
    "blob": "5a1f1f8254bbc697028f3b348b53dcc23faa8be6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 252,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantc8a3069bc3a9ad0d6b87383973bb59f12b3c4a986f4a2c2164aa3896f4adff60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a48d30f5ae48bacb04d81e71d437a8121aae0eabe522e2f746375c355fbe9670",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantc8a3069bc3a9ad0d6b87383973bb59f12b3c4a986f4a2c2164aa3896f4adff60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:268594bdf32bb8b6e2cf4e4416844ad4c4b95ae95828cf61fd5c114a1a1471e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def prod {ι : Type*} {s : Finset ι} {k : ι → ℤ} (m : ℤ)
    (hm : m = ∑ i ∈ s, k i) {Γ : Subgroup (GL (Fin 2) ℝ)} [Γ.HasDetPlusMinusOne]
    (f : (i : ι) → SlashInvariantForm Γ (k i)) : SlashInvariantForm Γ m where
  toFun := ∏ i ∈ s, (f i)
  slash_action_eq' A hA := by
    simp [hm, prod_slash_sum_weights, -Matrix.GeneralLinearGroup.val_det_apply,
       Subgroup.HasDetPlusMinusOne.abs_det hA, SlashInvariantForm.slash_action_eqn (f _) A hA]

/-- Given `SlashInvariantForm`'s `f i` of weight `k`, define the form which as a
function is a product of those indexed by `s : Finset ι` with weight `#s * k`. -/
@[simps! -fullyApplied]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantc8a3069bc3a9ad0d6b87383973bb59f12b3c4a986f4a2c2164aa3896f4adff60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantc8a3069bc3a9ad0d6b87383973bb59f12b3c4a986f4a2c2164aa3896f4adff60.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a1f1f8254bbc697028f3b348b53dcc23faa8be6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

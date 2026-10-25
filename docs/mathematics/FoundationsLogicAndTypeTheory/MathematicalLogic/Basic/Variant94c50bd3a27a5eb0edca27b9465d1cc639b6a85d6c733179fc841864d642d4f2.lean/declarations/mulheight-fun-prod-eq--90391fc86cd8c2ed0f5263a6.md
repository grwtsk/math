# mulHeight_fun_prod_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "509d6cc988e2f107bedb7dd54dee013acf099c31",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 666,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/94c50bd3a27a5eb0edca27b9465d1cc639b6a85d6c733179fc841864d642d4f2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ae1f383b-8cd2-d47d-81ff-4dcbe5c8cdea",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aa39ac03-f5dd-9de1-b16a-05a698729ab0",
  "kind": "lemma",
  "lexical_name": "mulHeight_fun_prod_eq",
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
  "slug": "mulheight-fun-prod-eq--90391fc86cd8c2ed0f5263a6",
  "source": {
    "blob": "509d6cc988e2f107bedb7dd54dee013acf099c31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 682,
    "line": 666,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant94c50bd3a27a5eb0edca27b9465d1cc639b6a85d6c733179fc841864d642d4f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90391fc86cd8c2ed0f5263a6983ae62e78a82f2241738b0acd50a76c6a127bfe",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant94c50bd3a27a5eb0edca27b9465d1cc639b6a85d6c733179fc841864d642d4f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa39ac03-f5dd-9de1-b16a-05a698729ab0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 666–682.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mulHeight_fun_prod_eq {x : (a : α) → ι a → K} (hx : ∀ a, x a ≠ 0) :
    mulHeight (fun I : (a : α) → ι a ↦ ∏ a, x a (I a)) = ∏ a, mulHeight (x a) := by
  rw [mulHeight_eq ?h₁]
  case h₁ =>
    simp_rw [ne_iff, Pi.zero_def] at hx ⊢
    choose f hf using hx
    exact ⟨f, prod_ne_zero_iff.mpr fun a _ ↦ hf a⟩
  simp_rw [_root_.map_prod, Real.iSup_prod_eq_prod_iSup_of_nonnegHomClass]
  rw [Multiset.prod_map_prod,
    finprod_prod_comm _ _ fun b _ ↦ hasFiniteMulSupport_iSup_nonarchAbsVal (hx b),
    ← prod_mul_distrib]
  exact prod_congr rfl fun a _ ↦ by rw [mulHeight_eq (hx a)]

open Real in
/-- Consider a finite family `x : (a : α) → ι a → K` of tuples. Then the logarithmic height
of the "multiplication table" `fun (I : (a : α) → ι a ↦ ∏ a, x a (I a))` is the sum
of the logarithmic heights of all the `x a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant94c50bd3a27a5eb0edca27b9465d1cc639b6a85d6c733179fc841864d642d4f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant94c50bd3a27a5eb0edca27b9465d1cc639b6a85d6c733179fc841864d642d4f2.lean#L666).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `509d6cc988e2f107bedb7dd54dee013acf099c31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

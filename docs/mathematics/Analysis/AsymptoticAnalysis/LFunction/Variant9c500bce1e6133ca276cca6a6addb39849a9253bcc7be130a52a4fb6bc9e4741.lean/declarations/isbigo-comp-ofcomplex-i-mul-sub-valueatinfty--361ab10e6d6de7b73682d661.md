# isBigO_comp_ofComplex_I_mul_sub_valueAtInfty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9995dc693a71fb7685eef934df0b0978f7519f7b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 50,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9c/9c500bce1e6133ca276cca6a6addb39849a9253bcc7be130a52a4fb6bc9e4741.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f53c80bf-a7d0-b882-7090-d6afecceb407",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2a59434b-54d7-843f-1aa3-3e6b6878dc54",
  "kind": "lemma",
  "lexical_name": "isBigO_comp_ofComplex_I_mul_sub_valueAtInfty",
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
  "slug": "isbigo-comp-ofcomplex-i-mul-sub-valueatinfty--361ab10e6d6de7b73682d661",
  "source": {
    "blob": "9995dc693a71fb7685eef934df0b0978f7519f7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 50,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/LFunction/Variant9c500bce1e6133ca276cca6a6addb39849a9253bcc7be130a52a4fb6bc9e4741.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:361ab10e6d6de7b73682d661c5bd7578ce905878a100896b9da5634b6f520349",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/LFunction/Variant9c500bce1e6133ca276cca6a6addb39849a9253bcc7be130a52a4fb6bc9e4741.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a59434b-54d7-843f-1aa3-3e6b6878dc54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma isBigO_comp_ofComplex_I_mul_sub_valueAtInfty (r : ℝ) :
    (fun t : ℝ ↦ f (ofComplex (I * t)) - valueAtInfty f) =O[atTop] (fun t ↦ t ^ r) := by
  obtain ⟨C, hCpos, hCO⟩ := ModularFormClass.exp_decay_sub_atImInfty' f
  refine (hCO.comp_tendsto tendsto_ofComplex_I_mul_atTop_atImInfty).trans ?_
  refine (EventuallyEq.isBigO ?_).trans (isLittleO_exp_neg_mul_rpow_atTop hCpos r).isBigO
  filter_upwards [eventually_gt_atTop 0] with t ht
  simp [ht, ofComplex_apply_of_im_pos, ← coe_im]

end asymptotics

/-- A `WeakFEPair` structure associated to a modular form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/LFunction/Variant9c500bce1e6133ca276cca6a6addb39849a9253bcc7be130a52a4fb6bc9e4741.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/LFunction/Variant9c500bce1e6133ca276cca6a6addb39849a9253bcc7be130a52a4fb6bc9e4741.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9995dc693a71fb7685eef934df0b0978f7519f7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

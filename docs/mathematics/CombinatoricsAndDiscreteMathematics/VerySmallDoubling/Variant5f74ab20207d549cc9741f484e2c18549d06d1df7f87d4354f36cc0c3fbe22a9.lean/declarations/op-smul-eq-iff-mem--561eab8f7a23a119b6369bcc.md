# op_smul_eq_iff_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5900f665-ece8-01a8-bbcd-7f6bab19e4bf",
  "kind": "lemma",
  "lexical_name": "op_smul_eq_iff_mem",
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
  "slug": "op-smul-eq-iff-mem--561eab8f7a23a119b6369bcc",
  "source": {
    "blob": "9c83e33c3f22ae5632d9878f1fabc980dcd10abc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 357,
    "line": 348,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/VerySmallDoubling/Variant5f74ab20207d549cc9741f484e2c18549d06d1df7f87d4354f36cc0c3fbe22a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:561eab8f7a23a119b6369bccf18d2909c9a31f839fe292cf2e136850b5cfeb03",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/VerySmallDoubling/Variant5f74ab20207d549cc9741f484e2c18549d06d1df7f87d4354f36cc0c3fbe22a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5900f665-ece8-01a8-bbcd-7f6bab19e4bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 348–357.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma op_smul_eq_iff_mem {H : Subgroup G} {c : Set G} {x : G}
    (hc : c ∈ orbit Gᵐᵒᵖ (H : Set G)) : x ∈ c ↔ H <• x = c := by
  refine ⟨fun hx => ?_, fun hx =>
    by simp only [← hx, mem_rightCoset_iff, mul_inv_cancel, SetLike.mem_coe, one_mem]⟩
  obtain ⟨⟨a⟩, rfl⟩ := hc
  change _ = _ <• _
  rw [eq_comm, smul_eq_iff_eq_inv_smul, ← op_inv, op_smul_op_smul, rightCoset_mem_rightCoset]
  rwa [← op_smul_eq_mul, op_inv, ← SetLike.mem_coe, ← Set.mem_smul_set_iff_inv_smul_mem]

omit [DecidableEq G] in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/VerySmallDoubling/Variant5f74ab20207d549cc9741f484e2c18549d06d1df7f87d4354f36cc0c3fbe22a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/VerySmallDoubling/Variant5f74ab20207d549cc9741f484e2c18549d06d1df7f87d4354f36cc0c3fbe22a9.lean#L348).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c83e33c3f22ae5632d9878f1fabc980dcd10abc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

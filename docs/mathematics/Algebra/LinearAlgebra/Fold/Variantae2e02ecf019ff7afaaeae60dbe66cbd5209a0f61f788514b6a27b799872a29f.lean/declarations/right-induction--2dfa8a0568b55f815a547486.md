# right_induction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "826a5e5393725f1b9f5df8df0262ad1701ae47db",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 124,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ae/ae2e02ecf019ff7afaaeae60dbe66cbd5209a0f61f788514b6a27b799872a29f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:56c93b53-eaa5-7e6e-2970-50a255177d64",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d12b07f4-7ee9-0871-8eb8-96774c95ac4d",
  "kind": "theorem",
  "lexical_name": "right_induction",
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
  "slug": "right-induction--2dfa8a0568b55f815a547486",
  "source": {
    "blob": "826a5e5393725f1b9f5df8df0262ad1701ae47db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 124,
    "path": "GRWTSK/Algebra/LinearAlgebra/Fold/Variantae2e02ecf019ff7afaaeae60dbe66cbd5209a0f61f788514b6a27b799872a29f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2dfa8a0568b55f815a54748631c40d665480165e5bd5497d0e1579861d9cf7e4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Fold/Variantae2e02ecf019ff7afaaeae60dbe66cbd5209a0f61f788514b6a27b799872a29f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d12b07f4-7ee9-0871-8eb8-96774c95ac4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem right_induction {P : CliffordAlgebra Q → Prop} (algebraMap : ∀ r : R, P (algebraMap _ _ r))
    (add : ∀ x y, P x → P y → P (x + y)) (mul_ι : ∀ m x, P x → P (x * ι Q m)) : ∀ x, P x := by
  /- It would be neat if we could prove this via `foldr` like how we prove
    `CliffordAlgebra.induction`, but going via the grading seems easier. -/
  intro x
  have : x ∈ ⊤ := Submodule.mem_top (R := R)
  rw [← iSup_ι_range_eq_top] at this
  induction this using Submodule.iSup_induction' with
  | mem i x hx =>
    induction hx using Submodule.pow_induction_on_right' with
    | algebraMap r => exact algebraMap r
    | add _x _y _i _ _ ihx ihy => exact add _ _ ihx ihy
    | mul_mem _i x _hx px m hm =>
      obtain ⟨m, rfl⟩ := hm
      exact mul_ι _ _ px
  | zero => simpa only [map_zero] using algebraMap 0
  | add _x _y _ _ ihx ihy =>
    exact add _ _ ihx ihy

@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Fold/Variantae2e02ecf019ff7afaaeae60dbe66cbd5209a0f61f788514b6a27b799872a29f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Fold/Variantae2e02ecf019ff7afaaeae60dbe66cbd5209a0f61f788514b6a27b799872a29f.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `826a5e5393725f1b9f5df8df0262ad1701ae47db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

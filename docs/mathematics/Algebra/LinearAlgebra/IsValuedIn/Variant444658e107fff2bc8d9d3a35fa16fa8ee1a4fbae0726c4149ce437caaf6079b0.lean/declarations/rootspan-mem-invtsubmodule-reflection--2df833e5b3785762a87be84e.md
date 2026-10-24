# rootSpan_mem_invtSubmodule_reflection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c4f7e07fe5052bfb1d4e27345a06833fa900fdd5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 201,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/44/444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1fe564bb-ace4-3514-0d00-359fefa15975",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:26f8f6a7-21e8-4a52-1fe6-2c5a58074433",
  "kind": "lemma",
  "lexical_name": "rootSpan_mem_invtSubmodule_reflection",
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
  "slug": "rootspan-mem-invtsubmodule-reflection--2df833e5b3785762a87be84e",
  "source": {
    "blob": "c4f7e07fe5052bfb1d4e27345a06833fa900fdd5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 201,
    "path": "GRWTSK/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2df833e5b3785762a87be84e3ad44ad548a1951d356203f8694178502861adcd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26f8f6a7-21e8-4a52-1fe6-2c5a58074433`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rootSpan_mem_invtSubmodule_reflection (i : ι) :
    P.rootSpan R ∈ Module.End.invtSubmodule (P.reflection i) := by
  rw [Module.End.mem_invtSubmodule, rootSpan]
  intro x hx
  induction hx using Submodule.span_induction with
  | mem y hy =>
    obtain ⟨j, rfl⟩ := hy
    rw [Submodule.mem_comap, LinearEquiv.coe_coe, reflection_apply_root]
    apply Submodule.sub_mem
    · exact Submodule.subset_span <| mem_range_self j
    · exact Submodule.smul_mem _ _ <| Submodule.subset_span <| mem_range_self i
  | zero => simp
  | add y z hy hz hy' hz' => simpa using Submodule.add_mem _ hy' hz'
  | smul y t hy hy' => simpa using Submodule.smul_mem _ _ hy'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IsValuedIn/Variant444658e107fff2bc8d9d3a35fa16fa8ee1a4fbae0726c4149ce437caaf6079b0.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4f7e07fe5052bfb1d4e27345a06833fa900fdd5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

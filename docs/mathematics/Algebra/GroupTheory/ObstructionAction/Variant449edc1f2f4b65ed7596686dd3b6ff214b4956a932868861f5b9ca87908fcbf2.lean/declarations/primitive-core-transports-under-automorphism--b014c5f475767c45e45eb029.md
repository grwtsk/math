# primitive_core_transports_under_automorphism

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f5ef71292abadfb6a59034952fa85abfc9be3691",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 136,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/44/449edc1f2f4b65ed7596686dd3b6ff214b4956a932868861f5b9ca87908fcbf2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6cbacfe2-69ed-2c69-8984-60357288d296",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:27e9bde5-620c-d8d7-4ba5-efd24d521348",
  "kind": "theorem",
  "lexical_name": "primitive_core_transports_under_automorphism",
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
  "slug": "primitive-core-transports-under-automorphism--b014c5f475767c45e45eb029",
  "source": {
    "blob": "f5ef71292abadfb6a59034952fa85abfc9be3691",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 136,
    "path": "GRWTSK/Algebra/GroupTheory/ObstructionAction/Variant449edc1f2f4b65ed7596686dd3b6ff214b4956a932868861f5b9ca87908fcbf2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b014c5f475767c45e45eb02996335126b62f33a80acfbe29545728daf0511c3a",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ObstructionAction/Variant449edc1f2f4b65ed7596686dd3b6ff214b4956a932868861f5b9ca87908fcbf2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27e9bde5-620c-d8d7-4ba5-efd24d521348`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primitive_core_transports_under_automorphism
    {Partial : Type uPartial}
    {Full : Type uFull}
    {Constraint : Type uConstraint}
    [DecidableEq Constraint]
    {GroupCarrier : Type uGroup}
    [Group GroupCarrier]
    [MulAction GroupCarrier Partial]
    [MulAction GroupCarrier Full]
    [MulAction GroupCarrier Constraint]
    {semantics :
      Semantics Partial Full Constraint}
    (equivariance :
      CompletionEquivariance
        semantics GroupCarrier)
    {registry : Finset Constraint}
    {partial : Partial}
    (automorphism : GroupCarrier)
    (core :
      Obstruction.PrimitiveCore
        semantics registry partial) :
    ∃ transported :
        Obstruction.PrimitiveCore
          semantics
          (transportFinset
            automorphism registry)
          (automorphism • partial),
      transported.constraints =
        transportFinset
          automorphism core.constraints :=
  ⟨transportPrimitiveCore
      equivariance automorphism core,
    rfl⟩

end Symmetry

end Mathematics.BinaryFrontier
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ObstructionAction/Variant449edc1f2f4b65ed7596686dd3b6ff214b4956a932868861f5b9ca87908fcbf2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ObstructionAction/Variant449edc1f2f4b65ed7596686dd3b6ff214b4956a932868861f5b9ca87908fcbf2.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5ef71292abadfb6a59034952fa85abfc9be3691` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# HomogeneousSubmodule.mem_toSubmodule_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e2bf93cc440b078227149a7f3fc4f615f02574fe",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 126,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/df/df5a0d84740716556318f8e6b444dc3c3ee72720aa898ec6c714f54f2e339654.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:057091b6-d886-532e-61f4-d6ce0f5eb46c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9e24646c-9aef-6358-03d1-4e6ff319fdd4",
  "kind": "theorem",
  "lexical_name": "HomogeneousSubmodule.mem_toSubmodule_iff",
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
  "slug": "homogeneoussubmodule-mem-tosubmodule-iff--79b88a5792d6f1548ecb312c",
  "source": {
    "blob": "e2bf93cc440b078227149a7f3fc4f615f02574fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 126,
    "path": "GRWTSK/Algebra/LinearAlgebra/Submodule/Variantdf5a0d84740716556318f8e6b444dc3c3ee72720aa898ec6c714f54f2e339654.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79b88a5792d6f1548ecb312c1b769c93b88cd7aca6186b034000cac9ad4fef6c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Submodule/Variantdf5a0d84740716556318f8e6b444dc3c3ee72720aa898ec6c714f54f2e339654.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e24646c-9aef-6358-03d1-4e6ff319fdd4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HomogeneousSubmodule.mem_toSubmodule_iff {I : HomogeneousSubmodule 𝒜 ℳ} {x : M} :
    x ∈ I.toSubmodule (A := A) ↔ x ∈ I :=
  Iff.rfl

end HomogeneousDef
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Submodule/Variantdf5a0d84740716556318f8e6b444dc3c3ee72720aa898ec6c714f54f2e339654.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Submodule/Variantdf5a0d84740716556318f8e6b444dc3c3ee72720aa898ec6c714f54f2e339654.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2bf93cc440b078227149a7f3fc4f615f02574fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

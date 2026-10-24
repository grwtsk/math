# mk_le_mk_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6724a5cafae42411a7c1245dedb2df4e67073b41",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 41,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b3/b3d3b7958c03e7f42adf0cf65f5cbedcdd57dae26bd9b4573945cd6f199f87f9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8be42f56-3c09-4ede-6317-2b6d87d7dc1f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dfb23dbd-36bb-a979-df19-d1efeb0bd015",
  "kind": "theorem",
  "lexical_name": "mk_le_mk_smul",
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
  "slug": "mk-le-mk-smul--cc7ec594eae17c88a03194dd",
  "source": {
    "blob": "6724a5cafae42411a7c1245dedb2df4e67073b41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 41,
    "path": "GRWTSK/Algebra/LinearAlgebra/Archimedean/Variantb3d3b7958c03e7f42adf0cf65f5cbedcdd57dae26bd9b4573945cd6f199f87f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc7ec594eae17c88a03194dde4d35bc78d5043e5a51c507cd4626d96757234d6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Archimedean/Variantb3d3b7958c03e7f42adf0cf65f5cbedcdd57dae26bd9b4573945cd6f199f87f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dfb23dbd-36bb-a979-df19-d1efeb0bd015`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mk_le_mk_smul (a : M) (k : K) : mk a ≤ mk (k • a) := by
  obtain rfl | h := eq_or_ne k 0 <;> simp [*]

end ArchimedeanClass

namespace FiniteArchimedeanClass

variable (K)

/-- Given an upper set `s` of finite archimedean classes in a linearly ordered module `M` with
Archimedean scalars, all elements belonging to these classes together with 0 form a submodule.

This has the same carrier as `FiniteArchimedeanClass.addSubgroup`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Archimedean/Variantb3d3b7958c03e7f42adf0cf65f5cbedcdd57dae26bd9b4573945cd6f199f87f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Archimedean/Variantb3d3b7958c03e7f42adf0cf65f5cbedcdd57dae26bd9b4573945cd6f199f87f9.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6724a5cafae42411a7c1245dedb2df4e67073b41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

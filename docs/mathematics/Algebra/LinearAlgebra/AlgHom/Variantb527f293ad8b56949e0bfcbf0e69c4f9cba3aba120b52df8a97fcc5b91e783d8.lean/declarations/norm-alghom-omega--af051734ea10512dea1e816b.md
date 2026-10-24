# norm_algHom_omega

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "679a75e41ade039ce62d7ab5cab354223dc11fc0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 96,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b5/b527f293ad8b56949e0bfcbf0e69c4f9cba3aba120b52df8a97fcc5b91e783d8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7e6d850f-80c0-6bf1-9ccc-5bc28a711be8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:93e9c262-e88c-9f95-68ef-0321ea0f5a6f",
  "kind": "theorem",
  "lexical_name": "norm_algHom_omega",
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
  "slug": "norm-alghom-omega--af051734ea10512dea1e816b",
  "source": {
    "blob": "679a75e41ade039ce62d7ab5cab354223dc11fc0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 96,
    "path": "GRWTSK/Algebra/LinearAlgebra/AlgHom/Variantb527f293ad8b56949e0bfcbf0e69c4f9cba3aba120b52df8a97fcc5b91e783d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af051734ea10512dea1e816b6182382f44bf6c23342c05bd11e747e43086b524",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/AlgHom/Variantb527f293ad8b56949e0bfcbf0e69c4f9cba3aba120b52df8a97fcc5b91e783d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93e9c262-e88c-9f95-68ef-0321ea0f5a6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_algHom_omega (hf : Function.Injective f) :
    norm (f ω) = -a := by
  simpa [trace_algHom_omega f hf, ← Algebra.algebraMap_eq_smul_one, add_eq_zero_iff_eq_neg,
    ← map_neg] using (smul_omega_sub_eq f).symm

/-- An injective algebra homomorphism preserves traces. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/AlgHom/Variantb527f293ad8b56949e0bfcbf0e69c4f9cba3aba120b52df8a97fcc5b91e783d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/AlgHom/Variantb527f293ad8b56949e0bfcbf0e69c4f9cba3aba120b52df8a97fcc5b91e783d8.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `679a75e41ade039ce62d7ab5cab354223dc11fc0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

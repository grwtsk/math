# kernelIsoKer_inv_kernel_ι

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3debc1f4-9187-e3c3-3124-7b8ef8a510fc",
  "kind": "theorem",
  "lexical_name": "kernelIsoKer_inv_kernel_ι",
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
  "slug": "kernelisoker-inv-kernel--d849e8664699be3e468c9aa7",
  "source": {
    "blob": "b93abf1ba79bc15009ef1e4ca119fa3275e75bf2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 119,
    "path": "GRWTSK/Algebra/LinearAlgebra/Kernels/Variant7daa59c792b2cb7e9d4db8fdc7068854a94755124c71909f1fdaf299d4968ed2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d849e8664699be3e468c9aa71fda3fe909ce19c006617d9a76aa5cb6581ae101",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Kernels/Variant7daa59c792b2cb7e9d4db8fdc7068854a94755124c71909f1fdaf299d4968ed2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3debc1f4-9187-e3c3-3124-7b8ef8a510fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem kernelIsoKer_inv_kernel_ι : (kernelIsoKer f).inv ≫ kernel.ι f = ofHom f.hom.ker.subtype :=
  limit.isoLimitCone_inv_π _ _

@[simp, elementwise]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Kernels/Variant7daa59c792b2cb7e9d4db8fdc7068854a94755124c71909f1fdaf299d4968ed2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Kernels/Variant7daa59c792b2cb7e9d4db8fdc7068854a94755124c71909f1fdaf299d4968ed2.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b93abf1ba79bc15009ef1e4ca119fa3275e75bf2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

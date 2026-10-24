# column_inner_eq_kernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e56df95f-7b6d-21c2-426c-7b7b8aeaafc5",
  "kind": "theorem",
  "lexical_name": "column_inner_eq_kernel",
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
  "slug": "column-inner-eq-kernel--32160a58b38b17d91b2c54f9",
  "source": {
    "blob": "7fa0850f1260293bced7878ac7ef8702fc1cf84d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 36,
    "path": "GRWTSK/Algebra/LinearAlgebra/AEe72e89e9f069ff0/Variant6ec028dd6cda05ac6eba7046fd77df0728596f2722658a68955f1fcdc0bb7038.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32160a58b38b17d91b2c54f96650aebcdafa4b0d8491ff3b48cc5bb7a17dbfbc",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/AEe72e89e9f069ff0/Variant6ec028dd6cda05ac6eba7046fd77df0728596f2722658a68955f1fcdc0bb7038.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e56df95f-7b6d-21c2-426c-7b7b8aeaafc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem column_inner_eq_kernel
    (certificate : GramFactorCertificate kernel indices FactorIndex)
    (p q : Active) :
    (∑ k, star (certificate.factor k p) * certificate.factor k q) =
      kernel (indices p) (indices q) := by
  have entry := congrFun (congrFun certificate.reconstructs p) q
  simpa [Matrix.mul_apply] using entry

end GramFactorCertificate

end Mathematics.Kernel
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/AEe72e89e9f069ff0/Variant6ec028dd6cda05ac6eba7046fd77df0728596f2722658a68955f1fcdc0bb7038.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/AEe72e89e9f069ff0/Variant6ec028dd6cda05ac6eba7046fd77df0728596f2722658a68955f1fcdc0bb7038.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fa0850f1260293bced7878ac7ef8702fc1cf84d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

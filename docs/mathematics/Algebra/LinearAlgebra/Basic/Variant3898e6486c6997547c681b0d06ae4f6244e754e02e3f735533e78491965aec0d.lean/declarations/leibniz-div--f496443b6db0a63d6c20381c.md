# leibniz_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3373829f-d1d4-1fa6-ab5c-9f4d5b014cd2",
  "kind": "theorem",
  "lexical_name": "leibniz_div",
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
  "slug": "leibniz-div--f496443b6db0a63d6c20381c",
  "source": {
    "blob": "c7dfda9beef09c47b4c050f5d6a5466fcbd3cea9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 512,
    "line": 507,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant3898e6486c6997547c681b0d06ae4f6244e754e02e3f735533e78491965aec0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f496443b6db0a63d6c20381cc31e072d2e69eb93c6baedf6ea63ba460850e4c2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant3898e6486c6997547c681b0d06ae4f6244e754e02e3f735533e78491965aec0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3373829f-d1d4-1fa6-ab5c-9f4d5b014cd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 507–512.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem leibniz_div (a b : K) : D (a / b) = b⁻¹ ^ 2 • (b • D a - a • D b) := by
  simp only [div_eq_mul_inv, leibniz, leibniz_inv, inv_pow, neg_smul, smul_neg, smul_smul, add_comm,
    sub_eq_add_neg, smul_add]
  rw [← inv_mul_mul_self b⁻¹, inv_inv]
  ring_nf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant3898e6486c6997547c681b0d06ae4f6244e754e02e3f735533e78491965aec0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant3898e6486c6997547c681b0d06ae4f6244e754e02e3f735533e78491965aec0d.lean#L507).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7dfda9beef09c47b4c050f5d6a5466fcbd3cea9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

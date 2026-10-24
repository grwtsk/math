# _root_.GRWTSK.Algebra.LinearAlgebra.NonUnitalSubalgebra.Variante1f3e73f8659b2645a3b22059d1bdb3eb3bf9f092068ab052605a3e80e53644e.Set.smul_mem_center

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a37452f-b57a-8206-0dd0-1ec35c52b769",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.NonUnitalSubalgebra.Variante1f3e73f8659b2645a3b22059d1bdb3eb3bf9f092068ab052605a3e80e53644e.Set.smul_mem_center",
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
  "slug": "root-grwtsk-algebra-linearalgebra-nonunitalsubalgebra-variante1f3e73f865--484c155a29065027f2c2705e",
  "source": {
    "blob": "585a20fc26ff9044fc77b4cde4884c4960695af3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1089,
    "line": 1080,
    "path": "GRWTSK/Algebra/LinearAlgebra/NonUnitalSubalgebra/Variantba02a7f38be87377c622f79ffd3c861a9da2f29bbfc50741bf65f8e22bbf78dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:484c155a29065027f2c2705ee442ad5a3eb9ef4ce40c626e1ca232d5e89f1be1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/NonUnitalSubalgebra/Variantba02a7f38be87377c622f79ffd3c861a9da2f29bbfc50741bf65f8e22bbf78dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a37452f-b57a-8206-0dd0-1ec35c52b769`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1080–1089.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.LinearAlgebra.NonUnitalSubalgebra.Variante1f3e73f8659b2645a3b22059d1bdb3eb3bf9f092068ab052605a3e80e53644e.Set.smul_mem_center (r : R) {a : A} (ha : a ∈ Set.center A) :
    r • a ∈ Set.center A where
  comm b := by rw [commute_iff_eq, mul_smul_comm, smul_mul_assoc, ha.comm]
  left_assoc b c := by rw [smul_mul_assoc, smul_mul_assoc, smul_mul_assoc, ha.left_assoc]
  right_assoc b c := by
    rw [mul_smul_comm, mul_smul_comm, mul_smul_comm, ha.right_assoc]

variable (R A) in
/-- The center of a non-unital algebra is the set of elements which commute with every element.
They form a non-unital subalgebra. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/NonUnitalSubalgebra/Variantba02a7f38be87377c622f79ffd3c861a9da2f29bbfc50741bf65f8e22bbf78dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/NonUnitalSubalgebra/Variantba02a7f38be87377c622f79ffd3c861a9da2f29bbfc50741bf65f8e22bbf78dd.lean#L1080).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `585a20fc26ff9044fc77b4cde4884c4960695af3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

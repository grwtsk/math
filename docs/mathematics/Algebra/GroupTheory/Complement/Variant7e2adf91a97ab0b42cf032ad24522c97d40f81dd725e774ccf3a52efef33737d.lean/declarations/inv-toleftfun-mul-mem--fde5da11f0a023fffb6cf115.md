# inv_toLeftFun_mul_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3672bee13135ee61960b91d7f4f8b8bf97ea9192",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 627,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7e2adf91a97ab0b42cf032ad24522c97d40f81dd725e774ccf3a52efef33737d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ecc0280f-8b08-4e6c-60d4-2a32a80e0b18",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f940701a-50e3-15b5-f7a7-d31527feaf46",
  "kind": "theorem",
  "lexical_name": "inv_toLeftFun_mul_mem",
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
  "slug": "inv-toleftfun-mul-mem--fde5da11f0a023fffb6cf115",
  "source": {
    "blob": "3672bee13135ee61960b91d7f4f8b8bf97ea9192",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 634,
    "line": 627,
    "path": "GRWTSK/Algebra/GroupTheory/Complement/Variant7e2adf91a97ab0b42cf032ad24522c97d40f81dd725e774ccf3a52efef33737d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fde5da11f0a023fffb6cf115cc41ee3b8b336108af172f58da20e397f4084b67",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Complement/Variant7e2adf91a97ab0b42cf032ad24522c97d40f81dd725e774ccf3a52efef33737d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f940701a-50e3-15b5-f7a7-d31527feaf46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 627–634.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inv_toLeftFun_mul_mem (hS : IsComplement S H) (g : G) :
    (toLeftFun hS g : G)⁻¹ * g ∈ H :=
  QuotientGroup.leftRel_apply.mp <| Quotient.exact' <| quotientGroupMk_leftQuotientEquiv _ _

@[deprecated (since := "2024-12-28")]
alias _root_.Subgroup.MemLeftTransversals.inv_toFun_mul_mem := inv_toLeftFun_mul_mem

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Complement/Variant7e2adf91a97ab0b42cf032ad24522c97d40f81dd725e774ccf3a52efef33737d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Complement/Variant7e2adf91a97ab0b42cf032ad24522c97d40f81dd725e774ccf3a52efef33737d.lean#L627).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3672bee13135ee61960b91d7f4f8b8bf97ea9192` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

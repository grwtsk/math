# IsWeierstrassDivision.unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7969dba6-89b6-e402-3d7c-6c338592e64e",
  "kind": "theorem",
  "lexical_name": "IsWeierstrassDivision.unique",
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
  "slug": "isweierstrassdivision-unique--5125de2089297fecce757c65",
  "source": {
    "blob": "59c43bbb59ec74834ac61a9c2be0611ce79a0489",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 609,
    "line": 602,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/WeierstrassPreparation/Variant1be80b2cbe43fc42a8cb36b555f0ed5ca0e231ddc410d479edfec4d108b9b160.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5125de2089297fecce757c659c53bb0d97167fa55d64352dbb7fbd9ac5dc25ee",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/WeierstrassPreparation/Variant1be80b2cbe43fc42a8cb36b555f0ed5ca0e231ddc410d479edfec4d108b9b160.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7969dba6-89b6-e402-3d7c-6c338592e64e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 602–609.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsWeierstrassDivision.unique [IsAdicComplete (IsLocalRing.maximalIdeal A) A]
    {q : A⟦X⟧} {r : A[X]}
    (H : f.IsWeierstrassDivision g q r) : q = f /ʷ g ∧ r = f %ʷ g :=
  H.elim hg (f.isWeierstrassDivision_weierstrassDiv_weierstrassMod hg)

end

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/WeierstrassPreparation/Variant1be80b2cbe43fc42a8cb36b555f0ed5ca0e231ddc410d479edfec4d108b9b160.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/WeierstrassPreparation/Variant1be80b2cbe43fc42a8cb36b555f0ed5ca0e231ddc410d479edfec4d108b9b160.lean#L602).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59c43bbb59ec74834ac61a9c2be0611ce79a0489` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

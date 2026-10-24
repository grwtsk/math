# smul_tprodCoeff_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f44a0713-7c9f-17a3-7e47-870a0a7bf3a4",
  "kind": "theorem",
  "lexical_name": "smul_tprodCoeff_aux",
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
  "slug": "smul-tprodcoeff-aux--e6512fb10a6384917d7cf434",
  "source": {
    "blob": "cba3fd966f52a3c97919797600bd09a70acef6fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 158,
    "path": "GRWTSK/Algebra/LinearAlgebra/PiTensorProduct/Variant18b420d5bcb46d7ac7dc1b838a665ed98a559ffc2883644a7ae1aaabc01c344c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6512fb10a6384917d7cf4347f2401e20a16fac2ccbd6a873cf259c3e5dc3643",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PiTensorProduct/Variant18b420d5bcb46d7ac7dc1b838a665ed98a559ffc2883644a7ae1aaabc01c344c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f44a0713-7c9f-17a3-7e47-870a0a7bf3a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smul_tprodCoeff_aux [DecidableEq ι] (z : R) (f : Π i, s i) (i : ι) (r : R) :
    tprodCoeff R z (update f i (r • f i)) = tprodCoeff R (r * z) f :=
  Quotient.sound' <| AddConGen.Rel.of _ _ <| Eqv.of_smul _ _ _ _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PiTensorProduct/Variant18b420d5bcb46d7ac7dc1b838a665ed98a559ffc2883644a7ae1aaabc01c344c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PiTensorProduct/Variant18b420d5bcb46d7ac7dc1b838a665ed98a559ffc2883644a7ae1aaabc01c344c.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cba3fd966f52a3c97919797600bd09a70acef6fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

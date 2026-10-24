# isLiouville_of_finiteDimensional

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:92601b559a80bb45d62ceaf613c82ddc25fdcd47a1f10b913cfb73a9b42d5a0c",
  "kind": "instance",
  "lexical_name": "isLiouville_of_finiteDimensional",
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
  "slug": "isliouville-of-finitedimensional--b5c980b6ef42c02baeee34dc",
  "source": {
    "blob": "af263af38ac4b4ebbfcf3db5b022fc78c059dff6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 203,
    "path": "GRWTSK/Algebra/Liouville/Variantac8769b594b363007ad3fef9dfa5daf3bcf8f570505481e6f106b988bec2dc66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b5c980b6ef42c02baeee34dc61c9546f0b274e090b9f0a0299e5e5d1229280b9",
  "verification": {
    "reference": "docs/verification/Algebra/Liouville/Variantac8769b594b363007ad3fef9dfa5daf3bcf8f570505481e6f106b988bec2dc66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:92601b559a80bb45d62ceaf613c82ddc25fdcd47a1f10b913cfb73a9b42d5a0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isLiouville_of_finiteDimensional [FiniteDimensional F K] :
    IsLiouville F K :=
  let map := IsAlgClosed.lift (M := AlgebraicClosure F) (R := F) (S := K)
  let K' := map.fieldRange
  have : FiniteDimensional F K' :=
    LinearMap.finiteDimensional_range map.toLinearMap
  let K'' := normalClosure F K' (AlgebraicClosure F)
  let B : IntermediateField F K'' := IntermediateField.restrict
    (F := K') (IntermediateField.le_normalClosure ..)
  have kequiv : K ≃ₐ[F] ↥B := (show K ≃ₐ[F] K' from AlgEquiv.ofInjectiveField map).trans
    (IntermediateField.restrict_algEquiv _)
  IsLiouville.equiv kequiv.symm

end Algebraic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Liouville/Variantac8769b594b363007ad3fef9dfa5daf3bcf8f570505481e6f106b988bec2dc66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Liouville/Variantac8769b594b363007ad3fef9dfa5daf3bcf8f570505481e6f106b988bec2dc66.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af263af38ac4b4ebbfcf3db5b022fc78c059dff6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

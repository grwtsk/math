# coe_genWeightSpaceOf_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:774ad848-293e-beb6-369e-3c50e439441d",
  "kind": "theorem",
  "lexical_name": "coe_genWeightSpaceOf_zero",
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
  "slug": "coe-genweightspaceof-zero--98e4760472620e950fd2afe5",
  "source": {
    "blob": "1703d2ca8214442d1c2fe73bedb6ce6d37b03b6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 185,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Varianted19e659e21581b9f433f108e96e4cb0bdc5f7a5afe3a06e13a73eee51a0a386.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98e4760472620e950fd2afe52e4a68277ec94c066ec7161f976c4d6194ddc191",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Varianted19e659e21581b9f433f108e96e4cb0bdc5f7a5afe3a06e13a73eee51a0a386.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:774ad848-293e-beb6-369e-3c50e439441d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_genWeightSpaceOf_zero (x : L) :
    ↑(genWeightSpaceOf M (0 : R) x) = ⨆ k, LinearMap.ker (toEnd R L M x ^ k) := by
  simp [genWeightSpaceOf, ← Module.End.iSup_genEigenspace_eq]

/-- If `M` is a representation of a nilpotent Lie algebra `L`
and `χ : L → R` is a family of scalars,
then `genWeightSpace M χ` is the intersection of the maximal generalized `χ x`-eigenspaces
of the action of `x` on `M` as `x` ranges over `L`.

It is a Lie submodule because `L` is nilpotent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Varianted19e659e21581b9f433f108e96e4cb0bdc5f7a5afe3a06e13a73eee51a0a386.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Varianted19e659e21581b9f433f108e96e4cb0bdc5f7a5afe3a06e13a73eee51a0a386.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1703d2ca8214442d1c2fe73bedb6ce6d37b03b6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

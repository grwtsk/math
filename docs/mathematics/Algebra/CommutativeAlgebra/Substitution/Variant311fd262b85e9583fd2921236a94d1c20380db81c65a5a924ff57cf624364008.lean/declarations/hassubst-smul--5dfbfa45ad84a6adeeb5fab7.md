# HasSubst.smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fdb93713-d9f4-4737-7606-4573aa5afc0f",
  "kind": "theorem",
  "lexical_name": "HasSubst.smul",
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
  "slug": "hassubst-smul--5dfbfa45ad84a6adeeb5fab7",
  "source": {
    "blob": "45f721163f2ad90e817abbd9b70c3b08de0f53bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 129,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Substitution/Variant311fd262b85e9583fd2921236a94d1c20380db81c65a5a924ff57cf624364008.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5dfbfa45ad84a6adeeb5fab783a04a86fb2e967c299a525c8fa3c1b1f2dd0e9c",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Substitution/Variant311fd262b85e9583fd2921236a94d1c20380db81c65a5a924ff57cf624364008.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fdb93713-d9f4-4737-7606-4573aa5afc0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasSubst.smul (r : MvPowerSeries τ S) {a : MvPowerSeries τ S} (ha : HasSubst a) :
    HasSubst (r • a) :=
  ha.mul_right

/-- Families of `PowerSeries` that can be substituted, as an `Ideal`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Substitution/Variant311fd262b85e9583fd2921236a94d1c20380db81c65a5a924ff57cf624364008.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Substitution/Variant311fd262b85e9583fd2921236a94d1c20380db81c65a5a924ff57cf624364008.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45f721163f2ad90e817abbd9b70c3b08de0f53bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

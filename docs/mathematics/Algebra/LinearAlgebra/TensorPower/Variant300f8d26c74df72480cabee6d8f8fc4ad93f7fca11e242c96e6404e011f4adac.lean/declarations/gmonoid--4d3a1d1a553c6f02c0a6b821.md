# gmonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e8451adccccf8bc89550d0911bdd6fe1ad8275018082300af99f210f4ae25d2e",
  "kind": "instance",
  "lexical_name": "gmonoid",
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
  "slug": "gmonoid--4d3a1d1a553c6f02c0a6b821",
  "source": {
    "blob": "a3dca84d41e278c23e9d98c479641a18752775ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 218,
    "path": "GRWTSK/Algebra/LinearAlgebra/TensorPower/Variant300f8d26c74df72480cabee6d8f8fc4ad93f7fca11e242c96e6404e011f4adac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4d3a1d1a553c6f02c0a6b821e0c33e45eeccd5d657720599fed0edbe912ad398",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TensorPower/Variant300f8d26c74df72480cabee6d8f8fc4ad93f7fca11e242c96e6404e011f4adac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e8451adccccf8bc89550d0911bdd6fe1ad8275018082300af99f210f4ae25d2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance gmonoid : GradedMonoid.GMonoid fun i => (⨂[R]^i) M :=
  { TensorPower.gMul, TensorPower.gOne with
    one_mul := fun a => gradedMonoid_eq_of_cast (zero_add _) (one_mul _)
    mul_one := fun a => gradedMonoid_eq_of_cast (add_zero _) (mul_one _)
    mul_assoc := fun a b c => gradedMonoid_eq_of_cast (add_assoc _ _ _) (mul_assoc _ _ _) }
#align tensor_power.gmonoid TensorPower.gmonoid

/-- The canonical map from `R` to `⨂[R]^0 M` corresponding to the `algebraMap` of the tensor
algebra. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TensorPower/Variant300f8d26c74df72480cabee6d8f8fc4ad93f7fca11e242c96e6404e011f4adac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TensorPower/Variant300f8d26c74df72480cabee6d8f8fc4ad93f7fca11e242c96e6404e011f4adac.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3dca84d41e278c23e9d98c479641a18752775ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

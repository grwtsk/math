# _root_.GradedMonoid.isScalarTower_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7fb0febd9322bad789a5194ea87cc42af087ac6957dd1e6a926e137dd3ecfdd5",
  "kind": "instance",
  "lexical_name": "_root_.GradedMonoid.isScalarTower_right",
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
  "slug": "root-gradedmonoid-isscalartower-right--553cecca2b65ab6316cbf8cb",
  "source": {
    "blob": "993956c18b570f2cb09880ba3e9a2db59e64bc98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 62,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Algebra/Variantf94dc644a88915e81deb86028571d01b4b10a9f4edb1e2bb0272852592f3c65f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:553cecca2b65ab6316cbf8cbb78b5fc4ff0ed52e2a3015b0160337d1af0770f1",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Algebra/Variantf94dc644a88915e81deb86028571d01b4b10a9f4edb1e2bb0272852592f3c65f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7fb0febd9322bad789a5194ea87cc42af087ac6957dd1e6a926e137dd3ecfdd5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance _root_.GradedMonoid.isScalarTower_right :
    IsScalarTower R (GradedMonoid A) (GradedMonoid A) where
  smul_assoc s x y := by
    dsimp
    rw [GAlgebra.smul_def, GAlgebra.smul_def, ← mul_assoc]

variable [DecidableEq ι]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Algebra/Variantf94dc644a88915e81deb86028571d01b4b10a9f4edb1e2bb0272852592f3c65f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Algebra/Variantf94dc644a88915e81deb86028571d01b4b10a9f4edb1e2bb0272852592f3c65f.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `993956c18b570f2cb09880ba3e9a2db59e64bc98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

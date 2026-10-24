# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eba867c7ad0adc03b96a5cf51e4c2133aabd10f523c212aba7c493e82cea5746",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--0c64eadda2f4f34c3edf9410",
  "source": {
    "blob": "7e9defbb48c1638032450166b559487811a2f7ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 55,
    "path": "GRWTSK/Algebra/AlgebraNorm/Variante73d2a4c6e01c1afd42e1d00f14c0350d58a41b7916df90ff2f6d04476a085f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0c64eadda2f4f34c3edf94106d7644d9f95634d6ed87ee5d8a7c93438eb38013",
  "verification": {
    "reference": "docs/verification/Algebra/AlgebraNorm/Variante73d2a4c6e01c1afd42e1d00f14c0350d58a41b7916df90ff2f6d04476a085f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eba867c7ad0adc03b96a5cf51e4c2133aabd10f523c212aba7c493e82cea5746`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : FunLike (AlgebraNorm R S) S ℝ where
  coe f := f.toFun
  coe_injective' f f' h := by
    simp only [AddGroupSeminorm.toFun_eq_coe, RingSeminorm.toFun_eq_coe] at h
    cases f; cases f'; congr
    simp only at h
    ext s
    erw [h]
    rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/AlgebraNorm/Variante73d2a4c6e01c1afd42e1d00f14c0350d58a41b7916df90ff2f6d04476a085f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/AlgebraNorm/Variante73d2a4c6e01c1afd42e1d00f14c0350d58a41b7916df90ff2f6d04476a085f5.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e9defbb48c1638032450166b559487811a2f7ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

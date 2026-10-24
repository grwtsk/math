# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:57b454e135514e77158f0d629b1b43e16c1108d448f169b92fe81bca1375ee10",
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
  "slug": "instance--5ea0d89d52cc1b8b096fb796",
  "source": {
    "blob": "a02fe75863af1f15b98bfe563956fe2be81d831f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 391,
    "line": 382,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variantf8e46f1424f269364f010581b3fd1725898f586a0cdc47e4d888ef833f491626.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5ea0d89d52cc1b8b096fb796e5f58e792b7f543694b3152ff5738d4d4937f60a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variantf8e46f1424f269364f010581b3fd1725898f586a0cdc47e4d888ef833f491626.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:57b454e135514e77158f0d629b1b43e16c1108d448f169b92fe81bca1375ee10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 382–391.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 75) module' {T : Type*} [Semiring R] [AddCommMonoid M] [Semiring S]
    [Module R M] [SMul S R] [Module S M] [IsScalarTower S R M] [SetLike T M] [AddSubmonoidClass T M]
    [SMulMemClass T R M] (t : T) : Module S t where
  one_smul _ := by ext; simp
  mul_smul _ _ _ := by ext; simp [mul_smul]
  smul_zero _ := by ext; simp
  zero_smul _ := by ext; simp
  add_smul _ _ _ := by ext; simp [add_smul]
  smul_add _ _ _ := by ext; simp [smul_add]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variantf8e46f1424f269364f010581b3fd1725898f586a0cdc47e4d888ef833f491626.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variantf8e46f1424f269364f010581b3fd1725898f586a0cdc47e4d888ef833f491626.lean#L382).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a02fe75863af1f15b98bfe563956fe2be81d831f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

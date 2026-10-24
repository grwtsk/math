# grading.decompose

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4d820a9d57001bcda543e1f23f6722eca608065019f2c29071827c91d574a3bf",
  "kind": "def",
  "lexical_name": "grading.decompose",
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
  "slug": "grading-decompose--e3b715acecefe8aeb89d68e9",
  "source": {
    "blob": "a46c5317696052c6f01d0aa1fe3fc91cf2cff48a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 106,
    "path": "GRWTSK/Algebra/HomogeneousPrimeNotPrime/Variantd9de189b8d1f0632c6fa95c359301bdb6b17c5153e8e95433be68127b27fe99e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e3b715acecefe8aeb89d68e9360a25e74f2c4b8fadce07622067bd4e2448ac49",
  "verification": {
    "reference": "docs/verification/Algebra/HomogeneousPrimeNotPrime/Variantd9de189b8d1f0632c6fa95c359301bdb6b17c5153e8e95433be68127b27fe99e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4d820a9d57001bcda543e1f23f6722eca608065019f2c29071827c91d574a3bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def grading.decompose : R × R →+ DirectSum Two fun i => grading R i where
  toFun zz :=
    of (grading R ·) 0 ⟨(zz.1, zz.1), rfl⟩ +
    of (grading R ·) 1 ⟨(0, zz.2 - zz.1), rfl⟩
  map_zero' := by decide
  map_add' := by
    rintro ⟨a1, b1⟩ ⟨a2, b2⟩
    rw [add_add_add_comm, ← map_add, ← map_add]
    dsimp only [Prod.mk_add_mk]
    simp_rw [add_sub_add_comm]
    rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/HomogeneousPrimeNotPrime/Variantd9de189b8d1f0632c6fa95c359301bdb6b17c5153e8e95433be68127b27fe99e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/HomogeneousPrimeNotPrime/Variantd9de189b8d1f0632c6fa95c359301bdb6b17c5153e8e95433be68127b27fe99e.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a46c5317696052c6f01d0aa1fe3fc91cf2cff48a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

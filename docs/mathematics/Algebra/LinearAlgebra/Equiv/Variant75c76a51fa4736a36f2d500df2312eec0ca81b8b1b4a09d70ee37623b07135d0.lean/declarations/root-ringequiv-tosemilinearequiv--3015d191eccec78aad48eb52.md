# _root_.RingEquiv.toSemilinearEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7341293452006fae27bcda3decd739873595d1ef88ba6fae6ee0bfce5d1c28f8",
  "kind": "def",
  "lexical_name": "_root_.RingEquiv.toSemilinearEquiv",
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
  "slug": "root-ringequiv-tosemilinearequiv--3015d191eccec78aad48eb52",
  "source": {
    "blob": "64fe564077cf686f3fdf852c99037c8fdf129487",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 591,
    "line": 575,
    "path": "GRWTSK/Algebra/LinearAlgebra/Equiv/Variant75c76a51fa4736a36f2d500df2312eec0ca81b8b1b4a09d70ee37623b07135d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3015d191eccec78aad48eb520f0e2a95ef6d4c7d8c2c34115a1f492bf6a051be",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Equiv/Variant75c76a51fa4736a36f2d500df2312eec0ca81b8b1b4a09d70ee37623b07135d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7341293452006fae27bcda3decd739873595d1ef88ba6fae6ee0bfce5d1c28f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 575–591.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.RingEquiv.toSemilinearEquiv (f : R ≃+* S) :
    haveI := RingHomInvPair.of_ringEquiv f
    haveI := RingHomInvPair.symm (↑f : R →+* S) (f.symm : S →+* R)
    R ≃ₛₗ[(↑f : R →+* S)] S :=
  haveI := RingHomInvPair.of_ringEquiv f
  haveI := RingHomInvPair.symm (↑f : R →+* S) (f.symm : S →+* R)
  { f with
    toFun := f
    map_smul' := f.map_mul }
#align ring_equiv.to_semilinear_equiv RingEquiv.toSemilinearEquiv
#align ring_equiv.to_semilinear_equiv_symm_apply RingEquiv.toSemilinearEquiv_symm_apply

variable [Semiring R₁] [Semiring R₂] [Semiring R₃]

variable [AddCommMonoid M] [AddCommMonoid M₁] [AddCommMonoid M₂]

/-- An involutive linear map is a linear equivalence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Equiv/Variant75c76a51fa4736a36f2d500df2312eec0ca81b8b1b4a09d70ee37623b07135d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Equiv/Variant75c76a51fa4736a36f2d500df2312eec0ca81b8b1b4a09d70ee37623b07135d0.lean#L575).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64fe564077cf686f3fdf852c99037c8fdf129487` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

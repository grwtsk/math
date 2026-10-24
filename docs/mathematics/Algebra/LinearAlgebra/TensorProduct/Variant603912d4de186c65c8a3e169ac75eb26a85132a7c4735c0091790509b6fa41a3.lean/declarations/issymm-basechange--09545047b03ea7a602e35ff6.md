# IsSymm.baseChange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:618164e3-4ab6-933c-906a-ea5ac5162282",
  "kind": "lemma",
  "lexical_name": "IsSymm.baseChange",
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
  "slug": "issymm-basechange--09545047b03ea7a602e35ff6",
  "source": {
    "blob": "3634079b910cce83aa5b7230232c33130313027d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 101,
    "path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant603912d4de186c65c8a3e169ac75eb26a85132a7c4735c0091790509b6fa41a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09545047b03ea7a602e35ff6b80478b2db74e4e42ecd08b5bf34bccc266d9833",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TensorProduct/Variant603912d4de186c65c8a3e169ac75eb26a85132a7c4735c0091790509b6fa41a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:618164e3-4ab6-933c-906a-ea5ac5162282`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsSymm.baseChange {B₂ : BilinForm R M₂} (hB₂ : B₂.IsSymm) : (B₂.baseChange A).IsSymm :=
  IsSymm.tmul mul_comm hB₂

end CommSemiring

section CommRing

variable [CommRing R]

variable [AddCommGroup M₁] [AddCommGroup M₂]

variable [Module R M₁] [Module R M₂]

variable [Module.Free R M₁] [Module.Finite R M₁]

variable [Module.Free R M₂] [Module.Finite R M₂]

variable [Nontrivial R]

variable (R) in
/-- `tensorDistrib` as an equivalence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TensorProduct/Variant603912d4de186c65c8a3e169ac75eb26a85132a7c4735c0091790509b6fa41a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant603912d4de186c65c8a3e169ac75eb26a85132a7c4735c0091790509b6fa41a3.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3634079b910cce83aa5b7230232c33130313027d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

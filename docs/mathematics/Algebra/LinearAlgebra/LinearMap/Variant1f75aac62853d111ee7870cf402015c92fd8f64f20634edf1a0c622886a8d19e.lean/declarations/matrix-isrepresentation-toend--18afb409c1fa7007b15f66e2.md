# Matrix.isRepresentation.toEnd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8bc20e453cb63a336bc069ac5ce6822ec55e304e40c282462d4c045223800fca",
  "kind": "def",
  "lexical_name": "Matrix.isRepresentation.toEnd",
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
  "slug": "matrix-isrepresentation-toend--18afb409c1fa7007b15f66e2",
  "source": {
    "blob": "16250022f614252f770e202bf02b618b4d8e9221",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 168,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearMap/Variant1f75aac62853d111ee7870cf402015c92fd8f64f20634edf1a0c622886a8d19e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:18afb409c1fa7007b15f66e2bc91b874477aa1f8dd36fc6e276b376d39c633e1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearMap/Variant1f75aac62853d111ee7870cf402015c92fd8f64f20634edf1a0c622886a8d19e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8bc20e453cb63a336bc069ac5ce6822ec55e304e40c282462d4c045223800fca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Matrix.isRepresentation.toEnd : Matrix.isRepresentation R b →ₐ[R] Module.End R M
    where
  toFun A := A.2.choose
  map_one' := (1 : Matrix.isRepresentation R b).2.choose_spec.eq hb Matrix.Represents.one
  map_mul' A₁ A₂ := (A₁ * A₂).2.choose_spec.eq hb (A₁.2.choose_spec.mul A₂.2.choose_spec)
  map_zero' := (0 : Matrix.isRepresentation R b).2.choose_spec.eq hb Matrix.Represents.zero
  map_add' A₁ A₂ := (A₁ + A₂).2.choose_spec.eq hb (A₁.2.choose_spec.add A₂.2.choose_spec)
  commutes' r :=
    (r • (1 : Matrix.isRepresentation R b)).2.choose_spec.eq hb (Matrix.Represents.one.smul r)
#align matrix.is_representation.to_End Matrix.isRepresentation.toEnd

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearMap/Variant1f75aac62853d111ee7870cf402015c92fd8f64f20634edf1a0c622886a8d19e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearMap/Variant1f75aac62853d111ee7870cf402015c92fd8f64f20634edf1a0c622886a8d19e.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16250022f614252f770e202bf02b618b4d8e9221` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

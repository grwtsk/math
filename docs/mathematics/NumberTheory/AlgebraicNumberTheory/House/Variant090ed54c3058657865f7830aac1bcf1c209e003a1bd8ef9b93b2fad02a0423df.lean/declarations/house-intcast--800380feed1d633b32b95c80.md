# house_intCast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b0ffa23-85f7-6c45-dcbe-d368cdb8b3fb",
  "kind": "theorem",
  "lexical_name": "house_intCast",
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
  "slug": "house-intcast--800380feed1d633b32b95c80",
  "source": {
    "blob": "c8ed24826fa9449efbaea34b87659bb52a1583a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 59,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/House/Variant090ed54c3058657865f7830aac1bcf1c209e003a1bd8ef9b93b2fad02a0423df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:800380feed1d633b32b95c807912bb0b437e69a61c5066a07cd35faaa83f97e5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/House/Variant090ed54c3058657865f7830aac1bcf1c209e003a1bd8ef9b93b2fad02a0423df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b0ffa23-85f7-6c45-dcbe-d368cdb8b3fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem house_intCast (x : ℤ) : house (x : K) = |x| := by
  simp only [house, map_intCast, Pi.intCast_def, pi_norm_const, Complex.norm_intCast, Int.cast_abs]

end

end NumberField

namespace NumberField.house

noncomputable section

variable (K)

open Module.Free Module canonicalEmbedding Matrix Finset

attribute [local instance] Matrix.seminormedAddCommGroup

section DecidableEq

variable [DecidableEq (K →+* ℂ)]

/-- `c` is defined as the product of the maximum absolute
  value of the entries of the inverse of the matrix `basisMatrix` and  `finrank ℚ K`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/House/Variant090ed54c3058657865f7830aac1bcf1c209e003a1bd8ef9b93b2fad02a0423df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/House/Variant090ed54c3058657865f7830aac1bcf1c209e003a1bd8ef9b93b2fad02a0423df.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8ed24826fa9449efbaea34b87659bb52a1583a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

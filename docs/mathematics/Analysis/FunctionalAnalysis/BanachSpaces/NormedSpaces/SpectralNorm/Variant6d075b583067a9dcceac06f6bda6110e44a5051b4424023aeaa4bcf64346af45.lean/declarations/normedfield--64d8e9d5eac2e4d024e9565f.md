# normedField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a864178e607a08e7b2eb9b8d1b727e42513f48651d7c393e5bdc3b43057fcb45",
  "kind": "def",
  "lexical_name": "normedField",
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
  "slug": "normedfield--64d8e9d5eac2e4d024e9565f",
  "source": {
    "blob": "966cc62fcc2a5f696404037c9fc864e171e85938",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 854,
    "line": 836,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SpectralNorm/Variant6d075b583067a9dcceac06f6bda6110e44a5051b4424023aeaa4bcf64346af45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:64d8e9d5eac2e4d024e9565f0519e25ad920b09757381946bd23b54e3bfccb2a",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SpectralNorm/Variant6d075b583067a9dcceac06f6bda6110e44a5051b4424023aeaa4bcf64346af45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a864178e607a08e7b2eb9b8d1b727e42513f48651d7c393e5bdc3b43057fcb45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 836–854.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def normedField : NormedField L :=
  { (inferInstance : Field L) with
    norm x := (spectralNorm K L x : ℝ)
    dist x y := (spectralNorm K L (x - y) : ℝ)
    dist_self x := by simp [sub_self, spectralNorm_zero]
    dist_comm x y := by rw [← neg_sub, spectralNorm_neg (Algebra.IsAlgebraic.isAlgebraic _)]
    dist_triangle x y z :=
      sub_add_sub_cancel x y z ▸ isNonarchimedean_spectralNorm.add_le spectralNorm_nonneg
    eq_of_dist_eq_zero hxy := by
      rw [← sub_eq_zero]
      exact (map_eq_zero_iff_eq_zero (spectralMulAlgNorm K L)).mp hxy
    dist_eq x y := by
      rw [← spectralNorm_neg, sub_eq_add_neg, neg_add, neg_neg]
      exact Algebra.IsAlgebraic.isAlgebraic (x - y)
    norm_mul x y := by simp [← spectralMulAlgNorm_def, map_mul]
    edist_dist x y := by rw [ENNReal.ofReal_eq_coe_nnreal] }

/-- `L` with the spectral norm is a `NontriviallyNormedField`. -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SpectralNorm/Variant6d075b583067a9dcceac06f6bda6110e44a5051b4424023aeaa4bcf64346af45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SpectralNorm/Variant6d075b583067a9dcceac06f6bda6110e44a5051b4424023aeaa4bcf64346af45.lean#L836).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `966cc62fcc2a5f696404037c9fc864e171e85938` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

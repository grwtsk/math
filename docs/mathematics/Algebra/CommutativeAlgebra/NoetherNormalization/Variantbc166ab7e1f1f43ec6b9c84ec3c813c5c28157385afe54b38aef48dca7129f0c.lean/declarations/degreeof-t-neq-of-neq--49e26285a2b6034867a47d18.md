# degreeOf_t_neq_of_neq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7144d050-bf14-fc34-c804-194db57058e3",
  "kind": "lemma",
  "lexical_name": "degreeOf_t_neq_of_neq",
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
  "slug": "degreeof-t-neq-of-neq--49e26285a2b6034867a47d18",
  "source": {
    "blob": "f9536f369edcc6f742ff16b677c090d3ee1ca63c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 122,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/NoetherNormalization/Variantbc166ab7e1f1f43ec6b9c84ec3c813c5c28157385afe54b38aef48dca7129f0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49e26285a2b6034867a47d18cc720306f06537798c442ef9af416d13394f3802",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/NoetherNormalization/Variantbc166ab7e1f1f43ec6b9c84ec3c813c5c28157385afe54b38aef48dca7129f0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7144d050-bf14-fc34-c804-194db57058e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma degreeOf_t_neq_of_neq (hv : v ∈ f.support) (hw : w ∈ f.support) (neq : v ≠ w) :
    (T f <| monomial v <| coeff v f).degreeOf 0 ≠
    (T f <| monomial w <| coeff w f).degreeOf 0 := by
  rw [degreeOf_zero_t _ _ <| mem_support_iff.mp hv, degreeOf_zero_t _ _ <| mem_support_iff.mp hw]
  refine sum_r_mul_neq f v w (fun i ↦ ?_) (fun i ↦ ?_) neq <;>
  exact lt_of_le_of_lt ((monomial_le_degreeOf i ‹_›).trans (degreeOf_le_totalDegree f i)) (by omega)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/NoetherNormalization/Variantbc166ab7e1f1f43ec6b9c84ec3c813c5c28157385afe54b38aef48dca7129f0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/NoetherNormalization/Variantbc166ab7e1f1f43ec6b9c84ec3c813c5c28157385afe54b38aef48dca7129f0c.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9536f369edcc6f742ff16b677c090d3ee1ca63c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

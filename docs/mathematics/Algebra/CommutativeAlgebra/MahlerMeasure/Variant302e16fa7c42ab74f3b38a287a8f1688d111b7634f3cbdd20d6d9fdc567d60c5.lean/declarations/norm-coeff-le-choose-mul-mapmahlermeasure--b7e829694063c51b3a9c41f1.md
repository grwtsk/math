# norm_coeff_le_choose_mul_mapMahlerMeasure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2728419ad1445bcdb12ee8096254dd55ccc58278",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 510,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/30/302e16fa7c42ab74f3b38a287a8f1688d111b7634f3cbdd20d6d9fdc567d60c5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b9d61b11-eb5c-c9e2-3d82-fb43732e007f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:12713335-874c-2e5a-9096-0b3e604b18d3",
  "kind": "theorem",
  "lexical_name": "norm_coeff_le_choose_mul_mapMahlerMeasure",
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
  "slug": "norm-coeff-le-choose-mul-mapmahlermeasure--b7e829694063c51b3a9c41f1",
  "source": {
    "blob": "2728419ad1445bcdb12ee8096254dd55ccc58278",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 520,
    "line": 510,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/MahlerMeasure/Variant302e16fa7c42ab74f3b38a287a8f1688d111b7634f3cbdd20d6d9fdc567d60c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7e829694063c51b3a9c41f1f4b23f3335a7830b350d1f0ea10c1abc2783c125",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/MahlerMeasure/Variant302e16fa7c42ab74f3b38a287a8f1688d111b7634f3cbdd20d6d9fdc567d60c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12713335-874c-2e5a-9096-0b3e604b18d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 510–520.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_coeff_le_choose_mul_mapMahlerMeasure (hv : Isometry v) (n : ℕ) (p : A[X]) :
    ‖p.coeff n‖ ≤ (p.natDegree).choose n * p.mapMahlerMeasure v := by
  have hv_norm : ‖p.coeff n‖ = ‖v (p.coeff n)‖ :=
    (hv.norm_map_of_map_zero (map_zero _) _).symm
  have hcoeff : ‖v (p.coeff n)‖ = ‖(p.map v).coeff n‖ := by simp
  grw [hv_norm, hcoeff, norm_coeff_le_choose_mul_mahlerMeasure,
    natDegree_map_eq_of_injective hv.injective, mapMahlerMeasure]

end Polynomial

end generic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/MahlerMeasure/Variant302e16fa7c42ab74f3b38a287a8f1688d111b7634f3cbdd20d6d9fdc567d60c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/MahlerMeasure/Variant302e16fa7c42ab74f3b38a287a8f1688d111b7634f3cbdd20d6d9fdc567d60c5.lean#L510).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2728419ad1445bcdb12ee8096254dd55ccc58278` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# Algebra.norm_one_add_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a902a412-2d84-e4b3-b3b2-953761d48569",
  "kind": "lemma",
  "lexical_name": "Algebra.norm_one_add_smul",
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
  "slug": "algebra-norm-one-add-smul--794b22e9598187ada0737b32",
  "source": {
    "blob": "5d17792ffc2b690c3d27685e4c87facbd629dc75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 22,
    "path": "GRWTSK/Algebra/NormTrace/Variant81a3a583fb0af567d74d46b4c5370ed8ab178bea997460ebca9f073b44635c39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:794b22e9598187ada0737b3274805ddeb8d24daef67123bbc708e1fd9271ea58",
  "verification": {
    "reference": "docs/verification/Algebra/NormTrace/Variant81a3a583fb0af567d74d46b4c5370ed8ab178bea997460ebca9f073b44635c39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a902a412-2d84-e4b3-b3b2-953761d48569`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Algebra.norm_one_add_smul {A B} [CommRing A] [CommRing B] [Algebra A B]
    [Module.Free A B] [Module.Finite A B] (a : A) (x : B) :
    ∃ r : A, Algebra.norm A (1 + a • x) = 1 + Algebra.trace A B x * a + r * a ^ 2 := by
  classical
  let ι := Module.Free.ChooseBasisIndex A B
  let b : Basis ι A B := Module.Free.chooseBasis _ _
  haveI : Fintype ι := inferInstance
  clear_value ι b
  simp_rw [Algebra.norm_eq_matrix_det b, Algebra.trace_eq_matrix_trace b]
  simp only [map_add, map_one, map_smul, Matrix.det_one_add_smul a]
  exact ⟨_, rfl⟩
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/NormTrace/Variant81a3a583fb0af567d74d46b4c5370ed8ab178bea997460ebca9f073b44635c39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/NormTrace/Variant81a3a583fb0af567d74d46b4c5370ed8ab178bea997460ebca9f073b44635c39.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d17792ffc2b690c3d27685e4c87facbd629dc75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

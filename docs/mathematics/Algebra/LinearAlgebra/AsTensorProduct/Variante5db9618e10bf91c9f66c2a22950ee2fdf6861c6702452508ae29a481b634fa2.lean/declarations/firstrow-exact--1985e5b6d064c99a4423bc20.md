# firstRow_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b59071fd-6240-93e7-1782-081918fe00e5",
  "kind": "lemma",
  "lexical_name": "firstRow_exact",
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
  "slug": "firstrow-exact--1985e5b6d064c99a4423bc20",
  "source": {
    "blob": "11615966bcf535215e3c8ebf2f9bd4886a739561",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 266,
    "path": "GRWTSK/Algebra/LinearAlgebra/AsTensorProduct/Variante5db9618e10bf91c9f66c2a22950ee2fdf6861c6702452508ae29a481b634fa2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1985e5b6d064c99a4423bc207bb99f7bcc9aab0dc5da7c48ab53bbf7f6abacf9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/AsTensorProduct/Variante5db9618e10bf91c9f66c2a22950ee2fdf6861c6702452508ae29a481b634fa2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b59071fd-6240-93e7-1782-081918fe00e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma firstRow_exact : (firstRow I M f).Exact where
  zero
    | 0, _ => ModuleCat.hom_ext (tens_exact I M f hf).linearMap_comp_eq_zero
    | 1, _ => ModuleCat.hom_ext (LinearMap.zero_comp _)
    | 2, _ => ModuleCat.hom_ext (LinearMap.zero_comp 0)
  exact k _ := by
    rw [ShortComplex.moduleCat_exact_iff]
    match k with
    | 0 => intro x hx; exact (tens_exact I M f hf x).mp hx
    | 1 => intro x _; exact (tens_surj I M f hf) x
    | 2 => intro _ _; exact ⟨0, rfl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/AsTensorProduct/Variante5db9618e10bf91c9f66c2a22950ee2fdf6861c6702452508ae29a481b634fa2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/AsTensorProduct/Variante5db9618e10bf91c9f66c2a22950ee2fdf6861c6702452508ae29a481b634fa2.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11615966bcf535215e3c8ebf2f9bd4886a739561` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

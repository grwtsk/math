# IsFiniteLength.of_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:edd101fc-39c2-ab86-3b5e-49b81b249d9f",
  "kind": "lemma",
  "lexical_name": "IsFiniteLength.of_surjective",
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
  "slug": "isfinitelength-of-surjective--02ac0d8bcbd8161a4f5762d5",
  "source": {
    "blob": "328ec798e02d575791b0b94e87c569fec3da9810",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 127,
    "path": "GRWTSK/Algebra/LinearAlgebra/FiniteLength/Varianta99e4edafe29d671482d503474651db67edb6354d7ea98c6deb92f955ba652df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02ac0d8bcbd8161a4f5762d5f4f978dda419470ab4bb68d2617577520eca213a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FiniteLength/Varianta99e4edafe29d671482d503474651db67edb6354d7ea98c6deb92f955ba652df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:edd101fc-39c2-ab86-3b5e-49b81b249d9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsFiniteLength.of_surjective (H : IsFiniteLength R M) (hf : Function.Surjective f) :
    IsFiniteLength R N := by
  rw [isFiniteLength_iff_isNoetherian_isArtinian] at H ⊢
  cases H
  exact ⟨isNoetherian_of_surjective f (LinearMap.range_eq_top.mpr hf),
    isArtinian_of_surjective _ f hf⟩

/- The following instances are now automatic:
example [IsSemisimpleRing R] : IsNoetherianRing R := inferInstance
example [IsSemisimpleRing R] : IsArtinianRing R := inferInstance
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FiniteLength/Varianta99e4edafe29d671482d503474651db67edb6354d7ea98c6deb92f955ba652df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FiniteLength/Varianta99e4edafe29d671482d503474651db67edb6354d7ea98c6deb92f955ba652df.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `328ec798e02d575791b0b94e87c569fec3da9810` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

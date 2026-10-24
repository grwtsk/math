# one_smul'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4f84a26306600b1ddfa9c03f56c6b33f0f90efb3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 113,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e7a3c166152e2e432e602195287c0f2214f27a7c2dfc1ee55524a099b1d50150.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:488f22ad-0c6a-284b-65bb-f07455fcba18",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:703f82d5-e449-e2d5-026d-4ddd2631e18d",
  "kind": "theorem",
  "lexical_name": "one_smul'",
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
  "slug": "one-smul--c90c350f9ed58c90a79b4e21",
  "source": {
    "blob": "4f84a26306600b1ddfa9c03f56c6b33f0f90efb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 113,
    "path": "GRWTSK/Algebra/LinearAlgebra/GradedModule/Variante7a3c166152e2e432e602195287c0f2214f27a7c2dfc1ee55524a099b1d50150.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c90c350f9ed58c90a79b4e21cdb27299a29e8be167fe536146bacf890fe29d7e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/GradedModule/Variante7a3c166152e2e432e602195287c0f2214f27a7c2dfc1ee55524a099b1d50150.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:703f82d5-e449-e2d5-026d-4ddd2631e18d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem one_smul' [DecidableEq ι] [GMonoid A] [Gmodule A M] (x : ⨁ i, M i) :
    (1 : ⨁ i, A i) • x = x := by
  suffices smulAddMonoidHom A M 1 = AddMonoidHom.id (⨁ i, M i) from FunLike.congr_fun this x
  apply DirectSum.addHom_ext; intro i xi
  rw [show (1 : DirectSum ι fun i => A i) = (of A 0) GOne.one by rfl]
  rw [smulAddMonoidHom_apply_of_of]
  exact DirectSum.of_eq_of_gradedMonoid_eq (one_smul (GradedMonoid A) <| GradedMonoid.mk i xi)

-- Porting note: renamed to mul_smul' since DirectSum.Gmodule.mul_smul already exists
-- Almost identical to the proof of `direct_sum.mul_assoc`
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/GradedModule/Variante7a3c166152e2e432e602195287c0f2214f27a7c2dfc1ee55524a099b1d50150.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/GradedModule/Variante7a3c166152e2e432e602195287c0f2214f27a7c2dfc1ee55524a099b1d50150.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f84a26306600b1ddfa9c03f56c6b33f0f90efb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

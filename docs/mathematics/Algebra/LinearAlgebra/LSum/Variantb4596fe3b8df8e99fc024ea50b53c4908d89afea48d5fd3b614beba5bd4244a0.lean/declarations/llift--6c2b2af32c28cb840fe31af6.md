# llift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:da6baff2cd8f0c5575f75a2fc2ed0de8f1bc6f608fe9dfa58a91d405ff46c510",
  "kind": "def",
  "lexical_name": "llift",
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
  "slug": "llift--6c2b2af32c28cb840fe31af6",
  "source": {
    "blob": "939a121aa57be04180e918a9c39b93efd678812a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 162,
    "path": "GRWTSK/Algebra/LinearAlgebra/LSum/Variantb4596fe3b8df8e99fc024ea50b53c4908d89afea48d5fd3b614beba5bd4244a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6c2b2af32c28cb840fe31af632fe591026f22856589fe26abf2fbf58df451fb9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LSum/Variantb4596fe3b8df8e99fc024ea50b53c4908d89afea48d5fd3b614beba5bd4244a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:da6baff2cd8f0c5575f75a2fc2ed0de8f1bc6f608fe9dfa58a91d405ff46c510`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def llift : (X → M) ≃ₗ[S] (X →₀ R) →ₗ[R] M :=
  { lift M R X with
    map_smul' := by
      intros
      dsimp
      ext
      simp only [coe_comp, Function.comp_apply, lsingle_apply, lift_apply, Pi.smul_apply,
        sum_single_index, zero_smul, one_smul, LinearMap.smul_apply] }

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LSum/Variantb4596fe3b8df8e99fc024ea50b53c4908d89afea48d5fd3b614beba5bd4244a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LSum/Variantb4596fe3b8df8e99fc024ea50b53c4908d89afea48d5fd3b614beba5bd4244a0.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `939a121aa57be04180e918a9c39b93efd678812a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

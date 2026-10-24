# toLinearMap_ofAlgEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:87bf2963-30e0-3b0f-0b73-7d7e5c5b245b",
  "kind": "lemma",
  "lexical_name": "toLinearMap_ofAlgEquiv",
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
  "slug": "tolinearmap-ofalgequiv--afb044b19fa842de0e07610e",
  "source": {
    "blob": "b988b8d4ebdab5a3b93659bf91d74b86f62ef01b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 339,
    "line": 334,
    "path": "GRWTSK/Algebra/Equiv/Variant4a35c5c282e6b06a7c69583b0efaf701a21152b81cfde2b448b044ba73033b5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:afb044b19fa842de0e07610e05678ee2567e45aafed21aa37085844424e60c10",
  "verification": {
    "reference": "docs/verification/Algebra/Equiv/Variant4a35c5c282e6b06a7c69583b0efaf701a21152b81cfde2b448b044ba73033b5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87bf2963-30e0-3b0f-0b73-7d7e5c5b245b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 334–339.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toLinearMap_ofAlgEquiv (f : A ≃ₐ[R] B) (counit_comp map_comp_comul) :
    (ofAlgEquiv f counit_comp map_comp_comul : A →ₗ[R] B) = f := rfl

set_option backward.isDefEq.respectTransparency false in
/-- Promotes a bijective bialgebra homomorphism to a bialgebra equivalence. -/
@[simps! apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Equiv/Variant4a35c5c282e6b06a7c69583b0efaf701a21152b81cfde2b448b044ba73033b5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Equiv/Variant4a35c5c282e6b06a7c69583b0efaf701a21152b81cfde2b448b044ba73033b5f.lean#L334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b988b8d4ebdab5a3b93659bf91d74b86f62ef01b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

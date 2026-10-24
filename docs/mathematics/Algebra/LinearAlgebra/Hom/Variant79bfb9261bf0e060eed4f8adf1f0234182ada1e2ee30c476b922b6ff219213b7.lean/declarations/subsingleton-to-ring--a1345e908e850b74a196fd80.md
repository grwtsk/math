# subsingleton_to_ring

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e0a0638c6afb7011925b2f3820c1ed7825b36e2ea91032a44a624a354f4dbe77",
  "kind": "instance",
  "lexical_name": "subsingleton_to_ring",
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
  "slug": "subsingleton-to-ring--a1345e908e850b74a196fd80",
  "source": {
    "blob": "985d7b766ef00deaf90e8ed4ade9fb78f1ee2608",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 295,
    "path": "GRWTSK/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a1345e908e850b74a196fd805b55d2cfc3ed6de5a5341d0c996920d177403d62",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e0a0638c6afb7011925b2f3820c1ed7825b36e2ea91032a44a624a354f4dbe77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance subsingleton_to_ring : Subsingleton (A →ₗc[R] R) :=
  ⟨fun f g => CoalgHom.ext fun x => by
    have hf := CoalgHomClass.counit_comp_apply f x
    have hg := CoalgHomClass.counit_comp_apply g x
    simp_all only [CoalgHom.toLinearMap_eq_coe, LinearMap.coe_comp, CoalgHom.coe_toLinearMap,
      Function.comp_apply, CommSemiring.counit_apply]⟩

@[ext high]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `985d7b766ef00deaf90e8ed4ade9fb78f1ee2608` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

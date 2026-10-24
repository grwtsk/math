# subsingleton_to_ring

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c90e1b4b70403aaa88971ea5d239d4b34b9ed6acf9e964b1c3dd3186239c8287",
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
  "slug": "subsingleton-to-ring--0cd0bed93f2fc21a04a19d26",
  "source": {
    "blob": "2ead4dc19bf0ccd24d8dbe1def7cfaac4885bf9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 287,
    "path": "GRWTSK/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0cd0bed93f2fc21a04a19d26b192a465d53bfa14724a1a8afa31a054031a0737",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c90e1b4b70403aaa88971ea5d239d4b34b9ed6acf9e964b1c3dd3186239c8287`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–294.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Hom/Variantd4c58b6911e0577dd40de8d0747c69f0f9e860a999f076a1cb3a80ac39befd1a.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ead4dc19bf0ccd24d8dbe1def7cfaac4885bf9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# ext_adjoin_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d57208f-568b-a4d0-ae05-24663e8dbfb8",
  "kind": "theorem",
  "lexical_name": "ext_adjoin_singleton",
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
  "slug": "ext-adjoin-singleton--8ba7c435408d99c9ce7e43e2",
  "source": {
    "blob": "3589502522d209bf34cd599093cc17d367a7806e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 748,
    "line": 737,
    "path": "GRWTSK/Algebra/Subalgebra/Variant6c59c6bbd71c65f11715f366905ee95a977f097b0cc94c3f56dd71b04ddb0f4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ba7c435408d99c9ce7e43e2a3758e59f94d5ed3568c5773d21ff0e9d4ce2ace",
  "verification": {
    "reference": "docs/verification/Algebra/Subalgebra/Variant6c59c6bbd71c65f11715f366905ee95a977f097b0cc94c3f56dd71b04ddb0f4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d57208f-568b-a4d0-ae05-24663e8dbfb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 737–748.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ext_adjoin_singleton {a : A} [FunLike F (adjoin R ({a} : Set A)) B]
    [AlgHomClass F R (adjoin R ({a} : Set A)) B] [StarHomClass F (adjoin R ({a} : Set A)) B]
    {f g : F} (h : f ⟨a, self_mem_adjoin_singleton R a⟩ = g ⟨a, self_mem_adjoin_singleton R a⟩) :
    f = g :=
  ext_adjoin fun x hx =>
    (show x = ⟨a, self_mem_adjoin_singleton R a⟩ from
          Subtype.ext <| Set.mem_singleton_iff.mp hx).symm ▸
      h

variable [FunLike F A B] [AlgHomClass F R A B] [StarHomClass F A B] (f g : F)

/-- The equalizer of two star `R`-algebra homomorphisms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Subalgebra/Variant6c59c6bbd71c65f11715f366905ee95a977f097b0cc94c3f56dd71b04ddb0f4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Subalgebra/Variant6c59c6bbd71c65f11715f366905ee95a977f097b0cc94c3f56dd71b04ddb0f4e.lean#L737).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3589502522d209bf34cd599093cc17d367a7806e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

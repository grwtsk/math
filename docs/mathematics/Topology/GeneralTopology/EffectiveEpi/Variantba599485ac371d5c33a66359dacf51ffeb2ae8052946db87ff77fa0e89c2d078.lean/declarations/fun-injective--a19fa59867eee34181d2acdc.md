# ιFun_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2fea8089-38e6-0456-6e80-e77f07605590",
  "kind": "lemma",
  "lexical_name": "ιFun_injective",
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
  "slug": "fun-injective--a19fa59867eee34181d2acdc",
  "source": {
    "blob": "a7ae75d9d20239e8a93e99ff5473e38fa61b2280",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 94,
    "path": "GRWTSK/Topology/GeneralTopology/EffectiveEpi/Variantba599485ac371d5c33a66359dacf51ffeb2ae8052946db87ff77fa0e89c2d078.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a19fa59867eee34181d2acdccde6c0dacb95074145e289e14607b26f759f505a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/EffectiveEpi/Variantba599485ac371d5c33a66359dacf51ffeb2ae8052946db87ff77fa0e89c2d078.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2fea8089-38e6-0456-6e80-e77f07605590`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ιFun_injective : (ιFun π).Injective := by
  rintro ⟨⟨a,x⟩⟩ ⟨⟨b,y⟩⟩ (h : π _ _ = π _ _)
  apply Quotient.sound'
  refine ⟨pullback (π a) (π b), ⟨⟨x,y⟩,h⟩, pullback.fst _ _, pullback.snd _ _, ?_, rfl, rfl⟩
  ext ⟨_, h⟩; exact h

/--
Implementation: The quotient of `relation π`, considered as an object of `CompHaus`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/EffectiveEpi/Variantba599485ac371d5c33a66359dacf51ffeb2ae8052946db87ff77fa0e89c2d078.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/EffectiveEpi/Variantba599485ac371d5c33a66359dacf51ffeb2ae8052946db87ff77fa0e89c2d078.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7ae75d9d20239e8a93e99ff5473e38fa61b2280` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

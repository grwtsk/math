# AnalyticAt.map_nhdsNE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba6efcbc-c777-3997-ad93-91ebe38fa687",
  "kind": "theorem",
  "lexical_name": "AnalyticAt.map_nhdsNE",
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
  "slug": "analyticat-map-nhdsne--1860d6889f5108545214c850",
  "source": {
    "blob": "d16050821aedfcb0aae8d954d325f0233bd19f99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 352,
    "line": 344,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant955819aad4794d4c13686415d02b7611d4d67f7f0734e751ba7a6c125ced06f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1860d6889f5108545214c850becb0268242b91f2c777308cd4cd025ef2888c77",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant955819aad4794d4c13686415d02b7611d4d67f7f0734e751ba7a6c125ced06f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba6efcbc-c777-3997-ad93-91ebe38fa687`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 344–352.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AnalyticAt.map_nhdsNE {x : 𝕜} {f : 𝕜 → E} (hfx : AnalyticAt 𝕜 f x)
    (h₂f : ¬EventuallyConst f (𝓝 x)) :
    (𝓝[≠] x).map f ≤ (𝓝[≠] f x) := fun _ hs ↦ mem_map.1 (preimage_of_nhdsNE hfx h₂f hs)

/-- Preimages of codiscrete sets: if `f` is analytic on a neighbourhood of `U` and not locally
constant, then the preimage of any subset codiscrete within `f '' U` is codiscrete within `U`.

Applications might want to use the theorem `Filter.codiscreteWithin.mono`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant955819aad4794d4c13686415d02b7611d4d67f7f0734e751ba7a6c125ced06f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/IsolatedZeros/Variant955819aad4794d4c13686415d02b7611d4d67f7f0734e751ba7a6c125ced06f0.lean#L344).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d16050821aedfcb0aae8d954d325f0233bd19f99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

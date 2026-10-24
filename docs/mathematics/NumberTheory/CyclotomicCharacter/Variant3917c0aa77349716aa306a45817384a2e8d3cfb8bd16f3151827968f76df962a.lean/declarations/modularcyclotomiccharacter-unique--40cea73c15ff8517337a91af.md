# modularCyclotomicCharacter'.unique'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "54ea476741d5a3beee9d20d12c30433e4ebc3040",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 197,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/3917c0aa77349716aa306a45817384a2e8d3cfb8bd16f3151827968f76df962a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f3414fcf-0d12-0472-9094-d78fc2927f58",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:48291f80-9a16-2369-74b2-0bcb2cb9ec00",
  "kind": "lemma",
  "lexical_name": "modularCyclotomicCharacter'.unique'",
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
  "slug": "modularcyclotomiccharacter-unique--40cea73c15ff8517337a91af",
  "source": {
    "blob": "54ea476741d5a3beee9d20d12c30433e4ebc3040",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 197,
    "path": "GRWTSK/NumberTheory/CyclotomicCharacter/Variant3917c0aa77349716aa306a45817384a2e8d3cfb8bd16f3151827968f76df962a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40cea73c15ff8517337a91afc955d61c652baec941523716292113fab10be626",
  "verification": {
    "reference": "docs/verification/NumberTheory/CyclotomicCharacter/Variant3917c0aa77349716aa306a45817384a2e8d3cfb8bd16f3151827968f76df962a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48291f80-9a16-2369-74b2-0bcb2cb9ec00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma modularCyclotomicCharacter'.unique' (g : L ≃+* L)
    {c : ZMod (Fintype.card { x // x ∈ rootsOfUnity n L })}
    (hc : ∀ t ∈ rootsOfUnity n L, g t = t ^ c.val) :
    c = modularCyclotomicCharacter' L n g :=
  modularCyclotomicCharacter.toFun_unique' _ _ _ hc

/-- Given a positive integer `n` and a field `L` containing `n` `n`th roots
of unity, `modularCyclotomicCharacter n` is a multiplicative homomorphism from the
automorphisms of `L` to `(ℤ/nℤ)ˣ`. It is uniquely characterised by the property that
`g(ζ)=ζ^(modularCyclotomicCharacter n g)` for `g` an automorphism of `L` and `ζ` any `n`th root
of unity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/CyclotomicCharacter/Variant3917c0aa77349716aa306a45817384a2e8d3cfb8bd16f3151827968f76df962a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/CyclotomicCharacter/Variant3917c0aa77349716aa306a45817384a2e8d3cfb8bd16f3151827968f76df962a.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54ea476741d5a3beee9d20d12c30433e4ebc3040` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

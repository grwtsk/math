# under_liesOver_of_liesOver

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0d4a880fcc46dd5feb63ef4e88b76c2f36415f7a38a4049baec503afd752722c",
  "kind": "instance",
  "lexical_name": "under_liesOver_of_liesOver",
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
  "slug": "under-liesover-of-liesover--5fe49497fa9f83eb98e628f8",
  "source": {
    "blob": "a48eb66e5f6b6ee26a6428452e16cac8c64fcbaa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 185,
    "path": "GRWTSK/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5fe49497fa9f83eb98e628f877705a1ae67a2f80c5c3d5b1f1df5a86ab155c61",
  "verification": {
    "reference": "docs/verification/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0d4a880fcc46dd5feb63ef4e88b76c2f36415f7a38a4049baec503afd752722c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance under_liesOver_of_liesOver [𝔓.LiesOver p] : (𝔓.under B).LiesOver p :=
  LiesOver.tower_bot 𝔓 (𝔓.under B) p

end CommSemiring

section CommRing

variable (A : Type*) [CommRing A] (B : Type*) [Ring B] [Nontrivial B]
  [Algebra A B] [NoZeroSMulDivisors A B] {p : Ideal A}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Over/Variant30ca533e9ad9b22559904afefe22261642b6d1658b904ea9828d33697af805ef.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a48eb66e5f6b6ee26a6428452e16cac8c64fcbaa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

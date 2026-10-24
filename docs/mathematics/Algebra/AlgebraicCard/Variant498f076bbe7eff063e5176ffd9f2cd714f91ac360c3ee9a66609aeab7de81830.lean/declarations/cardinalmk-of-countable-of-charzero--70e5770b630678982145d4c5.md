# cardinalMk_of_countable_of_charZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fec452112cc5a97efca0b5cfb1b977a33b2d1795",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 84,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/49/498f076bbe7eff063e5176ffd9f2cd714f91ac360c3ee9a66609aeab7de81830.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:863efbc2-302b-c87b-1ab8-ebce3189a69a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7a79ce27-91e2-13a4-ad8c-26802acd5d1c",
  "kind": "theorem",
  "lexical_name": "cardinalMk_of_countable_of_charZero",
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
  "slug": "cardinalmk-of-countable-of-charzero--70e5770b630678982145d4c5",
  "source": {
    "blob": "fec452112cc5a97efca0b5cfb1b977a33b2d1795",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 84,
    "path": "GRWTSK/Algebra/AlgebraicCard/Variant498f076bbe7eff063e5176ffd9f2cd714f91ac360c3ee9a66609aeab7de81830.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70e5770b630678982145d4c5f265b0581ed0ede75c5b067db0a1ef5b203f309d",
  "verification": {
    "reference": "docs/verification/Algebra/AlgebraicCard/Variant498f076bbe7eff063e5176ffd9f2cd714f91ac360c3ee9a66609aeab7de81830.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a79ce27-91e2-13a4-ad8c-26802acd5d1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cardinalMk_of_countable_of_charZero [CharZero A] :
    #{ x : A // IsAlgebraic R x } = ℵ₀ :=
  (Algebraic.countable R A).le_aleph0.antisymm (aleph0_le_cardinalMk_of_charZero R A)

@[deprecated (since := "2024-11-10")]
alias cardinal_mk_of_countable_of_charZero := cardinalMk_of_countable_of_charZero

end lift

section NonLift

variable (R A : Type u) [CommRing R] [CommRing A] [IsDomain A] [Algebra R A]
  [NoZeroSMulDivisors R A]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/AlgebraicCard/Variant498f076bbe7eff063e5176ffd9f2cd714f91ac360c3ee9a66609aeab7de81830.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/AlgebraicCard/Variant498f076bbe7eff063e5176ffd9f2cd714f91ac360c3ee9a66609aeab7de81830.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fec452112cc5a97efca0b5cfb1b977a33b2d1795` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

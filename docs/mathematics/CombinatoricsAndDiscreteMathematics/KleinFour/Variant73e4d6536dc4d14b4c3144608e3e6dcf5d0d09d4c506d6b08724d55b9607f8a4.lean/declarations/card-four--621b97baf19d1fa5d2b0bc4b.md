# card_four'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fa3b0701-151a-4df9-c1eb-a2bc81bd2799",
  "kind": "lemma",
  "lexical_name": "card_four'",
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
  "slug": "card-four--621b97baf19d1fa5d2b0bc4b",
  "source": {
    "blob": "1227fbc72300079f3c1e09fa0bbcb41605caf101",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 97,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/KleinFour/Variant73e4d6536dc4d14b4c3144608e3e6dcf5d0d09d4c506d6b08724d55b9607f8a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:621b97baf19d1fa5d2b0bc4b935c5b34dc73ba30730a0cdd29c36e51e1fc5c5a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/KleinFour/Variant73e4d6536dc4d14b4c3144608e3e6dcf5d0d09d4c506d6b08724d55b9607f8a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa3b0701-151a-4df9-c1eb-a2bc81bd2799`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma card_four' {G : Type*} [Group G] [Fintype G] [IsKleinFour G] :
    Fintype.card G = 4 :=
  Nat.card_eq_fintype_card (α := G).symm ▸ IsKleinFour.card_four

open Finset

variable {G : Type*} [Group G] [IsKleinFour G]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/KleinFour/Variant73e4d6536dc4d14b4c3144608e3e6dcf5d0d09d4c506d6b08724d55b9607f8a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/KleinFour/Variant73e4d6536dc4d14b4c3144608e3e6dcf5d0d09d4c506d6b08724d55b9607f8a4.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1227fbc72300079f3c1e09fa0bbcb41605caf101` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

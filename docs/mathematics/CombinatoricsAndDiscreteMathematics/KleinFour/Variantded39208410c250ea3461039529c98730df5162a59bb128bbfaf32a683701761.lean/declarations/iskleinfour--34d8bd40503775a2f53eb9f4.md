# IsKleinFour

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b008e408da608ab20eb9f3f173b0ad3358f8ce771b4846a6476cae923d05fadd",
  "kind": "class",
  "lexical_name": "IsKleinFour",
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
  "slug": "iskleinfour--34d8bd40503775a2f53eb9f4",
  "source": {
    "blob": "dc93c24f3342e85ccd231ba516b77613a4da33bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 52,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/KleinFour/Variantded39208410c250ea3461039529c98730df5162a59bb128bbfaf32a683701761.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:34d8bd40503775a2f53eb9f4c38905082240a671aace9cbd6639f261ea38091e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/KleinFour/Variantded39208410c250ea3461039529c98730df5162a59bb128bbfaf32a683701761.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b008e408da608ab20eb9f3f173b0ad3358f8ce771b4846a6476cae923d05fadd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsKleinFour (G : Type*) [Group G] : Prop where
  card_four : Nat.card G = 4
  exponent_two : Monoid.exponent G = 2

attribute [simp] IsKleinFour.card_four IsKleinFour.exponent_two
  IsAddKleinFour.card_four IsAddKleinFour.exponent_two

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/KleinFour/Variantded39208410c250ea3461039529c98730df5162a59bb128bbfaf32a683701761.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/KleinFour/Variantded39208410c250ea3461039529c98730df5162a59bb128bbfaf32a683701761.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc93c24f3342e85ccd231ba516b77613a4da33bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

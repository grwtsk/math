# decidableForallOfDecidableSSubsets'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bb6b86ca359623c467ec543d15ed1b18cb83f378d69a54692614e6951c79e941",
  "kind": "def",
  "lexical_name": "decidableForallOfDecidableSSubsets'",
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
  "slug": "decidableforallofdecidablessubsets--95117ee003fbf96305e47e45",
  "source": {
    "blob": "331a456b907a692ecc21ab6a0aeae1a050fc1bd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 194,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variant680aa3e565bcee666c29d5af3d621de68e1ade31c5204ad1a8e0c77d1d3ced2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:95117ee003fbf96305e47e45c69e755b5f5550577d94dfaa6b685154ac598a9a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Powerset/Variant680aa3e565bcee666c29d5af3d621de68e1ade31c5204ad1a8e0c77d1d3ced2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bb6b86ca359623c467ec543d15ed1b18cb83f378d69a54692614e6951c79e941`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def decidableForallOfDecidableSSubsets' {s : Finset α} {p : Finset α → Prop}
    (hu : ∀ (t) (_h : t ⊂ s), Decidable (p t)) : Decidable (∀ (t) (_h : t ⊂ s), p t) :=
  @Finset.decidableForallOfDecidableSSubsets _ _ _ _ hu
#align finset.decidable_forall_of_decidable_ssubsets' Finset.decidableForallOfDecidableSSubsets'

end SSubsets

section PowersetLen

/-- Given an integer `n` and a finset `s`, then `powersetLen n s` is the finset of subsets of `s`
of cardinality `n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Powerset/Variant680aa3e565bcee666c29d5af3d621de68e1ade31c5204ad1a8e0c77d1d3ced2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variant680aa3e565bcee666c29d5af3d621de68e1ade31c5204ad1a8e0c77d1d3ced2d.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `331a456b907a692ecc21ab6a0aeae1a050fc1bd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

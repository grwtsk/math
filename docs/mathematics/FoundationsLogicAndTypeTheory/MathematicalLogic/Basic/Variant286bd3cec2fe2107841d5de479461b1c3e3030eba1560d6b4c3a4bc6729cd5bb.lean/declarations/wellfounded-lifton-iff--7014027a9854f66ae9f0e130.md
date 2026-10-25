# wellFounded_liftOn₂'_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2f509c5-c14f-1182-87fb-4c47fc654525",
  "kind": "theorem",
  "lexical_name": "wellFounded_liftOn₂'_iff",
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
  "slug": "wellfounded-lifton-iff--7014027a9854f66ae9f0e130",
  "source": {
    "blob": "fb40f73a614171fb03f32ee7f47b2abbe02c63c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 504,
    "line": 491,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant286bd3cec2fe2107841d5de479461b1c3e3030eba1560d6b4c3a4bc6729cd5bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7014027a9854f66ae9f0e130c37aa9e485ac982a0385dcdcf549b212f497949c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant286bd3cec2fe2107841d5de479461b1c3e3030eba1560d6b4c3a4bc6729cd5bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2f509c5-c14f-1182-87fb-4c47fc654525`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 491–504.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wellFounded_liftOn₂'_iff {s : Setoid α} {r : α → α → Prop} {H} :
    (WellFounded fun x y : Quotient s => Quotient.liftOn₂' x y r H) ↔ WellFounded r :=
  wellFounded_lift₂_iff (H := H)
#align well_founded_lift_on₂'_iff wellFounded_liftOn₂'_iff

alias ⟨WellFounded.of_quotient_liftOn₂', WellFounded.quotient_liftOn₂'⟩ := wellFounded_liftOn₂'_iff
#align well_founded.of_quotient_lift_on₂' WellFounded.of_quotient_liftOn₂'
#align well_founded.quotient_lift_on₂' WellFounded.quotient_liftOn₂'

namespace RelEmbedding

/-- To define a relation embedding from an antisymmetric relation `r` to a reflexive relation `s`
it suffices to give a function together with a proof that it satisfies `s (f a) (f b) ↔ r a b`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant286bd3cec2fe2107841d5de479461b1c3e3030eba1560d6b4c3a4bc6729cd5bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant286bd3cec2fe2107841d5de479461b1c3e3030eba1560d6b4c3a4bc6729cd5bb.lean#L491).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb40f73a614171fb03f32ee7f47b2abbe02c63c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

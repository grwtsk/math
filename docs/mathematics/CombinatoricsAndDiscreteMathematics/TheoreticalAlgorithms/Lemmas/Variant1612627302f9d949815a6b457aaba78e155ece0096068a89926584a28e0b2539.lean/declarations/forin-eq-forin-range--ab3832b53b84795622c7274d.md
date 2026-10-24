# forIn_eq_forIn_range'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:12746a9f-6b07-dec3-b093-2e28ff60b0eb",
  "kind": "theorem",
  "lexical_name": "forIn_eq_forIn_range'",
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
  "slug": "forin-eq-forin-range--ab3832b53b84795622c7274d",
  "source": {
    "blob": "95251a47322bd316612c968efd43a500fa95bf93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 96,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant1612627302f9d949815a6b457aaba78e155ece0096068a89926584a28e0b2539.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab3832b53b84795622c7274d89891dd2d417e47d6df4e901d4fc9ade855aca21",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant1612627302f9d949815a6b457aaba78e155ece0096068a89926584a28e0b2539.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12746a9f-6b07-dec3-b093-2e28ff60b0eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem forIn_eq_forIn_range' [Monad m] (r : Std.Range)
    (init : β) (f : Nat → β → m (ForInStep β)) :
    forIn r init f = forIn (List.range' r.start r.numElems r.step) init f := by
  refine Eq.trans ?_ <| (forIn'_eq_forIn_range' r init (fun x _ => f x)).trans ?_
  · simp [forIn, forIn', Range.forIn, Range.forIn']
    suffices ∀ fuel i hl b, forIn'.loop r.start r.stop r.step (fun x _ => f x) fuel i hl b =
        forIn.loop f fuel i r.stop r.step b from (this _ ..).symm
    intro fuel; induction fuel <;> intro i hl b <;>
      unfold forIn.loop forIn'.loop <;> simp [*]
    split
    · simp [if_neg (Nat.not_le.2 ‹_›)]
    · simp [if_pos (Nat.not_lt.1 ‹_›)]
  · suffices ∀ L H, forIn (List.pmap Subtype.mk L H) init (f ·.1) = forIn L init f from this _ ..
    intro L; induction L generalizing init <;> intro H <;> simp [*]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant1612627302f9d949815a6b457aaba78e155ece0096068a89926584a28e0b2539.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant1612627302f9d949815a6b457aaba78e155ece0096068a89926584a28e0b2539.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95251a47322bd316612c968efd43a500fa95bf93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

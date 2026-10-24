# IsCyclic.exists_ofOrder_eq_natCard

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e72da4e7-0bbb-4bb9-6467-5b860c4465bc",
  "kind": "lemma",
  "lexical_name": "IsCyclic.exists_ofOrder_eq_natCard",
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
  "slug": "iscyclic-exists-oforder-eq-natcard--64ae9656f18dd368f27cf625",
  "source": {
    "blob": "072c0cbea625bb5e215ed251590b6cd50413aadd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 369,
    "line": 361,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64ae9656f18dd368f27cf62533e6d65910d305c76381d730ac0882048a99a948",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e72da4e7-0bbb-4bb9-6467-5b860c4465bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 361–369.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsCyclic.exists_ofOrder_eq_natCard [h : IsCyclic α] : ∃ g : α, orderOf g = Nat.card α := by
  obtain ⟨g, hg⟩ := h.exists_generator
  use g
  rw [← card_zpowers g, (eq_top_iff' (zpowers g)).mpr hg]
  exact Nat.card_congr (Equiv.Set.univ α)

variable (G) in
/-- A distributive action of a monoid on a finite cyclic group of order `n` factors through an
action on `ZMod n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean#L361).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `072c0cbea625bb5e215ed251590b6cd50413aadd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

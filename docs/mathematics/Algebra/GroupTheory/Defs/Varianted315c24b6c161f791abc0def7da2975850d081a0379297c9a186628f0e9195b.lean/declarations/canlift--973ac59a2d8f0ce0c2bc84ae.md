# canLift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:acacfc54227b2a685ff070732a08ea1f578a0780554ef0dd86e88f4b1e6e6b58",
  "kind": "instance",
  "lexical_name": "canLift",
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
  "slug": "canlift--973ac59a2d8f0ce0c2bc84ae",
  "source": {
    "blob": "c66021e40f6aefda3b98f207041cc0c16f83e53f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 266,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:973ac59a2d8f0ce0c2bc84ae72b66066a169753f67c59b560601cbde8215ef45",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:acacfc54227b2a685ff070732a08ea1f578a0780554ef0dd86e88f4b1e6e6b58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
instance canLift : CanLift ℚ ℤ (↑) fun q => q.den = 1 :=
  ⟨fun q hq => ⟨q.num, coe_int_num_of_den_eq_one hq⟩⟩

@[deprecated (since := "2026-06-06")] alias coe_int_inj := intCast_inj

end Casts

/--
A version of `Rat.casesOn` that uses `/` instead of `Rat.mk'`. Use as
```lean
cases r with
| div p q nonzero coprime =>
```
-/
@[elab_as_elim, cases_eliminator, induction_eliminator]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c66021e40f6aefda3b98f207041cc0c16f83e53f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

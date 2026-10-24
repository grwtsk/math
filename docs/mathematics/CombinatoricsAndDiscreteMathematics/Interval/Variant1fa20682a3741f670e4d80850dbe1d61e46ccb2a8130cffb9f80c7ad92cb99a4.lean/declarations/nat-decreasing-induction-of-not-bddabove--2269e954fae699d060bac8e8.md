# Nat.decreasing_induction_of_not_bddAbove

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:56aa625e-54e2-8630-ab34-c4823cf77ee8",
  "kind": "theorem",
  "lexical_name": "Nat.decreasing_induction_of_not_bddAbove",
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
  "slug": "nat-decreasing-induction-of-not-bddabove--2269e954fae699d060bac8e8",
  "source": {
    "blob": "7d59e6072c7bef192acd6989efc41b0090bcbfa2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 375,
    "line": 371,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant1fa20682a3741f670e4d80850dbe1d61e46ccb2a8130cffb9f80c7ad92cb99a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2269e954fae699d060bac8e80ee6a254318ca7dd60ff5b383f51232a3319403f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Interval/Variant1fa20682a3741f670e4d80850dbe1d61e46ccb2a8130cffb9f80c7ad92cb99a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56aa625e-54e2-8630-ab34-c4823cf77ee8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 371–375.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Nat.decreasing_induction_of_not_bddAbove (hP : ¬BddAbove { x | P x }) (n : ℕ) : P n :=
  let ⟨_, hm, hl⟩ := not_bddAbove_iff.1 hP n
  decreasingInduction h hl.le hm
#align nat.decreasing_induction_of_not_bdd_above Nat.decreasing_induction_of_not_bddAbove

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Interval/Variant1fa20682a3741f670e4d80850dbe1d61e46ccb2a8130cffb9f80c7ad92cb99a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant1fa20682a3741f670e4d80850dbe1d61e46ccb2a8130cffb9f80c7ad92cb99a4.lean#L371).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d59e6072c7bef192acd6989efc41b0090bcbfa2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

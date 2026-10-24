# logQuotient_cell_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a76b421-5294-93a1-7579-3a170de8ab87",
  "kind": "theorem",
  "lexical_name": "logQuotient_cell_upper",
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
  "slug": "logquotient-cell-upper--8932a1c963ce6c245773edfa",
  "source": {
    "blob": "5ea2668f3eee64d2abadca6bd0a970d685e58127",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 84,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt01/Variant66e8c6a039cea09b2367a641402745a944df1fbbdac92866bfa0746f872958fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8932a1c963ce6c245773edfa9f1d0d3bd2f0f17392cf0aca8d73783477eae18a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt01/Variant66e8c6a039cea09b2367a641402745a944df1fbbdac92866bfa0746f872958fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a76b421-5294-93a1-7579-3a170de8ab87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logQuotient_cell_upper (N : ℕ) (hN : 4 ≤ N) :
    (∫ x in (N : ℝ)..(N + 1 : ℕ), logQuotient x) ≤ logQuotient N := by
  have hanti : AntitoneOn logQuotient (Icc (N : ℝ) (N + (1 : ℕ))) :=
    logQuotient_antitone.mono (by intro x hx; exact (show (4 : ℝ) ≤ N by exact_mod_cast hN).trans hx.1)
  simpa using hanti.integral_le_sum (a := 1)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt01/Variant66e8c6a039cea09b2367a641402745a944df1fbbdac92866bfa0746f872958fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt01/Variant66e8c6a039cea09b2367a641402745a944df1fbbdac92866bfa0746f872958fb.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ea2668f3eee64d2abadca6bd0a970d685e58127` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

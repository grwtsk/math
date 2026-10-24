# mertensEndpointFourMobiusStratum_eq_backwardCross_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9787e05f-f71f-c4a9-2933-18cd45257f29",
  "kind": "theorem",
  "lexical_name": "mertensEndpointFourMobiusStratum_eq_backwardCross_iff",
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
  "slug": "mertensendpointfourmobiusstratum-eq-backwardcross-iff--1dfb2221d42675ce0535e324",
  "source": {
    "blob": "51aac37245b50e6bcb14dfc10b9d35f026a6b7da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 159,
    "path": "GRWTSK/NumberTheory/Moebius/EndpointFibreFourMobiusCollisions.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1dfb2221d42675ce0535e324b5db59e91b2cf493ea86473cb4d9034ce5fb4759",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/EndpointFibreFourMobiusCollisions.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9787e05f-f71f-c4a9-2933-18cd45257f29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertensEndpointFourMobiusStratum_eq_backwardCross_iff
    {b n a c : ℕ} (hnb : n < b) :
    mertensEndpointFourMobiusStratum b n a c = .backwardCross ↔
      a ≠ c ∧ c ≠ a + (b - n) ∧ a = c + (b - n) := by
  have _hh : 0 < b - n := Nat.sub_pos_of_lt hnb
  dsimp only [mertensEndpointFourMobiusStratum]
  repeat' split_ifs
  all_goals tauto

/-- The final stratum is exactly the absence of all three possible collision
patterns. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/EndpointFibreFourMobiusCollisions.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/EndpointFibreFourMobiusCollisions.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51aac37245b50e6bcb14dfc10b9d35f026a6b7da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# capacityPathSum_eq_terminal_sub_initial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2ad3cecb-b663-4584-e203-3b58844a0149",
  "kind": "theorem",
  "lexical_name": "capacityPathSum_eq_terminal_sub_initial",
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
  "slug": "capacitypathsum-eq-terminal-sub-initial--0218295e4c65a7c83bb8e6ea",
  "source": {
    "blob": "7f2e1928c15398fc8a531bcc90667c31999b112d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 40,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/CochainReconstruction/Variantb71c4466f7afb827e8987eef02c0c0463ce9bc7e12151a33766cfd51d86debad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0218295e4c65a7c83bb8e6eaf4dfa47f12c14fc7c88d3f1cf088fd90fdb2047e",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/CochainReconstruction/Variantb71c4466f7afb827e8987eef02c0c0463ce9bc7e12151a33766cfd51d86debad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ad3cecb-b663-4584-e203-3b58844a0149`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem capacityPathSum_eq_terminal_sub_initial
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    (capacity : PositiveCapacity Prime Coordinate)
    (path : List Prime)
    (initial : Finset Prime) :
    capacityPathSum capacity path initial =
      capacity.value (insertPath path initial) -
        capacity.value initial := by
  induction path generalizing initial with
  | nil =>
      funext coordinate
      simp [capacityPathSum, insertPath]
  | cons prime remaining induction_hypothesis =>
      rw [capacityPathSum, induction_hypothesis]
      change
        capacity.increment initial prime +
            (capacity.value
                (insertPath remaining (insert prime initial)) -
              capacity.value (insert prime initial)) =
          capacity.value
              (insertPath remaining (insert prime initial)) -
            capacity.value initial
      funext coordinate
      simp only [PositiveCapacity.increment, Pi.add_apply, Pi.sub_apply]
      ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/CochainReconstruction/Variantb71c4466f7afb827e8987eef02c0c0463ce9bc7e12151a33766cfd51d86debad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/CochainReconstruction/Variantb71c4466f7afb827e8987eef02c0c0463ce9bc7e12151a33766cfd51d86debad.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f2e1928c15398fc8a531bcc90667c31999b112d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

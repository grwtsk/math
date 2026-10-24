# Iter.step_intermediateDropWhile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4fbc5e4b0fdce7569069afbcd2572cc418fa340d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 37,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4b/4bbe0fe65b682d39cee610ff5371198de2013092344e41a765e556c51357e697.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:21732dad-5df8-fe89-a1e1-57f762a24970",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ce47473f-be7c-d1f3-4daa-b3903bfd2fc3",
  "kind": "theorem",
  "lexical_name": "Iter.step_intermediateDropWhile",
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
  "slug": "iter-step-intermediatedropwhile--43b4124ef66e94d802cd2efb",
  "source": {
    "blob": "4fbc5e4b0fdce7569069afbcd2572cc418fa340d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 37,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropWhile/Variant4bbe0fe65b682d39cee610ff5371198de2013092344e41a765e556c51357e697.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43b4124ef66e94d802cd2efb32cc27b7c8594d0027fcb169540d53636a3750df",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropWhile/Variant4bbe0fe65b682d39cee610ff5371198de2013092344e41a765e556c51357e697.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce47473f-be7c-d1f3-4daa-b3903bfd2fc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Iter.step_intermediateDropWhile {α β} [Iterator α Id β]
    {it : Iter (α := α) β} {P} {dropping} :
    (Iter.Intermediate.dropWhile P dropping it).step = (match it.step with
      | .yield it' out h =>
        if h' : dropping = true then
          match hP : P out with
          | true =>
            .skip (Intermediate.dropWhile P true it') (.dropped h h' (by simpa))
          | false =>
            .yield (Intermediate.dropWhile P false it') out (.start h h' (by simpa))
        else
          .yield (Intermediate.dropWhile P false it') out
              (.yield h (Bool.not_eq_true _ ▸ h'))
      | .skip it' h =>
        .skip (Intermediate.dropWhile P dropping it') (.skip h)
      | .done h =>
        .done (.done h)) := by
  simp [Intermediate.dropWhile_eq_dropWhile_toIterM, Iter.step, IterM.step_intermediateDropWhile]
  cases it.toIterM.step.run.inflate using PlausibleIterStep.casesOn
  · simp only [IterM.Step.toPure_yield, PlausibleIterStep.yield, toIter_toIterM, toIterM_toIter]
    split
    · split
      · split
        · simp
        · exfalso; simp_all
      · split
        · exfalso; simp_all
        · simp
    · simp
  · simp
  · simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropWhile/Variant4bbe0fe65b682d39cee610ff5371198de2013092344e41a765e556c51357e697.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropWhile/Variant4bbe0fe65b682d39cee610ff5371198de2013092344e41a765e556c51357e697.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fbc5e4b0fdce7569069afbcd2572cc418fa340d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

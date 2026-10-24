# measurable_derivWithin_Ici

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e1991cad6d5de38ffa61622884de5bbed9981ac1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 708,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c286a2860c46e457e14f75998ec7fbae95dec694346bb98a18f7506382d59ac3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:58603ae9-2dca-c701-a78c-faa02994ee2f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1d0bd0e9-b3f4-22ec-ed2f-f53195296216",
  "kind": "theorem",
  "lexical_name": "measurable_derivWithin_Ici",
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
  "slug": "measurable-derivwithin-ici--170927b9864aaf0e12b24ac5",
  "source": {
    "blob": "e1991cad6d5de38ffa61622884de5bbed9981ac1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 720,
    "line": 708,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Measurable/Variantc286a2860c46e457e14f75998ec7fbae95dec694346bb98a18f7506382d59ac3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:170927b9864aaf0e12b24ac54a74f2c60f90b66fad016745f7f92877881b8960",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Measurable/Variantc286a2860c46e457e14f75998ec7fbae95dec694346bb98a18f7506382d59ac3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d0bd0e9-b3f4-22ec-ed2f-f53195296216`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 708–720.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measurable_derivWithin_Ici [MeasurableSpace F] [BorelSpace F] :
    Measurable fun x => derivWithin f (Ici x) x := by
  refine measurable_of_isClosed fun s hs => ?_
  have :
    (fun x => derivWithin f (Ici x) x) ⁻¹' s =
      { x | DifferentiableWithinAt ℝ f (Ici x) x ∧ derivWithin f (Ici x) x ∈ s } ∪
        { x | ¬DifferentiableWithinAt ℝ f (Ici x) x } ∩ { _x | (0 : F) ∈ s } :=
    Set.ext fun x => mem_preimage.trans derivWithin_mem_iff
  rw [this]
  exact
    (measurableSet_of_differentiableWithinAt_Ici_of_isComplete _ hs.isComplete).union
      ((measurableSet_of_differentiableWithinAt_Ici _).compl.inter (MeasurableSet.const _))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Measurable/Variantc286a2860c46e457e14f75998ec7fbae95dec694346bb98a18f7506382d59ac3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Measurable/Variantc286a2860c46e457e14f75998ec7fbae95dec694346bb98a18f7506382d59ac3.lean#L708).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1991cad6d5de38ffa61622884de5bbed9981ac1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# measure_le_tsum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8b94a49cf20650d141ed91f9269580ff24d20340",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 177,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4b/4b17408e6fb0619c1b1ad421f8394095a47cd125be598876bd21a4f3c6d799a2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:76240b3a-5e7d-82f7-c4be-1d8fbde7b081",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9b96eccc-ae1c-a422-e699-f772960da784",
  "kind": "theorem",
  "lexical_name": "measure_le_tsum",
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
  "slug": "measure-le-tsum--a6e7833b4b62c90adb75e0db",
  "source": {
    "blob": "8b94a49cf20650d141ed91f9269580ff24d20340",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 177,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/VitaliFamily/Variant4b17408e6fb0619c1b1ad421f8394095a47cd125be598876bd21a4f3c6d799a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6e7833b4b62c90adb75e0db37d09eac1878c5b8814d5907345960ee2e6cac33",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/VitaliFamily/Variant4b17408e6fb0619c1b1ad421f8394095a47cd125be598876bd21a4f3c6d799a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b96eccc-ae1c-a422-e699-f772960da784`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_le_tsum [SecondCountableTopology α] : μ s ≤ ∑' x : h.index, μ (h.covering x) :=
  h.measure_le_tsum_of_absolutelyContinuous Measure.AbsolutelyContinuous.rfl
#align vitali_family.fine_subfamily_on.measure_le_tsum VitaliFamily.FineSubfamilyOn.measure_le_tsum

end FineSubfamilyOn

/-- One can enlarge a Vitali family by adding to the sets `f x` at `x` all sets which are not
contained in a `δ`-neighborhood on `x`. This does not change the local filter at a point, but it
can be convenient to get a nicer global behavior. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/VitaliFamily/Variant4b17408e6fb0619c1b1ad421f8394095a47cd125be598876bd21a4f3c6d799a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/VitaliFamily/Variant4b17408e6fb0619c1b1ad421f8394095a47cd125be598876bd21a4f3c6d799a2.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b94a49cf20650d141ed91f9269580ff24d20340` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

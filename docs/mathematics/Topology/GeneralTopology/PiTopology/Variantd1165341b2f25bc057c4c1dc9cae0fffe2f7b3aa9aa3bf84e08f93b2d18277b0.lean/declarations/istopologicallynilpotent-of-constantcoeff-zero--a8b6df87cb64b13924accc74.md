# isTopologicallyNilpotent_of_constantCoeff_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6773d34ca2f845ba6355659c260cc91361d707df",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 213,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d1/d1165341b2f25bc057c4c1dc9cae0fffe2f7b3aa9aa3bf84e08f93b2d18277b0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8c78b47f-b2bf-6d18-a34c-ba8a208e1f6b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dd5565ea-07f2-bf09-5a47-628c723e2622",
  "kind": "theorem",
  "lexical_name": "isTopologicallyNilpotent_of_constantCoeff_zero",
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
  "slug": "istopologicallynilpotent-of-constantcoeff-zero--a8b6df87cb64b13924accc74",
  "source": {
    "blob": "6773d34ca2f845ba6355659c260cc91361d707df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 213,
    "path": "GRWTSK/Topology/GeneralTopology/PiTopology/Variantd1165341b2f25bc057c4c1dc9cae0fffe2f7b3aa9aa3bf84e08f93b2d18277b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8b6df87cb64b13924accc74ada38fa966fbf4d2825ff6266b3b460d8c1f35a2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PiTopology/Variantd1165341b2f25bc057c4c1dc9cae0fffe2f7b3aa9aa3bf84e08f93b2d18277b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd5565ea-07f2-bf09-5a47-628c723e2622`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isTopologicallyNilpotent_of_constantCoeff_zero [CommSemiring R]
    {f} (hf : constantCoeff σ R f = 0) :
    Tendsto (fun n : ℕ => f ^ n) atTop (nhds 0) := by
  apply isTopologicallyNilpotent_of_constantCoeff_isNilpotent
  rw [hf]
  exact IsNilpotent.zero

/-- Assuming the base ring has a discrete topology, the powers of a `MvPowerSeries` converge to 0
iff its constant coefficient is nilpotent.
[N. Bourbaki, *Algebra {II}*, Chapter 4, §4, n°2, corollary of prop. 3][bourbaki1981]

See also `MvPowerSeries.LinearTopology.isTopologicallyNilpotent_iff_constantCoeff`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PiTopology/Variantd1165341b2f25bc057c4c1dc9cae0fffe2f7b3aa9aa3bf84e08f93b2d18277b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PiTopology/Variantd1165341b2f25bc057c4c1dc9cae0fffe2f7b3aa9aa3bf84e08f93b2d18277b0.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6773d34ca2f845ba6355659c260cc91361d707df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

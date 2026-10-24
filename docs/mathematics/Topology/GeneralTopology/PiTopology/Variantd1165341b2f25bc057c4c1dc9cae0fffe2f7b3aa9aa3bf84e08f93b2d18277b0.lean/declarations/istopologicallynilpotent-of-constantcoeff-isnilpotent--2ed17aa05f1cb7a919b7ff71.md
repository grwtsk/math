# isTopologicallyNilpotent_of_constantCoeff_isNilpotent

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
      "line": 204,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d1/d1165341b2f25bc057c4c1dc9cae0fffe2f7b3aa9aa3bf84e08f93b2d18277b0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:62a9290c-0bc1-182c-00c1-ff4159565e40",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7ef91e31-6e66-8b55-eb93-a1b9d2f6996c",
  "kind": "theorem",
  "lexical_name": "isTopologicallyNilpotent_of_constantCoeff_isNilpotent",
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
  "slug": "istopologicallynilpotent-of-constantcoeff-isnilpotent--2ed17aa05f1cb7a919b7ff71",
  "source": {
    "blob": "6773d34ca2f845ba6355659c260cc91361d707df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 204,
    "path": "GRWTSK/Topology/GeneralTopology/PiTopology/Variantd1165341b2f25bc057c4c1dc9cae0fffe2f7b3aa9aa3bf84e08f93b2d18277b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ed17aa05f1cb7a919b7ff71a9c90981a489661691f45d0fca1c3a8ae9b75d2f",
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

Occurrence: `result:7ef91e31-6e66-8b55-eb93-a1b9d2f6996c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isTopologicallyNilpotent_of_constantCoeff_isNilpotent [CommSemiring R]
    {f} (hf : IsNilpotent (constantCoeff σ R f)) :
    IsTopologicallyNilpotent f := by
  classical
  obtain ⟨m, hm⟩ := hf
  simp_rw [IsTopologicallyNilpotent, tendsto_iff_coeff_tendsto, coeff_zero]
  exact fun d ↦ tendsto_atTop_of_eventually_const fun n hn ↦
    coeff_eq_zero_of_constantCoeff_nilpotent hm hn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PiTopology/Variantd1165341b2f25bc057c4c1dc9cae0fffe2f7b3aa9aa3bf84e08f93b2d18277b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PiTopology/Variantd1165341b2f25bc057c4c1dc9cae0fffe2f7b3aa9aa3bf84e08f93b2d18277b0.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6773d34ca2f845ba6355659c260cc91361d707df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

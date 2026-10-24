# observe_phase_one_ker_eq_jacobson

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2e536bfd9c038724dd54043e00f07a55378558db",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 111,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8f1aa2d7df6cf8f78e408b8441c208e888d7b7e3fbf168d75f449c0b1dd50332.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2860eb8e-e4cb-c85c-e80c-846d10ed2e6f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:46a5d482-eaa2-5e46-e82c-ae3660cce9a0",
  "kind": "theorem",
  "lexical_name": "observe_phase_one_ker_eq_jacobson",
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
  "slug": "observe-phase-one-ker-eq-jacobson--a184eccd6fa5648eb509c346",
  "source": {
    "blob": "2e536bfd9c038724dd54043e00f07a55378558db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 111,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseCharacteristicRadical/Variant8f1aa2d7df6cf8f78e408b8441c208e888d7b7e3fbf168d75f449c0b1dd50332.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a184eccd6fa5648eb509c3463108603ff55152861324b8a8d4994fc2ff27c324",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseCharacteristicRadical/Variant8f1aa2d7df6cf8f78e408b8441c208e888d7b7e3fbf168d75f449c0b1dd50332.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46a5d482-eaa2-5e46-e82c-ae3660cce9a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem observe_phase_one_ker_eq_jacobson :
    RingHom.ker observePhaseOne.toRingHom = Ring.jacobson CharacteristicOne := by
  change RingHom.ker ((algebraMap ℂ PhaseMatrix).comp observeOne.toRingHom) = _
  rw [RingHom.ker_comp_of_injective observeOne.toRingHom
    (FaithfulSMul.algebraMap_injective ℂ PhaseMatrix)]
  exact observe_one_ker_eq_jacobson

/-- The original reference reflection is absent from the represented scalar algebra. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseCharacteristicRadical/Variant8f1aa2d7df6cf8f78e408b8441c208e888d7b7e3fbf168d75f449c0b1dd50332.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseCharacteristicRadical/Variant8f1aa2d7df6cf8f78e408b8441c208e888d7b7e3fbf168d75f449c0b1dd50332.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e536bfd9c038724dd54043e00f07a55378558db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

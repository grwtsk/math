# phaseIII_positive_not_all_comparators_separate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fc185e837776a7e01e87c26dc0eba94b301d77db",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 155,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/647b231dc97c4f1e1381955f94ee2e4a7cf16e1b931fea9a9b8d25aae370e00a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ad98474b-971a-d9aa-4b5c-4f017006c1fc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7f57f8dd-3f6e-33f3-acaf-99de37f732e9",
  "kind": "theorem",
  "lexical_name": "phaseIII_positive_not_all_comparators_separate",
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
  "slug": "phaseiii-positive-not-all-comparators-separate--464ea5e6ca32f68936558831",
  "source": {
    "blob": "fc185e837776a7e01e87c26dc0eba94b301d77db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 155,
    "path": "GRWTSK/Algebra/LinearAlgebra/FourPhaseConvolution/Variant647b231dc97c4f1e1381955f94ee2e4a7cf16e1b931fea9a9b8d25aae370e00a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:464ea5e6ca32f68936558831c6b7695b1c8965c888ecd37afb697f055d0f76a9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FourPhaseConvolution/Variant647b231dc97c4f1e1381955f94ee2e4a7cf16e1b931fea9a9b8d25aae370e00a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f57f8dd-3f6e-33f3-acaf-99de37f732e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem phaseIII_positive_not_all_comparators_separate
    (x : X) (_hsensitivity : 0 < C.phaseIIISensitivity x) :
    ¬ ∀ Q : LinearComparator U, 0 < Q.comparatorGap C.intervention x := by
  intro hall
  have hzero := hall (LinearComparator.zero : LinearComparator U)
  rw [LinearComparator.zero_comparatorGap] at hzero
  exact (lt_irrefl 0) hzero

/-- Positive Phase-III sensitivity is exactly visibility of the projected
intervention differential in the canonical Phase-II geometry. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FourPhaseConvolution/Variant647b231dc97c4f1e1381955f94ee2e4a7cf16e1b931fea9a9b8d25aae370e00a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FourPhaseConvolution/Variant647b231dc97c4f1e1381955f94ee2e4a7cf16e1b931fea9a9b8d25aae370e00a.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc185e837776a7e01e87c26dc0eba94b301d77db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

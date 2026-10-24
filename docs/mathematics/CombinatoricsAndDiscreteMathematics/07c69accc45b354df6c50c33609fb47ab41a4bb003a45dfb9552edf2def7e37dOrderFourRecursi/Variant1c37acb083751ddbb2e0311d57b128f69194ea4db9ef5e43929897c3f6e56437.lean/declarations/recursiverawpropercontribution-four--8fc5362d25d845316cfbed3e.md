# recursiveRawProperContribution_four

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e614a6e-e1ee-ebc5-6207-76d3be02f83d",
  "kind": "theorem",
  "lexical_name": "recursiveRawProperContribution_four",
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
  "slug": "recursiverawpropercontribution-four--8fc5362d25d845316cfbed3e",
  "source": {
    "blob": "4413da7f9e8ab84dfd22f300309d1d2977b0bae0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1111,
    "line": 1098,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/07c69accc45b354df6c50c33609fb47ab41a4bb003a45dfb9552edf2def7e37dOrderFourRecursi/Variant1c37acb083751ddbb2e0311d57b128f69194ea4db9ef5e43929897c3f6e56437.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8fc5362d25d845316cfbed3e84736a7e7af348718101097955125755548fc5e6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/07c69accc45b354df6c50c33609fb47ab41a4bb003a45dfb9552edf2def7e37dOrderFourRecursi/Variant1c37acb083751ddbb2e0311d57b128f69194ea4db9ef5e43929897c3f6e56437.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e614a6e-e1ee-ebc5-6207-76d3be02f83d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1098–1111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem recursiveRawProperContribution_four
    (theta : E)
    (d : Fin 4 → E) :
    directionalProperContribution
        4 (Nat.succ_pos 3)
        (F.recursiveRawCumulantFamily theta) d =
      fourthLowerCorrection (F.finiteCumulantPrefix4 theta) d := by
  rw [directionalProperContribution_four]
  simp [fourthLowerCorrection,
    F.recursiveRawCumulantFamily_one,
    F.recursiveRawCumulantFamily_two,
    F.recursiveRawCumulantFamily_three]

/-- Recursive raw cumulant recovery at order four. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/07c69accc45b354df6c50c33609fb47ab41a4bb003a45dfb9552edf2def7e37dOrderFourRecursi/Variant1c37acb083751ddbb2e0311d57b128f69194ea4db9ef5e43929897c3f6e56437.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/07c69accc45b354df6c50c33609fb47ab41a4bb003a45dfb9552edf2def7e37dOrderFourRecursi/Variant1c37acb083751ddbb2e0311d57b128f69194ea4db9ef5e43929897c3f6e56437.lean#L1098).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4413da7f9e8ab84dfd22f300309d1d2977b0bae0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

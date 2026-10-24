# valueGroup_genLTOne_eq_generator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:37855c30-8bb0-d7bc-9581-29bc31c6b027",
  "kind": "lemma",
  "lexical_name": "valueGroup_genLTOne_eq_generator",
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
  "slug": "valuegroup-genltone-eq-generator--a1132a938db8449e900eb593",
  "source": {
    "blob": "60fa34ccd11e1cebdab4022a4370d80cb18f807b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 157,
    "path": "GRWTSK/Algebra/Basic/Variant93dca27958cfd223df5fbaf8db8533157cd1bdb2edc1936bd2900b488fb10d16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1132a938db8449e900eb5932c788206667687b7274214d906a52b37b626af04",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant93dca27958cfd223df5fbaf8db8533157cd1bdb2edc1936bd2900b488fb10d16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37855c30-8bb0-d7bc-9581-29bc31c6b027`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma valueGroup_genLTOne_eq_generator : (valueGroup (.ofClass v)).genLTOne = generator v :=
  ((valueGroup (.ofClass v)).genLTOne_unique (generator_lt_one v)
      (generator_zpowers_eq_valueGroup v)).symm

section WithZeroMulInt

open WithZero

variable {v : Valuation A ℤᵐ⁰} [hv : v.IsRankOneDiscrete]

/--
The generator of a discrete valuation in `ℤᵐ⁰` that contains `exp (-1)` in its range
is equal to `exp (-1)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant93dca27958cfd223df5fbaf8db8533157cd1bdb2edc1936bd2900b488fb10d16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant93dca27958cfd223df5fbaf8db8533157cd1bdb2edc1936bd2900b488fb10d16.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60fa34ccd11e1cebdab4022a4370d80cb18f807b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

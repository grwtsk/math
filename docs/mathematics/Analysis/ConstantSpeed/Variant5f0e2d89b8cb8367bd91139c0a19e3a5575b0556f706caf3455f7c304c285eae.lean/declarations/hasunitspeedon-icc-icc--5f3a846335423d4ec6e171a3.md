# HasUnitSpeedOn.Icc_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c939c34fae203312fa993792a7bf7c0f3a9cf809",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 205,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5f/5f0e2d89b8cb8367bd91139c0a19e3a5575b0556f706caf3455f7c304c285eae.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aa20ba65-fdcc-2462-91fc-08a2d1df4f4b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:60d5461e-f4f8-2a2b-3097-79296851ff22",
  "kind": "theorem",
  "lexical_name": "HasUnitSpeedOn.Icc_Icc",
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
  "slug": "hasunitspeedon-icc-icc--5f3a846335423d4ec6e171a3",
  "source": {
    "blob": "c939c34fae203312fa993792a7bf7c0f3a9cf809",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 205,
    "path": "GRWTSK/Analysis/ConstantSpeed/Variant5f0e2d89b8cb8367bd91139c0a19e3a5575b0556f706caf3455f7c304c285eae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f3a846335423d4ec6e171a333412264fa94d6be0ec488a13d4e37e2048ba925",
  "verification": {
    "reference": "docs/verification/Analysis/ConstantSpeed/Variant5f0e2d89b8cb8367bd91139c0a19e3a5575b0556f706caf3455f7c304c285eae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60d5461e-f4f8-2a2b-3097-79296851ff22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasUnitSpeedOn.Icc_Icc {x y z : ℝ} (hfs : HasUnitSpeedOn f (Icc x y))
    (hft : HasUnitSpeedOn f (Icc y z)) : HasUnitSpeedOn f (Icc x z) :=
  HasConstantSpeedOnWith.Icc_Icc hfs hft
#align has_unit_speed_on.Icc_Icc HasUnitSpeedOn.Icc_Icc

/-- If both `f` and `f ∘ φ` have unit speed (on `t` and `s` respectively) and `φ`
monotonically maps `s` onto `t`, then `φ` is just a translation (on `s`).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ConstantSpeed/Variant5f0e2d89b8cb8367bd91139c0a19e3a5575b0556f706caf3455f7c304c285eae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ConstantSpeed/Variant5f0e2d89b8cb8367bd91139c0a19e3a5575b0556f706caf3455f7c304c285eae.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c939c34fae203312fa993792a7bf7c0f3a9cf809` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

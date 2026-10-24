# sigmoid_strictMono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "161e5e5e8b90fdeab7fec71e04c5b9395868b098",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 107,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2ab9b357529f998ed16b9ab8de056426dc157ccc6d67ca58852adfb6af48f007.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b9892e73-bb64-ef75-f7b6-f3874e76a9cb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:72e3533b-0c10-c0fb-0ed8-54c34f4bada9",
  "kind": "theorem",
  "lexical_name": "sigmoid_strictMono",
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
  "slug": "sigmoid-strictmono--2eb2c869b1b8cdbd8bf2e273",
  "source": {
    "blob": "161e5e5e8b90fdeab7fec71e04c5b9395868b098",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 107,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant2ab9b357529f998ed16b9ab8de056426dc157ccc6d67ca58852adfb6af48f007.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2eb2c869b1b8cdbd8bf2e273d5b2d089bed9fe41237df0c580bac7f9cad39637",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant2ab9b357529f998ed16b9ab8de056426dc157ccc6d67ca58852adfb6af48f007.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72e3533b-0c10-c0fb-0ed8-54c34f4bada9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sigmoid_strictMono : StrictMono sigmoid := by
  intro a b hab
  unfold sigmoid
  have ha : 0 < 1 + exp (-a) := sigmoid_denom_pos a
  have hb : 0 < 1 + exp (-b) := sigmoid_denom_pos b
  rw [div_lt_div_iff₀ ha hb]
  simp only [one_mul]
  -- Need: 1 + exp(-b) < 1 + exp(-a)
  -- i.e., exp(-b) < exp(-a)
  -- Since exp is strictly monotone and -b < -a (because a < b)
  have h : -b < -a := neg_lt_neg hab
  linarith [exp_strictMono h]

/-- Sigmoid is monotone increasing -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant2ab9b357529f998ed16b9ab8de056426dc157ccc6d67ca58852adfb6af48f007.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant2ab9b357529f998ed16b9ab8de056426dc157ccc6d67ca58852adfb6af48f007.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `161e5e5e8b90fdeab7fec71e04c5b9395868b098` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# envelope_one_lt_six

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:768580b5-b641-4cbe-1846-4e7a6b2c2432",
  "kind": "theorem",
  "lexical_name": "envelope_one_lt_six",
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
  "slug": "envelope-one-lt-six--adf71f04cd34c5e900f3ebf7",
  "source": {
    "blob": "5cda8dfe7ca44263144b03c8ee70bc6aa12d71ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 94,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/CoshEnvelope/Variant4f03f70a76b968e601060ccb0e54498021ed48893bf2b13fa6215988b3153b28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:adf71f04cd34c5e900f3ebf79f78385efb4a7aab02ea2c17570049edcab3c322",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/CoshEnvelope/Variant4f03f70a76b968e601060ccb0e54498021ed48893bf2b13fa6215988b3153b28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:768580b5-b641-4cbe-1846-4e7a6b2c2432`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem envelope_one_lt_six : envelope 1 < 6 := by
  rw [envelope_exp_formula]
  norm_num only [one_pow, div_one]
  have hn : Real.exp (-1) ≤ 1 := Real.exp_le_one_iff.mpr (by norm_num)
  linarith [Real.exp_one_lt_three]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/CoshEnvelope/Variant4f03f70a76b968e601060ccb0e54498021ed48893bf2b13fa6215988b3153b28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/CoshEnvelope/Variant4f03f70a76b968e601060ccb0e54498021ed48893bf2b13fa6215988b3153b28.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5cda8dfe7ca44263144b03c8ee70bc6aa12d71ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

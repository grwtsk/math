# seven_power_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:68c7523a-1c24-0375-5670-178dccf18522",
  "kind": "theorem",
  "lexical_name": "seven_power_hasDerivAt",
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
  "slug": "seven-power-hasderivat--623de4c0093dd68224edc85b",
  "source": {
    "blob": "04b05f8ab3725199420d8c9ff1e3f3051a5f2019",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 85,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Attempt01/Variant0a3a1a3c202502b3a7b5795231949d009d742186123f52f45264292fa000cb58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:623de4c0093dd68224edc85b454cf2fe354ae38e67b88833fa85677061a6bf65",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Attempt01/Variant0a3a1a3c202502b3a7b5795231949d009d742186123f52f45264292fa000cb58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68c7523a-1c24-0375-5670-178dccf18522`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem seven_power_hasDerivAt (s : ℂ) :
    HasDerivAt (fun s : ℂ => (7 : ℂ) ^ (1 - s))
      (-Complex.log 7 * (7 : ℂ) ^ (1 - s)) s := by
  simp_rw [cpow_def_of_ne_zero (by norm_num : (7 : ℂ) ≠ 0)]
  convert (((hasDerivAt_const s (Complex.log 7)).mul
    ((hasDerivAt_const s (1 : ℂ)).sub (hasDerivAt_id s))).cexp) using 1 <;> simp
  ring

/-- The continuous pole correction has the exact finite value log seven minus one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Attempt01/Variant0a3a1a3c202502b3a7b5795231949d009d742186123f52f45264292fa000cb58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Attempt01/Variant0a3a1a3c202502b3a7b5795231949d009d742186123f52f45264292fa000cb58.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04b05f8ab3725199420d8c9ff1e3f3051a5f2019` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

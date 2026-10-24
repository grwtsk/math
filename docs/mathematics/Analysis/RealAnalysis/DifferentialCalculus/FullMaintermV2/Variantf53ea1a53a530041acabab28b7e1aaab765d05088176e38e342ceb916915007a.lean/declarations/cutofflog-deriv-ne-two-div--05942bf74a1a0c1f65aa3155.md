# cutoffLog_deriv_ne_two_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4096041c-e7cd-1855-ba30-f404277eaee9",
  "kind": "theorem",
  "lexical_name": "cutoffLog_deriv_ne_two_div",
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
  "slug": "cutofflog-deriv-ne-two-div--05942bf74a1a0c1f65aa3155",
  "source": {
    "blob": "7289deafbfd56fd3cf9686ad5b39a6dc9546e42a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 333,
    "line": 327,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FullMaintermV2/Variantf53ea1a53a530041acabab28b7e1aaab765d05088176e38e342ceb916915007a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05942bf74a1a0c1f65aa31559d42cfd0b9659d08b259bec2405fd07fabe20eeb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FullMaintermV2/Variantf53ea1a53a530041acabab28b7e1aaab765d05088176e38e342ceb916915007a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4096041c-e7cd-1855-ba30-f404277eaee9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 327–333.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cutoffLog_deriv_ne_two_div {A : ℝ} (hA : RegularScale A) :
    deriv (fun B ↦ Real.log (vaughanCutoff B : ℝ)) A ≠ 2 / A := by
  rw [(cutoffLog_hasDerivAt_zero hA).deriv]
  have hp : (0 : ℝ) < 2 / A := div_pos (by norm_num) hA.1
  exact hp.ne'

/-- The prior derivative interface is discharged using the constructed actual M derivative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FullMaintermV2/Variantf53ea1a53a530041acabab28b7e1aaab765d05088176e38e342ceb916915007a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FullMaintermV2/Variantf53ea1a53a530041acabab28b7e1aaab765d05088176e38e342ceb916915007a.lean#L327).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7289deafbfd56fd3cf9686ad5b39a6dc9546e42a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# poleNormalized_hasDerivAt_mellin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7a49d38b-89dd-b35a-f3b0-39d9f5550b6d",
  "kind": "theorem",
  "lexical_name": "poleNormalized_hasDerivAt_mellin",
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
  "slug": "polenormalized-hasderivat-mellin--c25710724a31925512daab34",
  "source": {
    "blob": "e18621be209394c600609294fbf7407e811d4c4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 265,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMellinBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c25710724a31925512daab34f6575671be84778b597b7862501bad3510ff375f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripMellinBounds.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a49d38b-89dd-b35a-f3b0-39d9f5550b6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem poleNormalized_hasDerivAt_mellin {s : ℂ} (hs : 0 < s.re) :
    HasDerivAt poleNormalizedZeta
      (1 - ((2 * s - 1) * fractionalMellin s +
        s * (s - 1) * deriv fractionalMellin s)) s := by
  have hp : HasDerivAt (fun z : ℂ => z * (z - 1)) (2 * s - 1) s := by
    convert (hasDerivAt_id s).mul ((hasDerivAt_id s).sub_const 1) using 1 <;> ring
  have hm := (fractionalMellin_differentiableAt hs).hasDerivAt
  have hg : HasDerivAt fractionalPoleModel
      (1 - ((2 * s - 1) * fractionalMellin s +
        s * (s - 1) * deriv fractionalMellin s)) s := by
    convert (hasDerivAt_id s).sub (hp.mul hm) using 1 <;>
      simp only [fractionalPoleModel] <;> ring
  apply hg.congr_of_eventuallyEq
  have hnb : {z : ℂ | 0 < z.re} ∈ 𝓝 s :=
    (Complex.continuous_re.isOpen_preimage _ isOpen_Ioi).mem_nhds hs
  filter_upwards [hnb] with z hz using poleNormalized_eq_fractional hz

/-- An explicit whole-region derivative supplier for the normalized-source patch
constructor. B bounds complex modulus, not height alone. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripMellinBounds.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMellinBounds.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e18621be209394c600609294fbf7407e811d4c4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

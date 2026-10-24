# fifteen_odd_channel_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:87cf9b05-28e5-62d0-e630-d8bf620600d4",
  "kind": "theorem",
  "lexical_name": "fifteen_odd_channel_lower",
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
  "slug": "fifteen-odd-channel-lower--989c74793732812aafd7ed44",
  "source": {
    "blob": "20cf837eba5b85f03830dc5ff354e1bdefdc5b36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 159,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairChannels.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:989c74793732812aafd7ed4496032173b9ec7ae2c6bcf732201713cccdbca9c6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairChannels.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87cf9b05-28e5-62d0-e630-d8bf620600d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fifteen_odd_channel_lower {z : ℂ} (hx : 0 < z.re) (hx1 : z.re < 1)
    (ht : (14 : ℝ) ≤ z.im) (ht1 : z.im ≤ 15) (hoff : z.re ≠ 1/2) :
    (1 : ℝ) ≤ ‖Pair.odd poleNormalizedZeta (center z) (offset z)‖ := by
  have he := fifteen_odd_channel_bound hx hx1 ht ht1 hoff
  have ht' := norm_sub_le (Pair.odd poleNormalizedZeta (center z) (offset z))
    (Pair.odd poleNormalizedZeta (center z) (offset z)-FifteenWitness.linearPart)
  rw [sub_sub_cancel] at ht'
  linarith [FifteenWitness.linearPart_norm_lower]

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.ZeroIsolation.MirrorChannels
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairChannels.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairChannels.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20cf837eba5b85f03830dc5ff354e1bdefdc5b36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

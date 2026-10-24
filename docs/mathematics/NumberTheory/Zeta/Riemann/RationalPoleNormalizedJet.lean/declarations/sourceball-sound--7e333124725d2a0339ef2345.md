# sourceBall_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b1baa467-0774-86cb-7235-8002917a25fc",
  "kind": "theorem",
  "lexical_name": "sourceBall_sound",
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
  "slug": "sourceball-sound--7e333124725d2a0339ef2345",
  "source": {
    "blob": "a630238e699825c5b38e3732dffececf0d684e6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 143,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/RationalPoleNormalizedJet.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e333124725d2a0339ef2345196f538f6fca5343a235927a441ea566c5a2ff15",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/RationalPoleNormalizedJet.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1baa467-0774-86cb-7235-8002917a25fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceBall_sound {s : Coordinates} {N : ℕ} (hN : 1 ≤ N) (p : ℕ)
    (hs : 0 < s.1) {b : Ball}
    (hb : Holds b (PoleNormalizedEndpointJet.model N (p + 1) (toComplex s))) :
    Holds (sourceBall s N p b) (poleNormalizedZeta (toComplex s)) := by
  unfold Holds sourceBall
  have he := source_error s hN p hs
  calc
    _ ≤ ‖poleNormalizedZeta (toComplex s) - PoleNormalizedEndpointJet.model N (p + 1) (toComplex s)‖ +
        ‖PoleNormalizedEndpointJet.model N (p + 1) (toComplex s) - toComplex b.mid‖ := by
      simpa only [dist_eq_norm] using dist_triangle (poleNormalizedZeta (toComplex s))
        (PoleNormalizedEndpointJet.model N (p + 1) (toComplex s)) (toComplex b.mid)
    _ ≤ (sourceAllowance s N p : ℝ) + (b.rad : ℝ) := add_le_add he hb
    _ = _ := by push_cast; ring

end GRWTSK.RiemannHypothesis.RationalPoleNormalizedJet
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/RationalPoleNormalizedJet.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/RationalPoleNormalizedJet.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a630238e699825c5b38e3732dffececf0d684e6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

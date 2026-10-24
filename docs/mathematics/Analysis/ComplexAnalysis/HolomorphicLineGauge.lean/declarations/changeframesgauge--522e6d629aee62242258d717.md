# changeFramesGauge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0023cec006626d23888c37c8c54deffbb84c258c98c12a70f2b6fe304200d78e",
  "kind": "def",
  "lexical_name": "changeFramesGauge",
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
  "slug": "changeframesgauge--522e6d629aee62242258d717",
  "source": {
    "blob": "02bce81ab498f01b07b51b41e21eed45bcc2e742",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 222,
    "path": "GRWTSK/Analysis/Complex/HolomorphicLineGauge.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:522e6d629aee62242258d71781e932461a2b0b23e607fb5937f8aedf189a3404",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/HolomorphicLineGauge.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0023cec006626d23888c37c8c54deffbb84c258c98c12a70f2b6fe304200d78e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def changeFramesGauge (C : Cocycle D) (h : ∀ i, (HolomorphicSection (D.U i))ˣ) :
    Gauge C (changeFrames C h) where
  frame := h
  compatible := by
    intro i j x hi hj
    rw [C.scalar_apply i j x hi hj, (changeFrames C h).scalar_apply i j x hi hj]
    change unitValue (h j) ⟨x.1, hj⟩ *
        (C.transition i j : Section (D.overlap i j)) ⟨x.1, hi, hj⟩ =
      (unitValue (h j) ⟨x.1, hj⟩ *
        (C.transition i j : Section (D.overlap i j)) ⟨x.1, hi, hj⟩ *
        unitValue (h i)⁻¹ ⟨x.1, hi⟩) * unitValue (h i) ⟨x.1, hi⟩
    simp only [mul_assoc, unitValue_inv_mul, mul_one]

end Construction
end
end GRWTSK.Analysis.Complex.HolomorphicLineGauge
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/HolomorphicLineGauge.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/HolomorphicLineGauge.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02bce81ab498f01b07b51b41e21eed45bcc2e742` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

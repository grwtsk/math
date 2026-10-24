# old_check_implies_choiceCheck

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a0ced413-23fe-ca45-9ce9-8ef416b7ddcf",
  "kind": "theorem",
  "lexical_name": "old_check_implies_choiceCheck",
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
  "slug": "old-check-implies-choicecheck--d2b70c79f80a4236f2af9a78",
  "source": {
    "blob": "2564a62cd4dc91a81e5a0e46016c59338bd1af15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 41,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripChannelChoice.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2b70c79f80a4236f2af9a781b52150433bfdfd839dfa08d203694ac20606080",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripChannelChoice.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0ced413-23fe-ca45-9ce9-8ef416b7ddcf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem old_check_implies_choiceCheck {W : Packet} {C : Config}
    (hcheck : W.check C=true) : W.choiceCheck C=true := by
  obtain ⟨hc,hh,hD,hD1,he0,he1,hs,hv,hd,ha,hend⟩ := (W.check_iff C).mp hcheck
  apply (W.choiceCheck_iff C).mpr
  refine ⟨hc,hh,hD,hD1,he0,he1,hs,hv,hd,?_⟩
  by_contra hn
  have he : W.lowerEven ≤ W.valueError := by
    by_contra h
    exact hn (Or.inl (lt_of_not_ge h))
  have ho : W.lowerOdd ≤ W.secantError := by
    by_contra h
    exact hn (Or.inr (lt_of_not_ge h))
  have he2 := pow_le_pow_left₀ W.bounds.1.lower_nonneg he 2
  have ho2 := pow_le_pow_left₀ W.bounds.2.lower_nonneg ho 2
  have hw := mul_nonpos_of_nonneg_of_nonpos (sq_nonneg W.offsetRadius)
    (sub_nonpos.mpr ho2)
  unfold constantGap slopeGap at hend
  nlinarith

/-- A channel selected by a rational guard is nonzero for the ACTUAL source.
An inaccurate unused channel is not subtracted from its strict margin. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripChannelChoice.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripChannelChoice.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2564a62cd4dc91a81e5a0e46016c59338bd1af15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

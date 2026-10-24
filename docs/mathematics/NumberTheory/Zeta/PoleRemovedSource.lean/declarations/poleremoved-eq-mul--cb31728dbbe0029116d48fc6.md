# poleRemoved_eq_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7e482272-ce5f-db32-74d6-1431e6f82215",
  "kind": "theorem",
  "lexical_name": "poleRemoved_eq_mul",
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
  "slug": "poleremoved-eq-mul--cb31728dbbe0029116d48fc6",
  "source": {
    "blob": "8959749460d0259144bbcd780f268e3898184bbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 132,
    "path": "GRWTSK/NumberTheory/Zeta/PoleRemovedSource.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb31728dbbe0029116d48fc679aa40b6ca123efd268f554f52e13a657321c164",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/PoleRemovedSource.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e482272-ce5f-db32-74d6-1431e6f82215`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem poleRemoved_eq_mul {s : ℂ} (hs : s ≠ 1) :
    poleRemoved s=(s-1)*riemannZeta s := by
  have h1 : 1-s ≠ 0 := sub_ne_zero.mpr (Ne.symm hs)
  have halg : numerator s=(s-1)*(s*completedRiemannZeta₀ s-1-s/(1-s)) := by
    unfold numerator
    field_simp [h1]; ring
  rw [riemannZeta_eq_mul_completedRiemannZeta₀, ← denominator_eq_classical,
    ← mul_div_assoc, ← halg]
  rfl

/-- The pole coordinate is obtained by a punctured limit, not 0*zeta(1). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Zeta/PoleRemovedSource.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/PoleRemovedSource.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8959749460d0259144bbcd780f268e3898184bbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

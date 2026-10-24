# mirrorPairing_positive_iff_fixed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a9c739e8-5845-2675-2d5e-d76793e687e3",
  "kind": "theorem",
  "lexical_name": "mirrorPairing_positive_iff_fixed",
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
  "slug": "mirrorpairing-positive-iff-fixed--448a68578cef8a862f8bad67",
  "source": {
    "blob": "ed37ce2c3a960815f2c81bf372cab25ef8d8edc1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 40,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/MirrorPairingCriterion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:448a68578cef8a862f8bad670e8e3a2533b65bef18a28fc0805586e83b54049f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/MirrorPairingCriterion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9c739e8-5845-2675-2d5e-d76793e687e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mirrorPairing_positive_iff_fixed {Z : Type*} (mirror : Z → Z) :
    (∀ v : MirrorTest mirror, 0 ≤ mirrorPairingForm v v) ↔
      ∀ z : Z, mirror z = z := by
  constructor
  · intro hpositive z
    by_contra hnot
    let hostile : MirrorTest mirror :=
      { point := z
        left := 1
        right := -1
        fixed_consistency := by
          intro hfixed
          exact (hnot hfixed).elim }
    have hhostile := hpositive hostile
    norm_num [hostile, mirrorPairingForm] at hhostile
  · intro hfixed v
    have hsame : v.left = v.right := v.fixed_consistency (hfixed v.point)
    rw [mirrorPairingForm, hsame]
    nlinarith [sq_nonneg v.right]

/-- Critical-line reflection acting on the exact subtype of nontrivial zeta zeros. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/MirrorPairingCriterion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/MirrorPairingCriterion.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed37ce2c3a960815f2c81bf372cab25ef8d8edc1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

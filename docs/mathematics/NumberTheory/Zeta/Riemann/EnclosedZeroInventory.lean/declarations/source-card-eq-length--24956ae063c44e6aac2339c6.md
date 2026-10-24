# source_card_eq_length

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a6bbda2-ba3e-2a97-efed-0b1f2e1e949d",
  "kind": "theorem",
  "lexical_name": "source_card_eq_length",
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
  "slug": "source-card-eq-length--24956ae063c44e6aac2339c6",
  "source": {
    "blob": "64e6b0ebe0a1923f8fc0d89f65bdb3942e32487b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 134,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/EnclosedZeroInventory.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24956ae063c44e6aac2339c6c2026fd76133932f58ea9f130373dfaf535dc9d8",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/EnclosedZeroInventory.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a6bbda2-ba3e-2a97-efed-0b1f2e1e949d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_card_eq_length {family : List Member} {T : ℚ} {d : CoordinateData}
    (hgeom : checkGeometry family T d = true) (hloc : LocalWitnesses family d)
    (hcount : heightCount (T : ℝ) ≤ recordMass family) :
    (heightHead (T : ℝ)).card = family.length := by
  classical
  obtain ⟨e, _, _⟩ := exists_canonical_equiv hgeom hloc hcount
  have hc := Fintype.card_congr e
  simpa only [Fintype.card_coe, Finset.card_range] using hc.symm

/-- Complete correspondence and strict separation derive uniqueness in each closed disk.
The geometric height guard ensures every possible competing actual zero is in the head. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/EnclosedZeroInventory.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/EnclosedZeroInventory.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64e6b0ebe0a1923f8fc0d89f65bdb3942e32487b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

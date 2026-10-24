# Rectangle.west_east_union

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd8c9bb3-7fd3-4a40-c88f-f58ad528a54b",
  "kind": "theorem",
  "lexical_name": "Rectangle.west_east_union",
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
  "slug": "rectangle-west-east-union--b3ceb242eb33d462a9d74acc",
  "source": {
    "blob": "8448980c5c8be5b8a0bbfddcb687e6d2f8ee535d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 153,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRationalCover.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3ceb242eb33d462a9d74acc53912172087ac35299416307dccb99e674c03ae0",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripRationalCover.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd8c9bb3-7fd3-4a40-c88f-f58ad528a54b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Rectangle.west_east_union (b : Rectangle) {cut : ℚ}
    (hc : b.left ≤ cut ∧ cut ≤ b.right) :
    (b.west cut).carrier ∪ (b.east cut).carrier = b.carrier := by
  have hl : (b.left : ℝ) ≤ (cut : ℝ) := by exact_mod_cast hc.1
  have hr : (cut : ℝ) ≤ (b.right : ℝ) := by exact_mod_cast hc.2
  ext z
  constructor
  · rintro (hz | hz)
    · exact ⟨hz.1, hz.2.1.trans hr, hz.2.2⟩
    · exact ⟨hl.trans hz.1, hz.2.1, hz.2.2⟩
  · intro hz
    rcases le_total z.re (cut : ℝ) with h | h
    · exact Or.inl ⟨hz.1, h, hz.2.2⟩
    · exact Or.inr ⟨h, hz.2.1, hz.2.2⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripRationalCover.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRationalCover.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8448980c5c8be5b8a0bbfddcb687e6d2f8ee535d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# A_card_upper_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d01857da-119d-489c-0052-037d79241b1a",
  "kind": "theorem",
  "lexical_name": "A_card_upper_bound",
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
  "slug": "a-card-upper-bound--1a5a2b23c9b6184539defef1",
  "source": {
    "blob": "412bda2c6033ec9cdb3e9e3a51690b8053a6a6cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 152,
    "path": "GRWTSK/Algebra/Imo1998Q2/Variant9f3bba1627a9d75c40d898fc69fd724ffb032897caa0bcf44fd13a62fde99e9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a5a2b23c9b6184539defef1fb308fc8b31b21b37df86d8b4de547377db8c345",
  "verification": {
    "reference": "docs/verification/Algebra/Imo1998Q2/Variant9f3bba1627a9d75c40d898fc69fd724ffb032897caa0bcf44fd13a62fde99e9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d01857da-119d-489c-0052-037d79241b1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem A_card_upper_bound {k : ℕ}
    (hk : ∀ p : JudgePair J, p.Distinct → (agreedContestants r p).card ≤ k) :
    (A r).card ≤ k * (Fintype.card J * Fintype.card J - Fintype.card J) := by
  change _ ≤ k * (Finset.card _ * Finset.card _ - Finset.card _)
  classical
  rw [← Finset.offDiag_card]
  apply Finset.card_le_mul_card_image_of_maps_to (A_maps_to_offDiag_judgePair r)
  intro p hp
  have hp' : p.Distinct := by grind
  rw [← A_fibre_over_judgePair_card r hp']; apply hk; exact hp'

end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Imo1998Q2/Variant9f3bba1627a9d75c40d898fc69fd724ffb032897caa0bcf44fd13a62fde99e9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Imo1998Q2/Variant9f3bba1627a9d75c40d898fc69fd724ffb032897caa0bcf44fd13a62fde99e9a.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `412bda2c6033ec9cdb3e9e3a51690b8053a6a6cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

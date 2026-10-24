# canonicalFourFamilyEnergy_young

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:69934345-0e07-fa34-6e35-ed77dc91d1a0",
  "kind": "theorem",
  "lexical_name": "canonicalFourFamilyEnergy_young",
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
  "slug": "canonicalfourfamilyenergy-young--eb96fd1079803764ee63d6bb",
  "source": {
    "blob": "a89118b81caacde46b59dabc28039d273aa64f79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 18,
    "path": "GRWTSK/NumberTheory/Moebius/CanonicalFourFamilySharpResidualFrame.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb96fd1079803764ee63d6bb88caff6e45176918f27ae0500a9fda812e4e4817",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CanonicalFourFamilySharpResidualFrame.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69934345-0e07-fa34-6e35-ed77dc91d1a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem canonicalFourFamilyEnergy_young (X : ℕ)
    (f g : CanonicalFourFamilyRealPacket) (t : ℝ) :
    t * (1 - t) * canonicalFourFamilyAmbientSourceEnergy X (f + g) ≤
      (1 - t) * canonicalFourFamilyAmbientSourceEnergy X f +
        t * canonicalFourFamilyAmbientSourceEnergy X g := by
  unfold canonicalFourFamilyAmbientSourceEnergy
  simp only [Finset.mul_sum, ← Finset.sum_add_distrib]
  apply Finset.sum_le_sum
  intro F _
  apply Finset.sum_le_sum
  intro c _
  change t * (1 - t) * (f F c + g F c) ^ 2 ≤ _
  nlinarith [sq_nonneg ((1 - t) * f F c - t * g F c)]

/-- The optimal scalar Young estimate for a strictly positive relative
squared residual. No quantitative reconstruction premise is discharged here. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CanonicalFourFamilySharpResidualFrame.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CanonicalFourFamilySharpResidualFrame.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a89118b81caacde46b59dabc28039d273aa64f79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

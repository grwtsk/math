# pairBasisExpansion_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f213e5d-75df-686a-1b29-10ade78b73d2",
  "kind": "theorem",
  "lexical_name": "pairBasisExpansion_eq",
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
  "slug": "pairbasisexpansion-eq--0da409d02f0ceb844bb7f2da",
  "source": {
    "blob": "e84bf4ecdb7ae722c6830669a28ddddf0694301f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 51,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PrimeThetaPairBasisSaturation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0da409d02f0ceb844bb7f2da2f619194369028b7207036eb07b0d0b34fd25c3d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PrimeThetaPairBasisSaturation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f213e5d-75df-686a-1b29-10ade78b73d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pairBasisExpansion_eq
    (s : Finset α) (kernel : α → α → ℝ)
    {p q : α} (hp : p ∈ s) (hq : q ∈ s) :
    pairBasisExpansion s kernel p q = kernel p q := by
  unfold pairBasisExpansion
  calc
    (∑ i ∈ s, ∑ j ∈ s,
        kernel i j * pairBasisLeftDelta i p *
          pairBasisRightDelta j q)
        = ∑ i ∈ s, if i = p then kernel p q else 0 := by
          apply Finset.sum_congr rfl
          intro i hi
          by_cases hip : i = p
          · subst i
            simp only [pairBasisLeftDelta, pairBasisRightDelta, mul_one, mul_ite, mul_zero]
            simp [hq]
          · simp [pairBasisLeftDelta, pairBasisRightDelta, hip]
    _ = kernel p q := by
      simp [hp]

/-- Absolute contribution of the canonical pair basis at one target pair. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PrimeThetaPairBasisSaturation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PrimeThetaPairBasisSaturation.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e84bf4ecdb7ae722c6830669a28ddddf0694301f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

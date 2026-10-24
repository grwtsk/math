# center_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3aa47584-9e82-600e-8803-6e27f91169c8",
  "kind": "theorem",
  "lexical_name": "center_eq_top",
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
  "slug": "center-eq-top--de5cb943cb5557ca49ee72c3",
  "source": {
    "blob": "f577c30bc1d21977047eaf1bc6807a37d0c75c79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 146,
    "path": "GRWTSK/Algebra/LittleWedderburn/Varianta1da3b46e3f2ed8b96119a313033357f1eaf4c4b3fc63658d7be84597ed949d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de5cb943cb5557ca49ee72c38e9744cb10d1cb7891cd64e231f9a9f0f8eb96dc",
  "verification": {
    "reference": "docs/verification/Algebra/LittleWedderburn/Varianta1da3b46e3f2ed8b96119a313033357f1eaf4c4b3fc63658d7be84597ed949d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3aa47584-9e82-600e-8803-6e27f91169c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem center_eq_top [Finite D] : Subring.center D = ⊤ := by
  classical
  cases nonempty_fintype D
  induction' hn : Fintype.card D using Nat.strong_induction_on with n IH generalizing D
  apply InductionHyp.center_eq_top
  intro R hR x y hx hy
  suffices (⟨y, hy⟩ : R) ∈ Subring.center R by
    rw [Subring.mem_center_iff] at this
    simpa using this ⟨x, hx⟩
  let R_dr : DivisionRing R := Fintype.divisionRingOfIsDomain R
  rw [IH (Fintype.card R) _ R inferInstance rfl]
  · trivial
  rw [← hn, ← Subring.card_top D]
  convert Set.card_lt_card hR

end LittleWedderburn

open LittleWedderburn

/-- A finite division ring is a field. See `Finite.isDomain_to_isField` and
`Fintype.divisionRingOfIsDomain` for more general statements, but these create data, and therefore
may cause diamonds if used improperly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LittleWedderburn/Varianta1da3b46e3f2ed8b96119a313033357f1eaf4c4b3fc63658d7be84597ed949d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LittleWedderburn/Varianta1da3b46e3f2ed8b96119a313033357f1eaf4c4b3fc63658d7be84597ed949d3.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f577c30bc1d21977047eaf1bc6807a37d0c75c79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

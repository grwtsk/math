# coreGrowingShiftQuarticDepthMultiplicity_le_depthCard

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fbcbfa81-988f-5ec5-37c8-f308d7d81775",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftQuarticDepthMultiplicity_le_depthCard",
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
  "slug": "coregrowingshiftquarticdepthmultiplicity-le-depthcard--989436b13f6d6da60f267099",
  "source": {
    "blob": "2900466330bd9dc4213f1ed7ed0b8f88865cf4d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 197,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticMultiplicityBox.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:989436b13f6d6da60f267099fe92a72ffdac8d0996701f72ce47e7910cd2dc97",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftQuarticMultiplicityBox.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fbcbfa81-988f-5ec5-37c8-f308d7d81775`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftQuarticDepthMultiplicity_le_depthCard
    (j : ℕ) (q : CoreGrowingShiftQuarticBoxIndex) :
    coreGrowingShiftQuarticDepthMultiplicity j q ≤
      (coreLongDeepDepths j).card := by
  classical
  let F := (coreGrowingShiftQuarticActiveCells j).filter
    (fun x => coreGrowingShiftQuarticActiveCellBoxIndex j x = q)
  change F.card ≤ (coreLongDeepDepths j).card
  refine Finset.card_le_card_of_injOn (fun x => x.1) ?_ ?_
  · intro x hx
    have hactive := (Finset.mem_filter.mp hx).1
    simp only [coreGrowingShiftQuarticActiveCells,
      Finset.mem_sigma] at hactive
    exact hactive.1
  · intro x hx y hy hdepth
    have hxq := (Finset.mem_filter.mp hx).2
    have hyq := (Finset.mem_filter.mp hy).2
    rcases x with ⟨tx, ⟨kx, ⟨dx, ax⟩⟩⟩
    rcases y with ⟨ty, ⟨ky, ⟨dy, ay⟩⟩⟩
    simp only at hdepth
    subst ty
    have hindices :
        (harmonicShiftLower j tx + kx, dx, ax) =
          (harmonicShiftLower j tx + ky, dy, ay) := by
      exact hxq.trans hyq.symm
    simp only [Prod.mk.injEq] at hindices
    rcases hindices with ⟨hh, hd, ha⟩
    have hk : kx = ky := by omega
    subst ky
    subst dy
    subst ay
    rfl

/-- Coarse deterministic multiplicity bound by the right dyadic scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftQuarticMultiplicityBox.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticMultiplicityBox.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2900466330bd9dc4213f1ed7ed0b8f88865cf4d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

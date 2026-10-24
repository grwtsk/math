# finite_shifted_sum_eq_actual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a4994790-2d3d-b8b9-2f25-1369f2b1d1ad",
  "kind": "theorem",
  "lexical_name": "finite_shifted_sum_eq_actual",
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
  "slug": "finite-shifted-sum-eq-actual--73256b26030ae0b1edcb7635",
  "source": {
    "blob": "678c51b448b46a24b6cc330d0a13096a7242c3fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 68,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ProperPowerAssembly/Variantea3fb884beb897f658d0e179a8536dc66b99826fcc21218cb9bc2623bbcd0a82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73256b26030ae0b1edcb76359eded3fe4fc335f4412ab715bc209cebe35c2a0e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ProperPowerAssembly/Variantea3fb884beb897f658d0e179a8536dc66b99826fcc21218cb9bc2623bbcd0a82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4994790-2d3d-b8b9-2f25-1369f2b1d1ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_shifted_sum_eq_actual (t : ℝ) :
    (∑ pk ∈ shiftedInventory ⌊Real.exp t⌋₊, powerWeight pk.1 pk.2) =
      actualProperPowerClosedPrefix t := by
  unfold actualProperPowerClosedPrefix
  apply sum_bij (fun pk _ => (pk.1.val,pk.2+2))
  · intro pk hpk
    apply (mem_inventory_iff _ _ _).mpr
    exact ⟨pk.1.property,by omega,(mem_shiftedInventory_iff _ pk.1 pk.2).mp hpk⟩
  · intro x _ y _ heq
    have hp : x.1.val = y.1.val := congrArg Prod.fst heq
    have hk : x.2+2 = y.2+2 := congrArg Prod.snd heq
    exact Prod.ext (Subtype.ext hp) (by omega)
  · intro pk hpk
    obtain ⟨hp,hk,hpow⟩ := (mem_inventory_iff _ _ _).mp hpk
    have he : pk.2-2+2 = pk.2 := by omega
    refine ⟨(⟨pk.1,hp⟩,pk.2-2),?_,?_⟩
    · apply (mem_shiftedInventory_iff _ _ _).mpr
      simpa only [he] using hpow
    · exact Prod.ext rfl he
  · intro pk _
    rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ProperPowerAssembly/Variantea3fb884beb897f658d0e179a8536dc66b99826fcc21218cb9bc2623bbcd0a82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ProperPowerAssembly/Variantea3fb884beb897f658d0e179a8536dc66b99826fcc21218cb9bc2623bbcd0a82.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `678c51b448b46a24b6cc330d0a13096a7242c3fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

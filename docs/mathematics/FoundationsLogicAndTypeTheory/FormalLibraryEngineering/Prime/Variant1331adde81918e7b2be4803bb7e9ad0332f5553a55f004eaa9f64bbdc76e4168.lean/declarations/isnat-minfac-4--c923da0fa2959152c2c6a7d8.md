# isNat_minFac_4

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5767acce-89a1-1d72-13ce-8cc4e968fc89",
  "kind": "theorem",
  "lexical_name": "isNat_minFac_4",
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
  "slug": "isnat-minfac-4--c923da0fa2959152c2c6a7d8",
  "source": {
    "blob": "cf1f3761caa0fd5cf17b4354045e71fb2e58dbb4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 115,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variant1331adde81918e7b2be4803bb7e9ad0332f5553a55f004eaa9f64bbdc76e4168.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c923da0fa2959152c2c6a7d82d3bbd5e6586f0efd4e0fe99d1fb780e12b8cfc9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variant1331adde81918e7b2be4803bb7e9ad0332f5553a55f004eaa9f64bbdc76e4168.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5767acce-89a1-1d72-13ce-8cc4e968fc89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isNat_minFac_4 : {n n' k : ℕ} →
    IsNat n n' → MinFacHelper n' k → (k * k).ble n' = false → IsNat (minFac n) n'
  | n, _, k, ⟨rfl⟩, h1, h2 => by
    refine ⟨(Nat.prime_def_minFac.mp ?_).2⟩
    rw [Nat.prime_def_le_sqrt]
    refine ⟨h1.one_lt, fun m hm hmn h2mn ↦ ?_⟩
    exact lt_irrefl m <| calc
      m ≤ sqrt n   := hmn
      _ < k        := sqrt_lt.mpr (ble_eq_false.mp h2)
      _ ≤ n.minFac := h1.2.2
      _ ≤ m        := Nat.minFac_le_of_dvd hm h2mn

/-- The `norm_num` extension which identifies expressions of the form `minFac n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variant1331adde81918e7b2be4803bb7e9ad0332f5553a55f004eaa9f64bbdc76e4168.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Variant1331adde81918e7b2be4803bb7e9ad0332f5553a55f004eaa9f64bbdc76e4168.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf1f3761caa0fd5cf17b4354045e71fb2e58dbb4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

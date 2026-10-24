# χ₈'_int_eq_if_mod_eight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb13dbec-2e64-3dbe-6529-42bab4fbde64",
  "kind": "theorem",
  "lexical_name": "χ₈'_int_eq_if_mod_eight",
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
  "slug": "int-eq-if-mod-eight--b537f0d7b57a7792cade4404",
  "source": {
    "blob": "61d09373058dece78edfa4e5e37ae19b00c53369",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 178,
    "path": "GRWTSK/NumberTheory/ZModChar/Variant37f06313f859222e11d670ee8309af20a8a773ea1431e92d73b65b95f9b71c8d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b537f0d7b57a7792cade44046a607b0f5790280c2d766ad3490a0bcb42383a8b",
  "verification": {
    "reference": "docs/verification/NumberTheory/ZModChar/Variant37f06313f859222e11d670ee8309af20a8a773ea1431e92d73b65b95f9b71c8d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb13dbec-2e64-3dbe-6529-42bab4fbde64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem χ₈'_int_eq_if_mod_eight (n : ℤ) :
    χ₈' n = if n % 2 = 0 then 0 else if n % 8 = 1 ∨ n % 8 = 3 then 1 else -1 := by
  have help :
    ∀ m : ℤ, 0 ≤ m → m < 8 → χ₈' m = if m % 2 = 0 then 0 else if m = 1 ∨ m = 3 then 1 else -1 := by
    decide
  rw [← Int.emod_emod_of_dvd n (by omega : (2 : ℤ) ∣ 8), ← ZMod.intCast_mod n 8]
  exact help (n % 8) (Int.emod_nonneg n (by omega)) (Int.emod_lt_abs n (by omega))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/ZModChar/Variant37f06313f859222e11d670ee8309af20a8a773ea1431e92d73b65b95f9b71c8d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ZModChar/Variant37f06313f859222e11d670ee8309af20a8a773ea1431e92d73b65b95f9b71c8d.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61d09373058dece78edfa4e5e37ae19b00c53369` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

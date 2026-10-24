# greenMeshPhase_ne_one_of_nonaliasing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d563303-27fb-9047-4dad-d01087e4f262",
  "kind": "theorem",
  "lexical_name": "greenMeshPhase_ne_one_of_nonaliasing",
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
  "slug": "greenmeshphase-ne-one-of-nonaliasing--0a16f4765b690a81235002db",
  "source": {
    "blob": "a9c26f20943b98381d8e239b89728a2184e954dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 39,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenMeshPhase.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a16f4765b690a81235002db2bbb67f7117fe54963e000ad6d6544a1fa38c2a7",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenMeshPhase.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d563303-27fb-9047-4dad-d01087e4f262`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem greenMeshPhase_ne_one_of_nonaliasing
    {X : ℕ} (hX : 1 ≤ X) {k : ℤ}
    (hk : GreenMeshNonaliasing X k) :
    greenMeshPhase X k ≠ 1 := by
  intro h
  unfold GreenMeshNonaliasing GreenMeshAliasing at hk
  unfold greenMeshPhase at h
  have hexp :
      Complex.exp (-2 * Real.pi * Complex.I * (k : ℂ) / (X : ℂ)) = 1 := h
  rw [Complex.exp_eq_one_iff] at hexp
  obtain ⟨m, hm⟩ := hexp
  have hX0 : (X : ℤ) ≠ 0 := by omega
  have : k = (X : ℤ) * (-m) := by
    apply_fun fun z : ℂ => z / (2 * Real.pi * Complex.I) at hm
    field_simp [Real.pi_ne_zero] at hm
    exact_mod_cast hm
  exact hk ⟨-m, by simpa [mul_comm] using this⟩

/-- Exact finite geometric partial sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenMeshPhase.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenMeshPhase.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9c26f20943b98381d8e239b89728a2184e954dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

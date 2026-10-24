# superpolynomialDecay_iff_zpow_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:69ce9d66-03b4-4226-6e14-9a704b7aecf2",
  "kind": "theorem",
  "lexical_name": "superpolynomialDecay_iff_zpow_tendsto_zero",
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
  "slug": "superpolynomialdecay-iff-zpow-tendsto-zero--af8e3877da78ab4c7162f12b",
  "source": {
    "blob": "e63dcbbbee2e75a0b0371c6a4a75a198ce3a1b94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 221,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variant9e0c9c4f80a5c69dc636434044e48f46714844f37467aad2df1daf6989aeda03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af8e3877da78ab4c7162f12bcdf17149a1c03267f84a244c65c194cc83057b39",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variant9e0c9c4f80a5c69dc636434044e48f46714844f37467aad2df1daf6989aeda03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69ce9d66-03b4-4226-6e14-9a704b7aecf2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem superpolynomialDecay_iff_zpow_tendsto_zero (hk : Tendsto k l atTop) :
    SuperpolynomialDecay l k f ↔ ∀ z : ℤ, Tendsto (fun a : α => k a ^ z * f a) l (𝓝 0) := by
  refine ⟨fun h z => ?_, fun h n => by simpa only [zpow_natCast] using h (n : ℤ)⟩
  by_cases hz : 0 ≤ z
  · unfold Tendsto
    lift z to ℕ using hz
    simpa using h z
  · have : Tendsto (fun a => k a ^ z) l (𝓝 0) :=
      Tendsto.comp (tendsto_zpow_atTop_zero (not_le.1 hz)) hk
    have h : Tendsto f l (𝓝 0) := by simpa using h 0
    exact zero_mul (0 : β) ▸ this.mul h

variable {f}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variant9e0c9c4f80a5c69dc636434044e48f46714844f37467aad2df1daf6989aeda03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variant9e0c9c4f80a5c69dc636434044e48f46714844f37467aad2df1daf6989aeda03.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e63dcbbbee2e75a0b0371c6a4a75a198ce3a1b94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# subpolynomialDeepLongHarmonicRemainderPacket_of_core

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:04dc0c28-4b2d-a679-a41b-fa2713071ef0",
  "kind": "theorem",
  "lexical_name": "subpolynomialDeepLongHarmonicRemainderPacket_of_core",
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
  "slug": "subpolynomialdeeplongharmonicremainderpacket-of-core--286beed61287d9b1c2455215",
  "source": {
    "blob": "5d3626a03c6979a18430215d285f4405e6f98eaa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 279,
    "path": "GRWTSK/NumberTheory/Moebius/MertensTerminalShortStripPayment.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:286beed61287d9b1c24552158f2f49ed67e682753650257b542b8e7b5fa5f250",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/MertensTerminalShortStripPayment.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04dc0c28-4b2d-a679-a41b-fa2713071ef0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subpolynomialDeepLongHarmonicRemainderPacket_of_core
    (hCore : SubpolynomialCoreLongDeepRemainderPacket) :
    SubpolynomialDeepLongHarmonicRemainderPacket := by
  intro δ hδ
  obtain ⟨Cterminal, hCterminal, hterminal⟩ :=
    subpolynomialTerminalShortDeepRemainderPacket δ hδ
  obtain ⟨Ccore, hCcore, hcore⟩ := hCore δ hδ
  refine ⟨Cterminal + Ccore, add_nonneg hCterminal hCcore, ?_⟩
  intro j
  rw [deepLongRemainder_eq_terminalShort_add_core]
  calc
    terminalShortDeepRemainderPacket j +
        coreLongDeepRemainderPacket j ≤
      |terminalShortDeepRemainderPacket j| +
        coreLongDeepRemainderPacket j := by
      exact add_le_add (le_abs_self _) le_rfl
    _ ≤ Cterminal * (((2 ^ j : ℕ) : ℝ) ^ δ) +
        Ccore * (((2 ^ j : ℕ) : ℝ) ^ δ) := by
      exact add_le_add (hterminal j) (hcore j)
    _ = (Cterminal + Ccore) *
        (((2 ^ j : ℕ) : ℝ) ^ δ) := by ring

/-- Conditional RH endpoint from the genuine core supplier. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/MertensTerminalShortStripPayment.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/MertensTerminalShortStripPayment.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d3626a03c6979a18430215d285f4405e6f98eaa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:48a148de85cab1440b6536187c8dabc44aff74bf3952f0211768c2a67578c0d7",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--be2104df9f6cf9cf4bb6d77c",
  "source": {
    "blob": "bfa2673d99e0dd562314ef4e7897a94442cc12aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 136,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variantd9a9f9cba1849b93ab2338e08903dfabe8420af7a2a3adbb0bf412f23b0a8e65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:be2104df9f6cf9cf4bb6d77c5e9e856ae1d6935a481f1437297ae75e925d038b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variantd9a9f9cba1849b93ab2338e08903dfabe8420af7a2a3adbb0bf412f23b0a8e65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:48a148de85cab1440b6536187c8dabc44aff74bf3952f0211768c2a67578c0d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (a b : ℕ) (h2 : ((a + b + 0 : ℕ) : ℤ) = 10) :
    ((a + b : ℕ) : ℤ) = 10 := by
  push_cast
  push_cast [Int.add_zero] at h2
  exact h2

-- example {x : ℚ} : ((x + 42 : ℚ) : ℝ) = x + 42 := by push_cast

namespace ennreal

-- --TODO: debug
-- lemma half_lt_self_bis {a : ℝ≥0∞} (hz : a ≠ 0) (ht : a ≠ ⊤) : a / 2 < a :=
-- begin
--   lift a to nnreal using ht,
--   have h : (2 : ℝ≥0∞) = ((2 : nnreal) : ℝ≥0∞), from rfl,
--   have h' : (2 : nnreal) ≠ 0, from _root_.two_ne_zero',
--   rw [h, ← coe_div h', coe_lt_coe], -- `norm_cast` fails to apply `coe_div`
--   norm_cast at hz,
--   exact nnreal.half_lt_self hz
-- end

end ennreal

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variantd9a9f9cba1849b93ab2338e08903dfabe8420af7a2a3adbb0bf412f23b0a8e65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormCast/Variantd9a9f9cba1849b93ab2338e08903dfabe8420af7a2a3adbb0bf412f23b0a8e65.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfa2673d99e0dd562314ef4e7897a94442cc12aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

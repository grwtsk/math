# le_coe_nat_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6dbc43b5-6412-7b4b-4987-a4ebaa2a6f04",
  "kind": "theorem",
  "lexical_name": "le_coe_nat_sub",
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
  "slug": "le-coe-nat-sub--a134ae3019811d56f824df7b",
  "source": {
    "blob": "c71a1bdfa95877b901912ec1ddc4f93c7fcfd0de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 35,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Lemmas/Variantf5b0d55b2ba439f7b4866cc6d5b953d474d7dfbf1a84b990e3b10cb6fab5bdb0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a134ae3019811d56f824df7bcf0e234e13172a6f9956a8b8be883ef09b450e5f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Lemmas/Variantf5b0d55b2ba439f7b4866cc6d5b953d474d7dfbf1a84b990e3b10cb6fab5bdb0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6dbc43b5-6412-7b4b-4987-a4ebaa2a6f04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_coe_nat_sub (m n : ℕ) : (m - n : ℤ) ≤ ↑(m - n : ℕ) := by
  by_cases h : m ≥ n
  · exact le_of_eq (Int.ofNat_sub h).symm
  · simp [le_of_not_ge h, ofNat_le]
#align int.le_coe_nat_sub Int.le_coe_nat_sub

/-! ### `succ` and `pred` -/


-- Porting note: simp can prove this @[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Lemmas/Variantf5b0d55b2ba439f7b4866cc6d5b953d474d7dfbf1a84b990e3b10cb6fab5bdb0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Lemmas/Variantf5b0d55b2ba439f7b4866cc6d5b953d474d7dfbf1a84b990e3b10cb6fab5bdb0.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c71a1bdfa95877b901912ec1ddc4f93c7fcfd0de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

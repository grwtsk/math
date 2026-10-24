# psi_le_nat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "510488f3941415f627465d15fa4a39fddfb20d78",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 40,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c6/c6588e3a5cdb050e8f562cf8362856537f6e69b59d7962e870fe89040a9cb519.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:412890aa-7523-2523-e1a3-cedb9d8c4ab6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1b2c3b6e-2b4f-3253-3945-3b41bda9d004",
  "kind": "theorem",
  "lexical_name": "psi_le_nat",
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
  "slug": "psi-le-nat--2e0a753f470e9ed5fdf0cb00",
  "source": {
    "blob": "510488f3941415f627465d15fa4a39fddfb20d78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 40,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/PNTPsiBounds/Variantc6588e3a5cdb050e8f562cf8362856537f6e69b59d7962e870fe89040a9cb519.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e0a753f470e9ed5fdf0cb000802d4186e1969f7d80345620dd838614332f574",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/PNTPsiBounds/Variantc6588e3a5cdb050e8f562cf8362856537f6e69b59d7962e870fe89040a9cb519.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b2c3b6e-2b4f-3253-3945-3b41bda9d004`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem psi_le_nat (N : ℕ) (hN : 0 < N) (hNb : N ≤ 11723) :
    psi (N : ℝ) ≤ 111 / 100 * N := by
  have h :=
    psi_le_of_checkPsiLeMulWith N 20 (111 / 100) (checkPsiLeMul_le_11723 N hN hNb)
  have hcast : ((111 / 100 : ℚ) : ℝ) = 111 / 100 := by norm_num
  simpa [hcast] using h

/-- ψ(x) ≤ 1.11 * x for all real 0 < x ≤ 11723.
    This is the main theorem needed by PNT's `psi_num_2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/PNTPsiBounds/Variantc6588e3a5cdb050e8f562cf8362856537f6e69b59d7962e870fe89040a9cb519.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/PNTPsiBounds/Variantc6588e3a5cdb050e8f562cf8362856537f6e69b59d7962e870fe89040a9cb519.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `510488f3941415f627465d15fa4a39fddfb20d78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

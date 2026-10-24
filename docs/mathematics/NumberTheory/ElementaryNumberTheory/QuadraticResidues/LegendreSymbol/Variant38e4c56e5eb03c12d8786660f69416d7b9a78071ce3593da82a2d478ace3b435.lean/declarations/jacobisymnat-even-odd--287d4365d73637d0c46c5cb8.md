# jacobiSymNat.even_odd₇

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "db5269773b3c2132e84a6f94d450d01d5ec61dab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 158,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/38e4c56e5eb03c12d8786660f69416d7b9a78071ce3593da82a2d478ace3b435.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:56d17dfb-303b-7cd0-4c19-64fb9639b604",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eb91a09e-47e8-6fb6-7ed1-d785c3d4ecb0",
  "kind": "theorem",
  "lexical_name": "jacobiSymNat.even_odd₇",
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
  "slug": "jacobisymnat-even-odd--287d4365d73637d0c46c5cb8",
  "source": {
    "blob": "db5269773b3c2132e84a6f94d450d01d5ec61dab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 158,
    "path": "GRWTSK/NumberTheory/LegendreSymbol/Variant38e4c56e5eb03c12d8786660f69416d7b9a78071ce3593da82a2d478ace3b435.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:287d4365d73637d0c46c5cb8e7a98f603bccc006b2a1a6961b690b7e3ebea296",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant38e4c56e5eb03c12d8786660f69416d7b9a78071ce3593da82a2d478ace3b435.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb91a09e-47e8-6fb6-7ed1-d785c3d4ecb0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jacobiSymNat.even_odd₇ (a b c : ℕ) (r : ℤ) (ha : a % 2 = 0) (hb : b % 8 = 7)
    (hc : a / 2 = c) (hr : jacobiSymNat c b = r) : jacobiSymNat a b = r := by
  have hb' : Odd b := by
    rw [← Nat.div_add_mod b 8, hb, Odd]
    use 4 * (b / 8) + 3; rw [Nat.mul_add, ← Nat.mul_assoc, Nat.add_assoc]; congr
  rw [jacobiSymNat, ← Nat.mod_add_div a 2, ha, hc, Nat.zero_add, Nat.cast_mul, jacobiSym.mul_left,
    Nat.cast_two, jacobiSym.at_two hb', ZMod.χ₈_nat_mod_eight, hb,
    (by decide : ZMod.χ₈ (7 : ℕ) = 1)]
  norm_num
  exact hr
#align norm_num.jacobi_sym_nat.even_odd₇ Mathlib.Meta.NormNum.jacobiSymNat.even_odd₇

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant38e4c56e5eb03c12d8786660f69416d7b9a78071ce3593da82a2d478ace3b435.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/LegendreSymbol/Variant38e4c56e5eb03c12d8786660f69416d7b9a78071ce3593da82a2d478ace3b435.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db5269773b3c2132e84a6f94d450d01d5ec61dab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# jacobiSymNat.even_odd₅

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "248764e2acf0de3abc425da088cd215bd1d8263c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 147,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c4e3e9aefd8d69a5ce7079ee15966ad34daa6f2366a360ae57eec99ca35d9898.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5b5d5e62-029c-d619-2d46-a2a64cc74b1f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fb666623-c5e9-0223-cc67-272434f053ed",
  "kind": "theorem",
  "lexical_name": "jacobiSymNat.even_odd₅",
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
  "slug": "jacobisymnat-even-odd--6a2dc57610c89762b2ca24b6",
  "source": {
    "blob": "248764e2acf0de3abc425da088cd215bd1d8263c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 147,
    "path": "GRWTSK/NumberTheory/LegendreSymbol/Variantc4e3e9aefd8d69a5ce7079ee15966ad34daa6f2366a360ae57eec99ca35d9898.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a2dc57610c89762b2ca24b642756f434bb3cfe1c77967ad8a4ff2484b9752a0",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variantc4e3e9aefd8d69a5ce7079ee15966ad34daa6f2366a360ae57eec99ca35d9898.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb666623-c5e9-0223-cc67-272434f053ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jacobiSymNat.even_odd₅ (a b c : ℕ) (r : ℤ) (ha : a % 2 = 0) (hb : b % 8 = 5)
    (hc : a / 2 = c) (hr : jacobiSymNat c b = r) : jacobiSymNat a b = -r := by
  simp only [jacobiSymNat, ← hr, ← hc, Int.natCast_ediv, Nat.cast_ofNat]
  rw [← jacobiSym.even_odd (mod_cast ha), if_pos (by simp [hb])]
  rw [← Nat.mod_mod_of_dvd, hb]; norm_num

/-- Use quadratic reciproity to reduce to smaller `b`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variantc4e3e9aefd8d69a5ce7079ee15966ad34daa6f2366a360ae57eec99ca35d9898.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/LegendreSymbol/Variantc4e3e9aefd8d69a5ce7079ee15966ad34daa6f2366a360ae57eec99ca35d9898.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `248764e2acf0de3abc425da088cd215bd1d8263c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

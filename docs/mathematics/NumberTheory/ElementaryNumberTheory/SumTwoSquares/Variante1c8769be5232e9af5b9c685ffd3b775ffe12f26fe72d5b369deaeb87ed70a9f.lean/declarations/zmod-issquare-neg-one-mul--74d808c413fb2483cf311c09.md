# ZMod.isSquare_neg_one_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0840e85e4988f189c10963f04c95e0188ce74254",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 85,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e1c8769be5232e9af5b9c685ffd3b775ffe12f26fe72d5b369deaeb87ed70a9f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f618d68c-cd6b-7f45-f76d-3673475e5e93",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ce7c7a30-4131-1014-e784-28484d064528",
  "kind": "theorem",
  "lexical_name": "ZMod.isSquare_neg_one_mul",
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
  "slug": "zmod-issquare-neg-one-mul--74d808c413fb2483cf311c09",
  "source": {
    "blob": "0840e85e4988f189c10963f04c95e0188ce74254",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 85,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variante1c8769be5232e9af5b9c685ffd3b775ffe12f26fe72d5b369deaeb87ed70a9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74d808c413fb2483cf311c09a990e16ef5e89c2a76d6e83f8234f8644f3ecd03",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variante1c8769be5232e9af5b9c685ffd3b775ffe12f26fe72d5b369deaeb87ed70a9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce7c7a30-4131-1014-e784-28484d064528`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ZMod.isSquare_neg_one_mul {m n : ℕ} (hc : m.coprime n) (hm : IsSquare (-1 : ZMod m))
    (hn : IsSquare (-1 : ZMod n)) : IsSquare (-1 : ZMod (m * n)) := by
  have : IsSquare (-1 : ZMod m × ZMod n) := by
    rw [show (-1 : ZMod m × ZMod n) = ((-1 : ZMod m), (-1 : ZMod n)) from rfl]
    obtain ⟨x, hx⟩ := hm
    obtain ⟨y, hy⟩ := hn
    rw [hx, hy]
    exact ⟨(x, y), rfl⟩
  simpa only [RingEquiv.map_neg_one] using this.map (ZMod.chineseRemainder hc).symm
#align zmod.is_square_neg_one_mul ZMod.isSquare_neg_one_mul

/-- If a prime `p` divides `n` such that `-1` is a square modulo `n`, then `p % 4 ≠ 3`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variante1c8769be5232e9af5b9c685ffd3b775ffe12f26fe72d5b369deaeb87ed70a9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variante1c8769be5232e9af5b9c685ffd3b775ffe12f26fe72d5b369deaeb87ed70a9f.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0840e85e4988f189c10963f04c95e0188ce74254` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

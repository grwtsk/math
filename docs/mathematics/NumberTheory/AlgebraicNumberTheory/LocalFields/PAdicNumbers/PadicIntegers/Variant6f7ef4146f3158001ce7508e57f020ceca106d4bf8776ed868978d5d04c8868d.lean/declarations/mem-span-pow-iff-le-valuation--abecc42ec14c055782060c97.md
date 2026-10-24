# mem_span_pow_iff_le_valuation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2ee1ab776058358d9da30b976a3075ed249a2667",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 383,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6f/6f7ef4146f3158001ce7508e57f020ceca106d4bf8776ed868978d5d04c8868d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cd7d2561-be53-1574-dc74-89bcb3b9cf6b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ebc7dba0-67b1-c166-df2c-20f601322f06",
  "kind": "theorem",
  "lexical_name": "mem_span_pow_iff_le_valuation",
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
  "slug": "mem-span-pow-iff-le-valuation--abecc42ec14c055782060c97",
  "source": {
    "blob": "2ee1ab776058358d9da30b976a3075ed249a2667",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 395,
    "line": 383,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicIntegers/Variant6f7ef4146f3158001ce7508e57f020ceca106d4bf8776ed868978d5d04c8868d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:abecc42ec14c055782060c973d6aa99538dd85ed601cdd775a6022929e3a987b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicIntegers/Variant6f7ef4146f3158001ce7508e57f020ceca106d4bf8776ed868978d5d04c8868d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ebc7dba0-67b1-c166-df2c-20f601322f06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 383–395.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_span_pow_iff_le_valuation (x : ℤ_[p]) (hx : x ≠ 0) (n : ℕ) :
    x ∈ (Ideal.span {(p : ℤ_[p]) ^ n} : Ideal ℤ_[p]) ↔ n ≤ x.valuation := by
  rw [Ideal.mem_span_singleton]
  constructor
  · rintro ⟨c, rfl⟩
    suffices c ≠ 0 by
      rw [valuation_p_pow_mul _ _ this]
      exact le_self_add
    contrapose! hx
    rw [hx, mul_zero]
  · nth_rewrite 2 [unitCoeff_spec hx]
    simpa [Units.isUnit, IsUnit.dvd_mul_left] using pow_dvd_pow _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicIntegers/Variant6f7ef4146f3158001ce7508e57f020ceca106d4bf8776ed868978d5d04c8868d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicIntegers/Variant6f7ef4146f3158001ce7508e57f020ceca106d4bf8776ed868978d5d04c8868d.lean#L383).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ee1ab776058358d9da30b976a3075ed249a2667` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# coeff_heval_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f898d83025cc2a5ec8d49e7013b2ec9376540611",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 216,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/9752595f79675286e9022daca7afa7279587da1e162b692d299166330e787027.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0b31f899-f373-465a-3ab3-df023919b61f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:494866a3-c455-3c62-539b-1446459371b9",
  "kind": "theorem",
  "lexical_name": "coeff_heval_zero",
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
  "slug": "coeff-heval-zero--dc0ae5051dd7e19f4007c2c7",
  "source": {
    "blob": "f898d83025cc2a5ec8d49e7013b2ec9376540611",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 216,
    "path": "GRWTSK/Algebra/HEval/Variant9752595f79675286e9022daca7afa7279587da1e162b692d299166330e787027.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc0ae5051dd7e19f4007c2c75f7148ab58489930796a4ecc7bc85e69c4139138",
  "verification": {
    "reference": "docs/verification/Algebra/HEval/Variant9752595f79675286e9022daca7afa7279587da1e162b692d299166330e787027.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:494866a3-c455-3c62-539b-1446459371b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_heval_zero (f : PowerSeries R) :
    (heval x f).coeff 0 = PowerSeries.constantCoeff f := by
  rw [coeff_heval, finsum_eq_single (fun n => ((powerSeriesFamily x f).coeff 0) n) 0,
    ← PowerSeries.coeff_zero_eq_constantCoeff_apply]
  · simp
  · intro n hn
    simp only [coeff_apply, smulFamily_toFun, HahnSeries.coeff_smul, smul_eq_mul]
    refine mul_eq_zero_of_right (coeff n f) (coeff_eq_zero_of_lt_orderTop ?_)
    by_cases h : 0 < x.orderTop
    · refine (lt_of_lt_of_le ((nsmul_pos_iff hn).mpr h) ?_)
      simp [h, orderTop_nsmul_le_orderTop_pow]
    · simp [h, hn]

end PowerSeries
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/HEval/Variant9752595f79675286e9022daca7afa7279587da1e162b692d299166330e787027.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/HEval/Variant9752595f79675286e9022daca7afa7279587da1e162b692d299166330e787027.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f898d83025cc2a5ec8d49e7013b2ec9376540611` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

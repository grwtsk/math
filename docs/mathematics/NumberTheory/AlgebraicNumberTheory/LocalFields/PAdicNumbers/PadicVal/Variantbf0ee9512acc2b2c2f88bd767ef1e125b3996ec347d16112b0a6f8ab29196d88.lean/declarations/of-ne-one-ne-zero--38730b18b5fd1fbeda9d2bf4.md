# of_ne_one_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0bd6833f72678fc6e2056d6efc6edb9556dfeef4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 159,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bf0ee9512acc2b2c2f88bd767ef1e125b3996ec347d16112b0a6f8ab29196d88.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8b083596-76d1-509d-9090-849ae08655b1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:15e9ad66-fd25-a3d4-3ae4-591ffd206f64",
  "kind": "theorem",
  "lexical_name": "of_ne_one_ne_zero",
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
  "slug": "of-ne-one-ne-zero--38730b18b5fd1fbeda9d2bf4",
  "source": {
    "blob": "0bd6833f72678fc6e2056d6efc6edb9556dfeef4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 159,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicVal/Variantbf0ee9512acc2b2c2f88bd767ef1e125b3996ec347d16112b0a6f8ab29196d88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38730b18b5fd1fbeda9d2bf4bed159f1e57045cba334caa7e81a90e482005051",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicVal/Variantbf0ee9512acc2b2c2f88bd767ef1e125b3996ec347d16112b0a6f8ab29196d88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15e9ad66-fd25-a3d4-3ae4-591ffd206f64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_ne_one_ne_zero {z : ℤ} (hp : p ≠ 1) (hz : z ≠ 0) :
    padicValInt p z =
      (multiplicity (p : ℤ) z).get
        (by
          apply multiplicity.finite_int_iff.2
          simp [hp, hz]) := by
  rw [padicValInt, padicValNat, dif_pos (And.intro hp (Int.natAbs_pos.mpr hz))]
  simp only [multiplicity.Int.natAbs p z]
#align padic_val_int.of_ne_one_ne_zero padicValInt.of_ne_one_ne_zero

/-- `padicValInt p 0` is `0` for any `p`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicVal/Variantbf0ee9512acc2b2c2f88bd767ef1e125b3996ec347d16112b0a6f8ab29196d88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicVal/Variantbf0ee9512acc2b2c2f88bd767ef1e125b3996ec347d16112b0a6f8ab29196d88.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0bd6833f72678fc6e2056d6efc6edb9556dfeef4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

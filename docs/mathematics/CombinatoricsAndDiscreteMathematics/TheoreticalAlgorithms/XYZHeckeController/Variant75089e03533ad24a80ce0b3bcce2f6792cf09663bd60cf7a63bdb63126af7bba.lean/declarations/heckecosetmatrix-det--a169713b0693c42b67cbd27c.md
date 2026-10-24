# heckeCosetMatrix_det

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ceceab51e752160f101226883a93595b9801171b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 146,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/75/75089e03533ad24a80ce0b3bcce2f6792cf09663bd60cf7a63bdb63126af7bba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3e940bad-dfed-dbea-c87e-c6091252bebe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3f707eeb-c27d-8599-2c73-e71497ec9eee",
  "kind": "theorem",
  "lexical_name": "heckeCosetMatrix_det",
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
  "slug": "heckecosetmatrix-det--a169713b0693c42b67cbd27c",
  "source": {
    "blob": "ceceab51e752160f101226883a93595b9801171b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 146,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZHeckeController/Variant75089e03533ad24a80ce0b3bcce2f6792cf09663bd60cf7a63bdb63126af7bba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a169713b0693c42b67cbd27cbecad8b98311f62ca1b349d0d0931b6d5f9c9c26",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZHeckeController/Variant75089e03533ad24a80ce0b3bcce2f6792cf09663bd60cf7a63bdb63126af7bba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f707eeb-c27d-8599-2c73-e71497ec9eee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem heckeCosetMatrix_det {n : Nat} {coset : HeckeCosetV1}
    (member : coset ∈ heckeCosets n) :
    coset.matrix.det = Int.ofNat n := by
  rcases List.mem_flatMap.mp member with ⟨d, hd, hcoset⟩
  rcases List.mem_map.mp hcoset with ⟨b, hb, rfl⟩
  have hdivides : d ∣ n := (positiveDivisorsAscending_sound hd).2
  have hdetNat : n / d * d = n := Nat.div_mul_cancel hdivides
  simp only [makeHeckeCosetV1, HeckeMatrixV1.det]
  norm_num
  exact_mod_cast hdetNat

/-- Exact divisor sum used by the count theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZHeckeController/Variant75089e03533ad24a80ce0b3bcce2f6792cf09663bd60cf7a63bdb63126af7bba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZHeckeController/Variant75089e03533ad24a80ce0b3bcce2f6792cf09663bd60cf7a63bdb63126af7bba.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ceceab51e752160f101226883a93595b9801171b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

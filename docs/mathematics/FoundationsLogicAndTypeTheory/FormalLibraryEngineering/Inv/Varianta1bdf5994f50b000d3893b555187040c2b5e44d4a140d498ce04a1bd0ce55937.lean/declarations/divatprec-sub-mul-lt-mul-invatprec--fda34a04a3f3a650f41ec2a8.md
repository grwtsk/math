# divAtPrec_sub_mul_lt_mul_invAtPrec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "84ec9c3a8894b1bbb0da0f0777e3dcc011f74659",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 212,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a1/a1bdf5994f50b000d3893b555187040c2b5e44d4a140d498ce04a1bd0ce55937.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2669b8c2-10ac-f50e-d82a-a7e6dabcfb92",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:830bc510-ec91-f373-5292-2844ade527b5",
  "kind": "theorem",
  "lexical_name": "divAtPrec_sub_mul_lt_mul_invAtPrec",
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
  "slug": "divatprec-sub-mul-lt-mul-invatprec--fda34a04a3f3a650f41ec2a8",
  "source": {
    "blob": "84ec9c3a8894b1bbb0da0f0777e3dcc011f74659",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 212,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Varianta1bdf5994f50b000d3893b555187040c2b5e44d4a140d498ce04a1bd0ce55937.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fda34a04a3f3a650f41ec2a8d0a44e07cc81de8c0415a0a71648ecac3e927d72",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Varianta1bdf5994f50b000d3893b555187040c2b5e44d4a140d498ce04a1bd0ce55937.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:830bc510-ec91-f373-5292-2844ade527b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem divAtPrec_sub_mul_lt_mul_invAtPrec {a b : Dyadic}
    (ha : 0 < a) (hb : 0 < b) (prec : Int) :
    divAtPrec a b prec - a * ofIntWithPrec 1 prec < a * invAtPrec b prec := by
  have hbr : (0 : Rat) < b.toRat := by rwa [← toRat_lt_toRat_iff, toRat_zero] at hb
  have har : (0 : Rat) < a.toRat := by rwa [← toRat_lt_toRat_iff, toRat_zero] at ha
  rw [← toRat_lt_toRat_iff, toRat_sub, toRat_mul, toRat_mul,
      toRat_ofIntWithPrec_eq_mul_two_pow, Rat.intCast_one, Rat.one_mul, Rat.sub_lt_iff]
  unfold invAtPrec divAtPrec
  cases b with
  | zero => exfalso; contradiction
  | ofOdd n k hn =>
    simp only
    have h_le : ((a.toRat / (ofOdd n k hn).toRat).toDyadic prec).toRat
              ≤ a.toRat * (ofOdd n k hn).toRat⁻¹ := by
      rw [← Rat.div_def]
      exact Rat.toRat_toDyadic_le
    have h_lt : a.toRat * (ofOdd n k hn).toRat⁻¹
              < a.toRat * ((ofOdd n k hn).toRat.inv.toDyadic prec).toRat
                  + a.toRat * (2 : Rat) ^ (-prec) := by
      calc a.toRat * (ofOdd n k hn).toRat⁻¹
          < a.toRat *
              ((ofOdd n k hn).toRat.inv.toDyadic prec + ofIntWithPrec 1 prec).toRat :=
            Rat.mul_lt_mul_of_pos_left Rat.lt_toRat_toDyadic_add har
        _ = a.toRat * ((ofOdd n k hn).toRat.inv.toDyadic prec).toRat
                + a.toRat * (2 : Rat) ^ (-prec) := by
              rw [toRat_add, toRat_ofIntWithPrec_eq_mul_two_pow,
                  Rat.intCast_one, Rat.one_mul, Rat.mul_add]
    exact Rat.not_le.mp fun h =>
      Rat.not_le.mpr h_lt (Rat.le_trans h h_le)

end Dyadic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Varianta1bdf5994f50b000d3893b555187040c2b5e44d4a140d498ce04a1bd0ce55937.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Varianta1bdf5994f50b000d3893b555187040c2b5e44d4a140d498ce04a1bd0ce55937.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84ec9c3a8894b1bbb0da0f0777e3dcc011f74659` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

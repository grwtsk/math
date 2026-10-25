# pow_gcd_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6b3ac409cc1ed8775644c5c6a00a1a59f96fac2b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 457,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/67/672c96102205b59a47742be74c959ed780ba319713baaa8a2eeede2cdc46cbea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:281c2dd9-733e-c4e2-8d7f-c8be78afc889",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3a41d67f-fd2b-d801-d447-cf66bfd42191",
  "kind": "theorem",
  "lexical_name": "pow_gcd_pow",
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
  "slug": "pow-gcd-pow--d7f03f9c57705f2fe5afaf81",
  "source": {
    "blob": "6b3ac409cc1ed8775644c5c6a00a1a59f96fac2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 463,
    "line": 457,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gcd/Variant672c96102205b59a47742be74c959ed780ba319713baaa8a2eeede2cdc46cbea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7f03f9c57705f2fe5afaf81bbb050ab10b1650ef805b7f8cb46d13273d3763f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variant672c96102205b59a47742be74c959ed780ba319713baaa8a2eeede2cdc46cbea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a41d67f-fd2b-d801-d447-cf66bfd42191`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 457–463.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pow_gcd_pow {k n m : Nat} : gcd (n ^ k) (m ^ k) = (gcd n m) ^ k := by
  refine (Nat.eq_zero_or_pos n).elim (by rintro rfl; cases k <;> simp [Nat.pow_zero]) (fun hn => ?_)
  conv => lhs; rw [← Nat.div_mul_cancel (gcd_dvd_left n m)]
  conv => lhs; arg 2; rw [← Nat.div_mul_cancel (gcd_dvd_right n m)]
  rw [Nat.mul_pow, Nat.mul_pow, gcd_mul_right, pow_gcd_pow_of_gcd_eq_one, Nat.one_mul]
  exact gcd_div_gcd_div_gcd_of_pos_left hn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variant672c96102205b59a47742be74c959ed780ba319713baaa8a2eeede2cdc46cbea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gcd/Variant672c96102205b59a47742be74c959ed780ba319713baaa8a2eeede2cdc46cbea.lean#L457).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b3ac409cc1ed8775644c5c6a00a1a59f96fac2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

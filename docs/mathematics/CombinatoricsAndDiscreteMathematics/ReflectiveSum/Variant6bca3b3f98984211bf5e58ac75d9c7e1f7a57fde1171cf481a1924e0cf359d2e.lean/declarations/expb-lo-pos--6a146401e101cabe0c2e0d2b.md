# expB_lo_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "32a93c4758653263ab33bb578af15e9a25a3426f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 686,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6b/6bca3b3f98984211bf5e58ac75d9c7e1f7a57fde1171cf481a1924e0cf359d2e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fd1d7239-e4f0-f3c2-3ac3-42c70d05a980",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f1f91529-5200-900d-c47e-13903d90927a",
  "kind": "theorem",
  "lexical_name": "expB_lo_pos",
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
  "slug": "expb-lo-pos--6a146401e101cabe0c2e0d2b",
  "source": {
    "blob": "32a93c4758653263ab33bb578af15e9a25a3426f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 717,
    "line": 686,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ReflectiveSum/Variant6bca3b3f98984211bf5e58ac75d9c7e1f7a57fde1171cf481a1924e0cf359d2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a146401e101cabe0c2e0d2be3216ff2510d07c372a9b609092dfc5363959efa",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ReflectiveSum/Variant6bca3b3f98984211bf5e58ac75d9c7e1f7a57fde1171cf481a1924e0cf359d2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1f91529-5200-900d-c47e-13903d90927a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 686–717.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem expB_lo_pos (b : Nat) (_hb : b ≥ 1) (cfg : BKLNWSumConfig)
    (hprec : cfg.precision ≤ 0 := by norm_num)
    (hcheck : checkExpBLoGe1 b cfg.precision cfg.taylorDepth = true := by decide) :
    let bInterval := IntervalDyadic.ofIntervalRat (IntervalRat.singleton b) cfg.precision
    let expB := expIntervalDyadic bInterval cfg.toDyadicConfig
    expB.toIntervalRat.lo > 0 := by
  simp only
  -- Get the lo ≥ 1 fact from the check
  have hlo_ge1 := checkExpBLoGe1_spec hcheck
  -- Now use ofIntervalRat_lo_pos with lo ≥ 1
  simp only [expIntervalDyadic, BKLNWSumConfig.toDyadicConfig]
  let expResult := IntervalRat.expComputable
    (IntervalDyadic.ofIntervalRat (IntervalRat.singleton ↑b) cfg.precision).toIntervalRat
    cfg.taylorDepth
  have hle : expResult.lo ≤ expResult.hi := expResult.le
  exact IntervalDyadic.ofIntervalRat_lo_pos hle hlo_ge1 cfg.precision hprec

/-- Main bridge theorem: if checkBKLNWExpUpperBound returns true, the sum is bounded.

    This is the key theorem that connects `native_decide` verification to mathematical truth
    for the BKLNW sum f(exp(b)).

    The `hexppos` argument verifies that the exp interval has positive lo (always true for
    b ≥ 1 with reasonable config).

    Usage:
    ```lean
    theorem my_bound : bklnwF (Real.exp 300) 432 ≤ 1.001 :=
      verify_bklnwF_exp_upper 300 432 (1001/1000) proofConfig
        (by decide) (by norm_num) (by decide) (by native_decide)
    ```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ReflectiveSum/Variant6bca3b3f98984211bf5e58ac75d9c7e1f7a57fde1171cf481a1924e0cf359d2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ReflectiveSum/Variant6bca3b3f98984211bf5e58ac75d9c7e1f7a57fde1171cf481a1924e0cf359d2e.lean#L686).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32a93c4758653263ab33bb578af15e9a25a3426f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

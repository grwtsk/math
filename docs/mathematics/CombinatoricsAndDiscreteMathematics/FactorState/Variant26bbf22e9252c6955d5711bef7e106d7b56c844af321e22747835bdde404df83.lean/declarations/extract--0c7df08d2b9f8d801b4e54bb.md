# extract

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8849d4828f27fe4ec1fd47905268942803f867618388ad5dc2005cfbaa53ae94",
  "kind": "def",
  "lexical_name": "extract",
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
  "slug": "extract--0c7df08d2b9f8d801b4e54bb",
  "source": {
    "blob": "209bed08fc2a3433333b0f842db039b743c437c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 155,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FactorState/Variant26bbf22e9252c6955d5711bef7e106d7b56c844af321e22747835bdde404df83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0c7df08d2b9f8d801b4e54bbeec4f4f2cbfdddd1af0a5d0ce56b39d33924947f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FactorState/Variant26bbf22e9252c6955d5711bef7e106d7b56c844af321e22747835bdde404df83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8849d4828f27fe4ec1fd47905268942803f867618388ad5dc2005cfbaa53ae94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def extract {N p e after : ℕ} (s : State N)
    (c : ExactExtraction s.residual p e after) :
    State N where
  original_gt_one := s.original_gt_one
  residual := after
  residual_pos := c.after_pos
  extracted := s.extracted + Finsupp.single p e
  extracted_primes := primeMap_add s.extracted_primes (primeMap_single c.prime)
  conservation := by
    apply s.conservation.trans
    rw [c.split, primeProduct_add, primeProduct_single]
    ac_rfl
  extracted_resolved := by
    intro q hq
    obtain hq | hq := Finset.mem_union.mp (Finsupp.support_add hq)
    · exact exclusion_persists (s.extracted_resolved q hq) c.after_dvd
    · have hqp : q = p := by
        by_contra hne
        simp [Finsupp.mem_support_iff, Finsupp.single_eq_of_ne hne] at hq
      subst q
      exact c.remainder
  excluded := insert p s.excluded
  excluded_primes := by
    intro q hq
    obtain rfl | hq := Finset.mem_insert.mp hq
    · exact c.prime
    · exact s.excluded_primes q hq
  excluded_sound := by
    intro q hq
    obtain rfl | hq := Finset.mem_insert.mp hq
    · exact c.remainder
    · exact exclusion_persists (s.excluded_sound q hq) c.after_dvd

/-- Negative scale observations do not change the residual or the extracted factors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FactorState/Variant26bbf22e9252c6955d5711bef7e106d7b56c844af321e22747835bdde404df83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FactorState/Variant26bbf22e9252c6955d5711bef7e106d7b56c844af321e22747835bdde404df83.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `209bed08fc2a3433333b0f842db039b743c437c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

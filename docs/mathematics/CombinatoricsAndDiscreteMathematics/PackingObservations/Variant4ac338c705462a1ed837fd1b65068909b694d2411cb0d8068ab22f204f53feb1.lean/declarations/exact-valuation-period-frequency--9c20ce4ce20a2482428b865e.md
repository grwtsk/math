# exact_valuation_period_frequency

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "43bdedd3a4604fa32406d0c7c2071ccd89928165",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 330,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6da56ac3-c289-9815-379f-b2cfd789de00",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6d9200f5-19b4-710d-3fb8-6d7c834ab326",
  "kind": "theorem",
  "lexical_name": "exact_valuation_period_frequency",
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
  "slug": "exact-valuation-period-frequency--9c20ce4ce20a2482428b865e",
  "source": {
    "blob": "43bdedd3a4604fa32406d0c7c2071ccd89928165",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 330,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c20ce4ce20a2482428b865ebcfadc08e9833d4ac01da3d00cee66006b7543c1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d9200f5-19b4-710d-3fb8-6d7c834ab326`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 330–341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_valuation_period_frequency (p k : ℕ) (hp : p.Prime) :
    (((Finset.Ioc 0 (p ^ (k + 1))).filter fun n => padicValNat p n = k).card : ℚ) /
      (p ^ (k + 1) : ℕ) = 1 / (p : ℚ) ^ k - 1 / (p : ℚ) ^ (k + 1) := by
  rw [exact_valuation_period_count p k hp,
    Nat.cast_sub (le_trans (by decide : 1 ≤ 2) hp.two_le)]
  have hpq : (p : ℚ) ≠ 0 := Nat.cast_ne_zero.mpr hp.ne_zero
  push_cast
  rw [pow_succ]
  field_simp

/-- The real logarithmic coordinate expresses the same exact reciprocal power.
It is not an observed probability of primes or a proof-progress coordinate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean#L330).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43bdedd3a4604fa32406d0c7c2071ccd89928165` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

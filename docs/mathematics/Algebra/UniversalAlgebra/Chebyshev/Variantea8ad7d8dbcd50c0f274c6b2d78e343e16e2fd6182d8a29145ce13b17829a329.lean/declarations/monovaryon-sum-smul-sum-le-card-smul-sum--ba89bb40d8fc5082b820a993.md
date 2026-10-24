# MonovaryOn.sum_smul_sum_le_card_smul_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2114626d0c19de6ea2623e1de57e883f4a5f9fa6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 55,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/ea8ad7d8dbcd50c0f274c6b2d78e343e16e2fd6182d8a29145ce13b17829a329.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e73ef172-8585-930a-f1a4-5968c6e8eebd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e51dbfb3-b5d3-ff81-537d-c8bdeb0ea291",
  "kind": "theorem",
  "lexical_name": "MonovaryOn.sum_smul_sum_le_card_smul_sum",
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
  "slug": "monovaryon-sum-smul-sum-le-card-smul-sum--ba89bb40d8fc5082b820a993",
  "source": {
    "blob": "2114626d0c19de6ea2623e1de57e883f4a5f9fa6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 55,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Chebyshev/Variantea8ad7d8dbcd50c0f274c6b2d78e343e16e2fd6182d8a29145ce13b17829a329.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba89bb40d8fc5082b820a993e9b40b69c39b03b2c27f200d6590e85c0a4f0e86",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Chebyshev/Variantea8ad7d8dbcd50c0f274c6b2d78e343e16e2fd6182d8a29145ce13b17829a329.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e51dbfb3-b5d3-ff81-537d-c8bdeb0ea291`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MonovaryOn.sum_smul_sum_le_card_smul_sum (hfg : MonovaryOn f g s) :
    (∑ i ∈ s, f i) • ∑ i ∈ s, g i ≤ #s • ∑ i ∈ s, f i • g i := by
  classical
  obtain ⟨σ, hσ, hs⟩ := s.countable_toSet.exists_cycleOn
  rw [← card_range #s, sum_smul_sum_eq_sum_perm hσ]
  exact sum_le_card_nsmul _ _ _ fun n _ ↦
    hfg.sum_smul_comp_perm_le_sum_smul fun x hx ↦ hs fun h ↦ hx <| IsFixedPt.perm_pow h _

/-- **Chebyshev's Sum Inequality**: When `f` and `g` antivary together (eg one is monotone, the
other is antitone), the scalar product of their sum is less than the size of the set times their
scalar product. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Chebyshev/Variantea8ad7d8dbcd50c0f274c6b2d78e343e16e2fd6182d8a29145ce13b17829a329.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Chebyshev/Variantea8ad7d8dbcd50c0f274c6b2d78e343e16e2fd6182d8a29145ce13b17829a329.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2114626d0c19de6ea2623e1de57e883f4a5f9fa6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

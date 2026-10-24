# primeSquareIndices_eq_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2f665fb2c6457dca848725e645649845c68dedfb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 57,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7d/7dfbefd145134161a1e693aa2182e5154c6ab39e9a3d6be28526d39af198cd96.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ae4ab9fd-3468-c973-e742-2653febe5a45",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d8a80ae2-32cb-19c3-6498-8c8a0980785a",
  "kind": "theorem",
  "lexical_name": "primeSquareIndices_eq_image",
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
  "slug": "primesquareindices-eq-image--416f7e40470859b2a6b44bdd",
  "source": {
    "blob": "2f665fb2c6457dca848725e645649845c68dedfb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 57,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant7dfbefd145134161a1e693aa2182e5154c6ab39e9a3d6be28526d39af198cd96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:416f7e40470859b2a6b44bdd8e863df69db7ee5b06b5ce198e9aa0c637b0ed94",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant7dfbefd145134161a1e693aa2182e5154c6ab39e9a3d6be28526d39af198cd96.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8a80ae2-32cb-19c3-6498-8c8a0980785a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeSquareIndices_eq_image (A : ℝ) :
    primeSquareIndices A = (strictPrimeRoots A).image (fun p : ℕ => p ^ 2) := by
  classical
  ext n
  simp only [primeSquareIndices, Finset.mem_filter, Finset.mem_image]
  constructor
  · rintro ⟨hn, p, hp, hpn⟩
    refine ⟨p, (mem_strictPrimeRoots_iff A p).mpr ⟨hp, ?_⟩, hpn⟩
    exact (prime_square_cutoff_iff A p hp).mp (hpn ▸ hn)
  · rintro ⟨p, hp, rfl⟩
    obtain ⟨hp, hcut⟩ := (mem_strictPrimeRoots_iff A p).mp hp
    exact ⟨(prime_square_cutoff_iff A p hp).mpr hcut, p, hp, rfl⟩

/-- Prime two is present exactly when its square is below the original strict cutoff. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant7dfbefd145134161a1e693aa2182e5154c6ab39e9a3d6be28526d39af198cd96.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant7dfbefd145134161a1e693aa2182e5154c6ab39e9a3d6be28526d39af198cd96.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f665fb2c6457dca848725e645649845c68dedfb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

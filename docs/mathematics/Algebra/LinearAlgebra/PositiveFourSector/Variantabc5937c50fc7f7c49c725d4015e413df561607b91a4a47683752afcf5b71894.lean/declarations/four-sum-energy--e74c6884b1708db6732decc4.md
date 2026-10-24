# four_sum_energy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "01bdb0c4eaef2e8d1081cfabce7214c470ffa18d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 50,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/abc5937c50fc7f7c49c725d4015e413df561607b91a4a47683752afcf5b71894.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fb5adf51-76e9-7c97-bf41-2f071452afdc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f8eb600b-069d-953a-41f3-406bbc7a0787",
  "kind": "theorem",
  "lexical_name": "four_sum_energy",
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
  "slug": "four-sum-energy--e74c6884b1708db6732decc4",
  "source": {
    "blob": "01bdb0c4eaef2e8d1081cfabce7214c470ffa18d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 50,
    "path": "GRWTSK/Algebra/LinearAlgebra/PositiveFourSector/Variantabc5937c50fc7f7c49c725d4015e413df561607b91a4a47683752afcf5b71894.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e74c6884b1708db6732decc461f436602623c5f1e72980c5240cdf97bb29a076",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PositiveFourSector/Variantabc5937c50fc7f7c49c725d4015e413df561607b91a4a47683752afcf5b71894.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8eb600b-069d-953a-41f3-406bbc7a0787`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem four_sum_energy
    (G : PositiveForm V) (a b c d : V)
    (hab : G.form a b = 0)
    (hac : G.form a c = 0)
    (had : G.form a d = 0)
    (hbc : G.form b c = 0)
    (hbd : G.form b d = 0)
    (hcd : G.form c d = 0) :
    G.form (a + b + c + d) (a + b + c + d) =
      G.form a a + G.form b b + G.form c c + G.form d d := by
  have hba : G.form b a = 0 := by
    rw [G.symmetric b a, hab]
  have hca : G.form c a = 0 := by
    rw [G.symmetric c a, hac]
  have hda : G.form d a = 0 := by
    rw [G.symmetric d a, had]
  have hcb : G.form c b = 0 := by
    rw [G.symmetric c b, hbc]
  have hdb : G.form d b = 0 := by
    rw [G.symmetric d b, hbd]
  have hdc : G.form d c = 0 := by
    rw [G.symmetric d c, hcd]
  simp [G.add_left, G.add_right, hab, hac, had, hbc, hbd, hcd,
    hba, hca, hda, hcb, hdb, hdc] <;> ring

end PositiveForm

/-- Two commuting involutions compatible with the same positive geometry. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PositiveFourSector/Variantabc5937c50fc7f7c49c725d4015e413df561607b91a4a47683752afcf5b71894.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PositiveFourSector/Variantabc5937c50fc7f7c49c725d4015e413df561607b91a4a47683752afcf5b71894.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01bdb0c4eaef2e8d1081cfabce7214c470ffa18d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

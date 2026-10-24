# Monic.irreducible_of_irreducible_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "26358e0f31a6cc6d91351d74b6dea1561a123a0f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1293,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5e/5e6ab66a96f2e1bfa17369139d2093524ca27ab583be17e9288876711d70d865.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d0e77ea8-bb1f-db23-63c7-d11a11a5214f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:926f5b1e-9bb0-c3ab-cd13-a19b53d4cbaf",
  "kind": "theorem",
  "lexical_name": "Monic.irreducible_of_irreducible_map",
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
  "slug": "monic-irreducible-of-irreducible-map--3e88315dd8e177fa29be57b4",
  "source": {
    "blob": "26358e0f31a6cc6d91351d74b6dea1561a123a0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1310,
    "line": 1293,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/RingDivision/Variant5e6ab66a96f2e1bfa17369139d2093524ca27ab583be17e9288876711d70d865.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e88315dd8e177fa29be57b421f3e5b419b03876c157106ccffff8072bb028e6",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/RingDivision/Variant5e6ab66a96f2e1bfa17369139d2093524ca27ab583be17e9288876711d70d865.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:926f5b1e-9bb0-c3ab-cd13-a19b53d4cbaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1293–1310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Monic.irreducible_of_irreducible_map (f : R[X]) (h_mon : Monic f)
    (h_irr : Irreducible (Polynomial.map φ f)) : Irreducible f := by
  refine' ⟨h_irr.not_unit ∘ IsUnit.map (mapRingHom φ), fun a b h => _⟩
  dsimp [Monic] at h_mon
  have q := (leadingCoeff_mul a b).symm
  rw [← h, h_mon] at q
  refine' (h_irr.isUnit_or_isUnit <|
    (congr_arg (Polynomial.map φ) h).trans (Polynomial.map_mul φ)).imp _ _ <;>
      apply isUnit_of_isUnit_leadingCoeff_of_isUnit_map <;>
    apply isUnit_of_mul_eq_one
  · exact q;
  · rw [mul_comm]
    exact q
#align polynomial.monic.irreducible_of_irreducible_map Polynomial.Monic.irreducible_of_irreducible_map

end

end Polynomial
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/RingDivision/Variant5e6ab66a96f2e1bfa17369139d2093524ca27ab583be17e9288876711d70d865.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/RingDivision/Variant5e6ab66a96f2e1bfa17369139d2093524ca27ab583be17e9288876711d70d865.lean#L1293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26358e0f31a6cc6d91351d74b6dea1561a123a0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

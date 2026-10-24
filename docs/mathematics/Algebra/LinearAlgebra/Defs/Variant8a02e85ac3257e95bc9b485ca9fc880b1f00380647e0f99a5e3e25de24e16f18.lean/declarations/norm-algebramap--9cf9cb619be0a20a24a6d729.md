# norm_algebraMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3994de2f-6dc1-6cb6-1e3b-d580c239078f",
  "kind": "theorem",
  "lexical_name": "norm_algebraMap",
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
  "slug": "norm-algebramap--9cf9cb619be0a20a24a6d729",
  "source": {
    "blob": "442c78da5ee5fbda7d61db6a877bc204bf221e2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 104,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant8a02e85ac3257e95bc9b485ca9fc880b1f00380647e0f99a5e3e25de24e16f18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9cf9cb619be0a20a24a6d7291f05c3faa14ca0e189cc20ad29c350d13d6a7586",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variant8a02e85ac3257e95bc9b485ca9fc880b1f00380647e0f99a5e3e25de24e16f18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3994de2f-6dc1-6cb6-1e3b-d580c239078f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem norm_algebraMap {L : Type*} [Ring L] [Algebra K L] (x : K) :
    norm K (algebraMap K L x) = x ^ finrank K L := by
  by_cases H : ∃ s : Finset L, Nonempty (Basis s K L)
  · rw [norm_algebraMap_of_basis H.choose_spec.some, finrank_eq_card_basis H.choose_spec.some]
  · rw [norm_eq_one_of_not_exists_basis K H, finrank_eq_zero_of_not_exists_basis, pow_zero]
    rintro ⟨s, ⟨b⟩⟩
    exact H ⟨s, ⟨b⟩⟩

end Algebra
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variant8a02e85ac3257e95bc9b485ca9fc880b1f00380647e0f99a5e3e25de24e16f18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variant8a02e85ac3257e95bc9b485ca9fc880b1f00380647e0f99a5e3e25de24e16f18.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `442c78da5ee5fbda7d61db6a877bc204bf221e2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

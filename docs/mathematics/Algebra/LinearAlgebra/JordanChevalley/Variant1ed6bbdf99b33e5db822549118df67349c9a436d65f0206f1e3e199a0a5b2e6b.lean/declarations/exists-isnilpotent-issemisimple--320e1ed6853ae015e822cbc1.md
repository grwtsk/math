# exists_isNilpotent_isSemisimple

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7bc19591-bf7e-097e-b0ff-102b39c97f68",
  "kind": "theorem",
  "lexical_name": "exists_isNilpotent_isSemisimple",
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
  "slug": "exists-isnilpotent-issemisimple--320e1ed6853ae015e822cbc1",
  "source": {
    "blob": "b00c943efe47b349b906200a62a16e8c11afe5f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 82,
    "path": "GRWTSK/Algebra/LinearAlgebra/JordanChevalley/Variant1ed6bbdf99b33e5db822549118df67349c9a436d65f0206f1e3e199a0a5b2e6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:320e1ed6853ae015e822cbc16bd00a1f1e5fadc880e4db8025364c64e63eb3a1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/JordanChevalley/Variant1ed6bbdf99b33e5db822549118df67349c9a436d65f0206f1e3e199a0a5b2e6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7bc19591-bf7e-097e-b0ff-102b39c97f68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_isNilpotent_isSemisimple [PerfectField K] :
    ∃ᵉ (n ∈ adjoin K {f}) (s ∈ adjoin K {f}), IsNilpotent n ∧ IsSemisimple s ∧ f = n + s := by
  obtain ⟨g, k, sep, -, nil⟩ := exists_squarefree_dvd_pow_of_ne_zero (minpoly.ne_zero_of_finite K f)
  rw [← PerfectField.separable_iff_squarefree] at sep
  exact exists_isNilpotent_isSemisimple_of_separable_of_dvd_pow sep nil

end Module.End
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/JordanChevalley/Variant1ed6bbdf99b33e5db822549118df67349c9a436d65f0206f1e3e199a0a5b2e6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/JordanChevalley/Variant1ed6bbdf99b33e5db822549118df67349c9a436d65f0206f1e3e199a0a5b2e6b.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b00c943efe47b349b906200a62a16e8c11afe5f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

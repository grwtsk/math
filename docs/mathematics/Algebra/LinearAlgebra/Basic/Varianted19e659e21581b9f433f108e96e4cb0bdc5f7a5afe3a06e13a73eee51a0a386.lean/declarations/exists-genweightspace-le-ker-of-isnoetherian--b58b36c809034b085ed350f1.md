# exists_genWeightSpace_le_ker_of_isNoetherian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d2a41c6c-a6cb-7dfb-e3cb-35954bca1d1d",
  "kind": "theorem",
  "lexical_name": "exists_genWeightSpace_le_ker_of_isNoetherian",
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
  "slug": "exists-genweightspace-le-ker-of-isnoetherian--b58b36c809034b085ed350f1",
  "source": {
    "blob": "1703d2ca8214442d1c2fe73bedb6ce6d37b03b6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 340,
    "line": 331,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Varianted19e659e21581b9f433f108e96e4cb0bdc5f7a5afe3a06e13a73eee51a0a386.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b58b36c809034b085ed350f11c6f00527408648855e46be9a7a61097382dd280",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Varianted19e659e21581b9f433f108e96e4cb0bdc5f7a5afe3a06e13a73eee51a0a386.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2a41c6c-a6cb-7dfb-e3cb-35954bca1d1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–340.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_genWeightSpace_le_ker_of_isNoetherian [IsNoetherian R M] (χ : L → R) (x : L) :
    ∃ k : ℕ,
      genWeightSpace M χ ≤ LinearMap.ker ((toEnd R L M x - algebraMap R _ (χ x)) ^ k) := by
  use (toEnd R L M x).maxGenEigenspaceIndex (χ x)
  intro m hm
  replace hm : m ∈ (toEnd R L M x).maxGenEigenspace (χ x) :=
    genWeightSpace_le_genWeightSpaceOf M x χ hm
  rwa [Module.End.maxGenEigenspace_eq, Module.End.genEigenspace_nat] at hm

variable (R) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Varianted19e659e21581b9f433f108e96e4cb0bdc5f7a5afe3a06e13a73eee51a0a386.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Varianted19e659e21581b9f433f108e96e4cb0bdc5f7a5afe3a06e13a73eee51a0a386.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1703d2ca8214442d1c2fe73bedb6ce6d37b03b6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

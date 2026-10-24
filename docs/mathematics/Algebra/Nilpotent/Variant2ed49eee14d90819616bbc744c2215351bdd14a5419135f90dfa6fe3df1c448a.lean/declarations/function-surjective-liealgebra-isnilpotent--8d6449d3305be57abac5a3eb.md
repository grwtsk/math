# Function.Surjective.lieAlgebra_isNilpotent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bd3d5ae9-4f52-1afd-5ec4-a5112f6258df",
  "kind": "theorem",
  "lexical_name": "Function.Surjective.lieAlgebra_isNilpotent",
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
  "slug": "function-surjective-liealgebra-isnilpotent--8d6449d3305be57abac5a3eb",
  "source": {
    "blob": "903cabcddff318835fea2b50dbc0fd6e51f1bdfc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 670,
    "line": 662,
    "path": "GRWTSK/Algebra/Nilpotent/Variant2ed49eee14d90819616bbc744c2215351bdd14a5419135f90dfa6fe3df1c448a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d6449d3305be57abac5a3eb8f74b3df6959fc9e56e54de2976f0284bc018790",
  "verification": {
    "reference": "docs/verification/Algebra/Nilpotent/Variant2ed49eee14d90819616bbc744c2215351bdd14a5419135f90dfa6fe3df1c448a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd3d5ae9-4f52-1afd-5ec4-a5112f6258df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 662–670.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Function.Surjective.lieAlgebra_isNilpotent [h₁ : IsNilpotent R L] {f : L →ₗ⁅R⁆ L'}
    (h₂ : Function.Surjective f) : IsNilpotent R L' :=
  { nilpotent := by
      obtain ⟨k, hk⟩ := id h₁
      use k
      rw [← LieIdeal.lowerCentralSeries_map_eq k h₂, hk]
      simp only [LieIdeal.map_eq_bot_iff, bot_le] }
#align function.surjective.lie_algebra_is_nilpotent Function.Surjective.lieAlgebra_isNilpotent

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Nilpotent/Variant2ed49eee14d90819616bbc744c2215351bdd14a5419135f90dfa6fe3df1c448a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Nilpotent/Variant2ed49eee14d90819616bbc744c2215351bdd14a5419135f90dfa6fe3df1c448a.lean#L662).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `903cabcddff318835fea2b50dbc0fd6e51f1bdfc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

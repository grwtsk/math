# rclike_to_real

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e1f0ea1a9baeb49f371387cf2ee635b55689cbd9dcb7a7717834fe3ab125b54c",
  "kind": "instance",
  "lexical_name": "rclike_to_real",
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
  "slug": "rclike-to-real--e92253df0d4aee388edcdc5f",
  "source": {
    "blob": "231f20078ba89a97ae26539ceb42b33fb36f576f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 61,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Lemmas/Varianta37999d7449fe1cdf40ca077cc15898d38a9df5097a3d24632118f13c7b603ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e92253df0d4aee388edcdc5fe68f309040c64d9452629688490d28ce21ae231e",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Lemmas/Varianta37999d7449fe1cdf40ca077cc15898d38a9df5097a3d24632118f13c7b603ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e1f0ea1a9baeb49f371387cf2ee635b55689cbd9dcb7a7717834fe3ab125b54c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance rclike_to_real : FiniteDimensional ℝ K := ⟨{1, I}, by simp [span_one_I]⟩

variable (K E)
variable [NormedAddCommGroup E] [NormedSpace K E]

/-- A finite dimensional vector space over an `RCLike` is a proper metric space.

This is not an instance because it would cause a search for `FiniteDimensional ?x E` before
`RCLike ?x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Lemmas/Varianta37999d7449fe1cdf40ca077cc15898d38a9df5097a3d24632118f13c7b603ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Lemmas/Varianta37999d7449fe1cdf40ca077cc15898d38a9df5097a3d24632118f13c7b603ac.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `231f20078ba89a97ae26539ceb42b33fb36f576f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

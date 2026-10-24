# count_map_roots_of_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:156a0186-41c7-a0d8-ce41-46f51f59dbe2",
  "kind": "theorem",
  "lexical_name": "count_map_roots_of_injective",
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
  "slug": "count-map-roots-of-injective--ddeb4555cbeba6a98230f46b",
  "source": {
    "blob": "f534f4a927f56b2f65c55fd8106783c88a044c03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 957,
    "line": 950,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Roots/Variant03d84be8d70f03416e0df2b2107214f8c2325ed4ee7dd683ca417573c9ae6b38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ddeb4555cbeba6a98230f46b5b2ad0d6ffc4cd3178401d0a12db34853fff480f",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Roots/Variant03d84be8d70f03416e0df2b2107214f8c2325ed4ee7dd683ca417573c9ae6b38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:156a0186-41c7-a0d8-ce41-46f51f59dbe2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 950–957.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem count_map_roots_of_injective [IsDomain A] [DecidableEq B] (p : A[X]) {f : A →+* B}
    (hf : Function.Injective f) (b : B) :
    (p.roots.map f).count b ≤ rootMultiplicity b (p.map f) := by
  by_cases hp0 : p = 0
  · simp only [hp0, roots_zero, Multiset.map_zero, Multiset.count_zero, Polynomial.map_zero,
      rootMultiplicity_zero, le_refl]
  · exact count_map_roots ((Polynomial.map_ne_zero_iff hf).mpr hp0) b

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Roots/Variant03d84be8d70f03416e0df2b2107214f8c2325ed4ee7dd683ca417573c9ae6b38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Roots/Variant03d84be8d70f03416e0df2b2107214f8c2325ed4ee7dd683ca417573c9ae6b38.lean#L950).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f534f4a927f56b2f65c55fd8106783c88a044c03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# roots_expand_image_frobenius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db2eae27-e51d-7cfe-54e8-c332a83eaedb",
  "kind": "theorem",
  "lexical_name": "roots_expand_image_frobenius",
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
  "slug": "roots-expand-image-frobenius--59c61085ea97ca8cc537668c",
  "source": {
    "blob": "a0d1b91e6f83832416a87ea3335241f4b483851a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 457,
    "line": 446,
    "path": "GRWTSK/Algebra/Perfect/Variant0d7d8f3e57dee0527e6e9ca68a1478e8d6b7ab0cb34d8c9a116aaf468b341d0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59c61085ea97ca8cc537668c222be760058b52e4ea36ff25440710100328fde3",
  "verification": {
    "reference": "docs/verification/Algebra/Perfect/Variant0d7d8f3e57dee0527e6e9ca68a1478e8d6b7ab0cb34d8c9a116aaf468b341d0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db2eae27-e51d-7cfe-54e8-c332a83eaedb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 446–457.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem roots_expand_image_frobenius [DecidableEq R] :
    (expand R p f).roots.toFinset.image (frobenius R p) = f.roots.toFinset := by
  rw [Finset.image_toFinset, roots_expand_map_frobenius,
      (roots f).toFinset_nsmul _ (expChar_pos R p).ne']

end PerfectRing

variable [DecidableEq R]

/-- If `f` is a polynomial over an integral domain `R` of characteristic `p`, then there is
a map from the set of roots of `Polynomial.expand R p f` to the set of roots of `f`.
It's given by `x ↦ x ^ p`, see `rootsExpandToRoots_apply`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Perfect/Variant0d7d8f3e57dee0527e6e9ca68a1478e8d6b7ab0cb34d8c9a116aaf468b341d0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Perfect/Variant0d7d8f3e57dee0527e6e9ca68a1478e8d6b7ab0cb34d8c9a116aaf468b341d0d.lean#L446).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0d1b91e6f83832416a87ea3335241f4b483851a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

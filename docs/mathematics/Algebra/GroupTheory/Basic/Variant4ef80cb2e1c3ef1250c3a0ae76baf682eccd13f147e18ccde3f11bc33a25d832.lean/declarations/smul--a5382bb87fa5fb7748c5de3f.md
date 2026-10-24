# smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:97f517463e39891c1490ba1602a8690ba2c54b0245f48a1f4da6d6b132a4f7fa",
  "kind": "def",
  "lexical_name": "smul",
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
  "slug": "smul--a5382bb87fa5fb7748c5de3f",
  "source": {
    "blob": "ad209f02c2755c8e3d1f143f54e613dad4893a13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 447,
    "line": 435,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a5382bb87fa5fb7748c5de3f419dc93af1663898c8123eaa600ff56c2c44c23e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:97f517463e39891c1490ba1602a8690ba2c54b0245f48a1f4da6d6b132a4f7fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 435–447.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def smul [DistribSMul K H] (c : K) (f : G →+c[a, b] H) : G →+c[a, c • b] H where
  toFun := c • ⇑f
  map_add_const' x := by simp [smul_add]

end AddZeroClass

section AddMonoid

variable {G : Type*} [AddMonoid G] {a : G}

/-- The map that sends `c` to a translation by `c`
as a monoid homomorphism from `Multiplicative G` to `G →+c[a, a] G`. -/
@[simps! -fullyApplied]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean#L435).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad209f02c2755c8e3d1f143f54e613dad4893a13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

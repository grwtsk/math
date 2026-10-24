# conjNeg_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d2928a03-1118-3281-370e-37afd7064186",
  "kind": "theorem",
  "lexical_name": "conjNeg_symm",
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
  "slug": "conjneg-symm--4d029a0ea12732c963631f7c",
  "source": {
    "blob": "ad209f02c2755c8e3d1f143f54e613dad4893a13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 474,
    "line": 465,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d029a0ea12732c963631f7c41ef94b484df77882a163a18548ab26c80533c54",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2928a03-1118-3281-370e-37afd7064186`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 465–474.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem conjNeg_symm : (conjNeg (a := a) (b := b)).symm = conjNeg := rfl

end AddCommGroup

section FloorRing

variable {R G : Type*} [Ring R] [LinearOrder R] [IsStrictOrderedRing R] [FloorRing R] [AddGroup G]
  (a : G)

/-- A map `f : R →+c[1, a] G` is defined by its values on `Set.Ico 0 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant4ef80cb2e1c3ef1250c3a0ae76baf682eccd13f147e18ccde3f11bc33a25d832.lean#L465).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad209f02c2755c8e3d1f143f54e613dad4893a13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

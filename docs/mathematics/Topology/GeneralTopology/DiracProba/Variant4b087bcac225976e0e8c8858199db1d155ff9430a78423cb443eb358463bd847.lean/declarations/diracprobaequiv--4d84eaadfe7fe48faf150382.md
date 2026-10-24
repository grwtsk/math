# diracProbaEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9380a576d393eef7aacd53cc463fa09e00b43128e855f445e304dd04339dfab7",
  "kind": "def",
  "lexical_name": "diracProbaEquiv",
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
  "slug": "diracprobaequiv--4d84eaadfe7fe48faf150382",
  "source": {
    "blob": "0de6275ad78f936ad4c7dbfbf6fa838b71a91e50",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 139,
    "path": "GRWTSK/Topology/GeneralTopology/DiracProba/Variant4b087bcac225976e0e8c8858199db1d155ff9430a78423cb443eb358463bd847.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4d84eaadfe7fe48faf150382dfd916519e01e9dc42851ae54dee28fd84028660",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DiracProba/Variant4b087bcac225976e0e8c8858199db1d155ff9430a78423cb443eb358463bd847.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9380a576d393eef7aacd53cc463fa09e00b43128e855f445e304dd04339dfab7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def diracProbaEquiv [T0Space X] : X ≃ range (diracProba (X := X)) where
  toFun := fun x ↦ ⟨diracProba x, by exact mem_range_self x⟩
  invFun := diracProbaInverse
  left_inv x := by apply diracProbaInverse_eq; rfl
  right_inv μ := Subtype.ext (by simp only [diracProba_diracProbaInverse])

/-- The composition of `diracProbaEquiv.symm` and `diracProba` is the subtype inclusion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DiracProba/Variant4b087bcac225976e0e8c8858199db1d155ff9430a78423cb443eb358463bd847.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DiracProba/Variant4b087bcac225976e0e8c8858199db1d155ff9430a78423cb443eb358463bd847.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0de6275ad78f936ad4c7dbfbf6fa838b71a91e50` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

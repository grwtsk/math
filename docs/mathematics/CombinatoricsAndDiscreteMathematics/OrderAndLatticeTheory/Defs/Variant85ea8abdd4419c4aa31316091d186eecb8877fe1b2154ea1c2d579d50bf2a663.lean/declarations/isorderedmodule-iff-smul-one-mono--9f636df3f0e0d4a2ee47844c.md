# isOrderedModule_iff_smul_one_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0fafe025-5461-fd5e-e35b-c21d80b81b2e",
  "kind": "theorem",
  "lexical_name": "isOrderedModule_iff_smul_one_mono",
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
  "slug": "isorderedmodule-iff-smul-one-mono--9f636df3f0e0d4a2ee47844c",
  "source": {
    "blob": "b03cf7f113b73ed238798c1a630f6b44cf1de1e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 706,
    "line": 694,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant85ea8abdd4419c4aa31316091d186eecb8877fe1b2154ea1c2d579d50bf2a663.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f636df3f0e0d4a2ee47844c6aec396015d3c2296d6bd2bb07505075f7bb873e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant85ea8abdd4419c4aa31316091d186eecb8877fe1b2154ea1c2d579d50bf2a663.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0fafe025-5461-fd5e-e35b-c21d80b81b2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 694–706.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isOrderedModule_iff_smul_one_mono
    [MulOneClass β] [ZeroLEOneClass β] [PosMulMono β] [MulPosMono β] [IsScalarTower α β β] :
    IsOrderedModule α β ↔ Monotone (fun x : α ↦ x • (1 : β)) where
  mp _ := smul_one_mono _
  mpr := IsOrderedModule.of_smul_one_mono

end Preorder

section PartialOrder
variable [PartialOrder α] [Preorder β]

/-- A constructor for `PosSMulMono` requiring you to prove `b₁ ≤ b₂ → a • b₁ ≤ a • b₂` only when
`0 < a` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant85ea8abdd4419c4aa31316091d186eecb8877fe1b2154ea1c2d579d50bf2a663.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant85ea8abdd4419c4aa31316091d186eecb8877fe1b2154ea1c2d579d50bf2a663.lean#L694).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b03cf7f113b73ed238798c1a630f6b44cf1de1e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

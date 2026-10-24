# Fintype.orderIsoFinOfCardEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:30fa2af0ecaeb3d1b8e0b1c3562686d707f809779a744fdf3435d03f95f2c9af",
  "kind": "def",
  "lexical_name": "Fintype.orderIsoFinOfCardEq",
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
  "slug": "fintype-orderisofinofcardeq--0728221c57b2ebd02d4d1740",
  "source": {
    "blob": "69da4dbf3097823736b939bf05dd300b8430890c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 353,
    "line": 347,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0728221c57b2ebd02d4d17406c0e24b50649e0c242dc7411a32b5c6e643fb298",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:30fa2af0ecaeb3d1b8e0b1c3562686d707f809779a744fdf3435d03f95f2c9af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 347–353.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Fintype.orderIsoFinOfCardEq
    (α : Type*) [LinearOrder α] [Fintype α] {k : ℕ} (h : Fintype.card α = k) :
    Fin k ≃o α :=
  (Finset.univ.orderIsoOfFin h).trans
    ((Set.orderIsoOfEq _ _ Finset.coe_univ).trans OrderIso.Set.univ)

/-- Any finite linear order order-embeds into any infinite linear order. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Sort/Variant0ae4690171d1be49877d17c21e10d30b1602c29810437f7c4578ecfcba86b641.lean#L347).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69da4dbf3097823736b939bf05dd300b8430890c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

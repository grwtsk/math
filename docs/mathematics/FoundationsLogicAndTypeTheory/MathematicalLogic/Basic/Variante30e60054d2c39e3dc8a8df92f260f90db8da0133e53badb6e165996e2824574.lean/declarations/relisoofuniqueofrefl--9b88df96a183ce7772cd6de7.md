# relIsoOfUniqueOfRefl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8174bda3881cf63df1ae7121957eab0b58d4f3846882ada5804f354b16c743c2",
  "kind": "def",
  "lexical_name": "relIsoOfUniqueOfRefl",
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
  "slug": "relisoofuniqueofrefl--9b88df96a183ce7772cd6de7",
  "source": {
    "blob": "342f9b4ca3e105468f04a5b43cd4a7623a1b2fee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 874,
    "line": 869,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante30e60054d2c39e3dc8a8df92f260f90db8da0133e53badb6e165996e2824574.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9b88df96a183ce7772cd6de7dfc06b6b74a21c8479a7cfa9a99dbb6abdf5ca30",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante30e60054d2c39e3dc8a8df92f260f90db8da0133e53badb6e165996e2824574.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8174bda3881cf63df1ae7121957eab0b58d4f3846882ada5804f354b16c743c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 869–874.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def relIsoOfUniqueOfRefl (r : α → α → Prop) (s : β → β → Prop) [IsRefl α r] [IsRefl β s]
    [Unique α] [Unique β] : r ≃r s :=
  ⟨Equiv.equivOfUnique α β, iff_of_true (rel_of_subsingleton s _ _) (rel_of_subsingleton r _ _)⟩
#align rel_iso.rel_iso_of_unique_of_refl RelIso.relIsoOfUniqueOfRefl

end RelIso
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante30e60054d2c39e3dc8a8df92f260f90db8da0133e53badb6e165996e2824574.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante30e60054d2c39e3dc8a8df92f260f90db8da0133e53badb6e165996e2824574.lean#L869).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `342f9b4ca3e105468f04a5b43cd4a7623a1b2fee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

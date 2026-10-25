# gi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2a51f550162c120d7f7ce7ac7254186f6a7b07e4a40d0a7b98d13b6707e156ba",
  "kind": "def",
  "lexical_name": "gi",
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
  "slug": "gi--fc9b9b8bfe0bb667c8f03acc",
  "source": {
    "blob": "61258d1cf3163882137c4b64371e5b87a861a1e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 206,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fc9b9b8bfe0bb667c8f03acc0e7ec88eeaa478c0f120e53a95f752302052eb6d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2a51f550162c120d7f7ce7ac7254186f6a7b07e4a40d0a7b98d13b6707e156ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def gi : GaloisInsertion toRegular ((↑) : Regular α → α)
    where
  choice a ha := ⟨a, ha.antisymm le_compl_compl⟩
  gc _ b :=
    coe_le_coe.symm.trans <|
      ⟨le_compl_compl.trans, fun h => (compl_anti <| compl_anti h).trans_eq b.2⟩
  le_l_u _ := le_compl_compl
  choice_eq _ ha := coe_injective <| le_compl_compl.antisymm ha
#align heyting.regular.gi Heyting.Regular.gi

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61258d1cf3163882137c4b64371e5b87a861a1e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

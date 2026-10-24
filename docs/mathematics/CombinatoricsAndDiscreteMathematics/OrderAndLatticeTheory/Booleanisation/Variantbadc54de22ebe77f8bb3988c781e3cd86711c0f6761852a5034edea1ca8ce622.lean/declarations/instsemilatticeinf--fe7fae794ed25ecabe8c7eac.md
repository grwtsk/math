# instSemilatticeInf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:38cc213f15803b0023ce822b6a7d29908f08c8781611252aa1c06a6bbd4a3435",
  "kind": "instance",
  "lexical_name": "instSemilatticeInf",
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
  "slug": "instsemilatticeinf--fe7fae794ed25ecabe8c7eac",
  "source": {
    "blob": "0e15db43a4b927e7635fd4eddda9ef36b76eeee5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 216,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fe7fae794ed25ecabe8c7eac92f059f8207e6fffcf8fb9b87829affaf9562168",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:38cc213f15803b0023ce822b6a7d29908f08c8781611252aa1c06a6bbd4a3435`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instSemilatticeInf : SemilatticeInf (Booleanisation α) where
  inf x y := min x y
  inf_le_left
    | lift a, lift b => LE.lift inf_le_left
    | lift a, comp b => LE.lift sdiff_le
    | comp a, lift b => LE.sep disjoint_sdiff_self_left
    | comp a, comp b => LE.comp le_sup_left
  inf_le_right
    | lift a, lift b => LE.lift inf_le_right
    | lift a, comp b => LE.sep disjoint_sdiff_self_left
    | comp a, lift b => LE.lift sdiff_le
    | comp a, comp b => LE.comp le_sup_right
  le_inf
    | lift a, lift b, lift c, LE.lift hab, LE.lift hac => LE.lift <| le_inf hab hac
    | lift a, lift b, comp c, LE.lift hab, LE.sep hac => LE.lift <| le_sdiff.2 ⟨hab, hac⟩
    | lift a, comp b, lift c, LE.sep hab, LE.lift hac => LE.lift <| le_sdiff.2 ⟨hac, hab⟩
    | lift a, comp b, comp c, LE.sep hab, LE.sep hac => LE.sep <| hab.sup_right hac
    | comp a, comp b, comp c, LE.comp hba, LE.comp hca => LE.comp <| sup_le hba hca

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e15db43a4b927e7635fd4eddda9ef36b76eeee5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

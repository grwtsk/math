# instBooleanAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:141af07379e8d65b182b84cef6877df47198cd224cf20035439f414360f2ff57",
  "kind": "instance",
  "lexical_name": "instBooleanAlgebra",
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
  "slug": "instbooleanalgebra--656bbd76890bad56e8df44e6",
  "source": {
    "blob": "0e15db43a4b927e7635fd4eddda9ef36b76eeee5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 261,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:656bbd76890bad56e8df44e65d7ce7abeface571e4de5f6f91e9ae12305bda2a",
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

Occurrence: `declaration:141af07379e8d65b182b84cef6877df47198cd224cf20035439f414360f2ff57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instBooleanAlgebra : BooleanAlgebra (Booleanisation α) where
  le_top _ := le_top
  bot_le _ := bot_le
  inf_compl_le_bot
    | lift a => by simp
    | comp a => by simp
  top_le_sup_compl
    | lift a => by simp
    | comp a => by simp
  sdiff_eq
    | lift a, lift b => by simp
    | lift a, comp b => by simp
    | comp a, lift b => by simp
    | comp a, comp b => by simp

/-- The embedding from a generalised Boolean algebra to its generated Boolean algebra. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variantbadc54de22ebe77f8bb3988c781e3cd86711c0f6761852a5034edea1ca8ce622.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e15db43a4b927e7635fd4eddda9ef36b76eeee5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

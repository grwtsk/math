# OrderDual.semilatticeSup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ad83a442aef07b9688c72e7b0c5f93ef4945bf020397f81b1d19bcc1ed85fcd3",
  "kind": "instance",
  "lexical_name": "OrderDual.semilatticeSup",
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
  "slug": "orderdual-semilatticesup--9eb5bb1f03512e413b64b443",
  "source": {
    "blob": "cffc6a52558269441504791aacfe2fd257f57c3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 378,
    "line": 372,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantc9df0668c9ff33073d88e3f535bf7f2089463128fa456bc9e08c75f2172e6e41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9eb5bb1f03512e413b64b44390b4f8719667bc58b44251aabc12c02ca23ed6f0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantc9df0668c9ff33073d88e3f535bf7f2089463128fa456bc9e08c75f2172e6e41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ad83a442aef07b9688c72e7b0c5f93ef4945bf020397f81b1d19bcc1ed85fcd3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 372–378.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance OrderDual.semilatticeSup (α) [SemilatticeInf α] : SemilatticeSup αᵒᵈ where
  __ := inferInstanceAs (PartialOrder αᵒᵈ)
  __ := inferInstanceAs (Sup αᵒᵈ)
  le_sup_left := @SemilatticeInf.inf_le_left α _
  le_sup_right := @SemilatticeInf.inf_le_right α _
  sup_le := fun _ _ _ hca hcb => @SemilatticeInf.le_inf α _ _ _ _ hca hcb

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantc9df0668c9ff33073d88e3f535bf7f2089463128fa456bc9e08c75f2172e6e41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantc9df0668c9ff33073d88e3f535bf7f2089463128fa456bc9e08c75f2172e6e41.lean#L372).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cffc6a52558269441504791aacfe2fd257f57c3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

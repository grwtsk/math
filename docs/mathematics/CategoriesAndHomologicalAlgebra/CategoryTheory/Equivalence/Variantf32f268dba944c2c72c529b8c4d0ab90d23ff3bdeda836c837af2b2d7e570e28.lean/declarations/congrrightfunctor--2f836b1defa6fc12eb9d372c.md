# congrRightFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c13ebb7249c9a790b5a2a1837ea2bf161d39b10c1832b293c09023f37c9efe8e",
  "kind": "def",
  "lexical_name": "congrRightFunctor",
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
  "slug": "congrrightfunctor--2f836b1defa6fc12eb9d372c",
  "source": {
    "blob": "4d61a0fbe9732519fd0a9f6bf1ac240aaaf9a079",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 444,
    "line": 431,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantf32f268dba944c2c72c529b8c4d0ab90d23ff3bdeda836c837af2b2d7e570e28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2f836b1defa6fc12eb9d372c8bcd81c47bb017c142964b4611e5618276055cc8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantf32f268dba944c2c72c529b8c4d0ab90d23ff3bdeda836c837af2b2d7e570e28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c13ebb7249c9a790b5a2a1837ea2bf161d39b10c1832b293c09023f37c9efe8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 431–444.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def congrRightFunctor : (C ≌ D) ⥤ ((E ⥤ C) ≌ (E ⥤ D)) where
  obj e := e.congrRight
  map {e f} α := mkHom <| (whiskeringRight _ _ _).map <| asNatTrans α

section CancellationLemmas

variable (e : C ≌ D)

/- We need special forms of `cancel_natIso_hom_right(_assoc)` and
`cancel_natIso_inv_right(_assoc)` for units and counits, because neither `simp` or `rw` will apply
those lemmas in this setting without providing `e.unitIso` (or similar) as an explicit argument.
We also provide the lemmas for length four compositions, since they're occasionally useful.
(e.g. in proving that equivalences take monos to monos) -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantf32f268dba944c2c72c529b8c4d0ab90d23ff3bdeda836c837af2b2d7e570e28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantf32f268dba944c2c72c529b8c4d0ab90d23ff3bdeda836c837af2b2d7e570e28.lean#L431).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d61a0fbe9732519fd0a9f6bf1ac240aaaf9a079` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

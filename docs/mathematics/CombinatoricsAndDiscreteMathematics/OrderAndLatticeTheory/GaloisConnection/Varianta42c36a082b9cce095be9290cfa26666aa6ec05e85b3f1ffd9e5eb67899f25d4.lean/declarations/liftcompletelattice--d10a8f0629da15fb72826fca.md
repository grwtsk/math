# liftCompleteLattice

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:16b43d620c1c831367449120682728dafcebf7bfb706dff1b029725b14718c26",
  "kind": "def",
  "lexical_name": "liftCompleteLattice",
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
  "slug": "liftcompletelattice--d10a8f0629da15fb72826fca",
  "source": {
    "blob": "c96d8bb0c1822585ec31a13a9bdc4fa21a255254",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 941,
    "line": 930,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Varianta42c36a082b9cce095be9290cfa26666aa6ec05e85b3f1ffd9e5eb67899f25d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d10a8f0629da15fb72826fca1ea8fc22d387a9f09fa8eb76f1e9bc4a72a8254c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Varianta42c36a082b9cce095be9290cfa26666aa6ec05e85b3f1ffd9e5eb67899f25d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:16b43d620c1c831367449120682728dafcebf7bfb706dff1b029725b14718c26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 930–941.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def liftCompleteLattice [CompleteLattice β] (gi : GaloisCoinsertion l u) : CompleteLattice α :=
  { @OrderDual.completeLattice αᵒᵈ gi.dual.liftCompleteLattice with
    sInf := fun s => u (sInf (l '' s))
    sSup := fun s => gi.choice (sSup (l '' s)) _ }
#align galois_coinsertion.lift_complete_lattice GaloisCoinsertion.liftCompleteLattice

end lift

end GaloisCoinsertion

/-- If `α` is a partial order with bottom element (e.g., `ℕ`, `ℝ≥0`), then `WithBot.unbot' ⊥` and
coercion form a Galois insertion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Varianta42c36a082b9cce095be9290cfa26666aa6ec05e85b3f1ffd9e5eb67899f25d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Varianta42c36a082b9cce095be9290cfa26666aa6ec05e85b3f1ffd9e5eb67899f25d4.lean#L930).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c96d8bb0c1822585ec31a13a9bdc4fa21a255254` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

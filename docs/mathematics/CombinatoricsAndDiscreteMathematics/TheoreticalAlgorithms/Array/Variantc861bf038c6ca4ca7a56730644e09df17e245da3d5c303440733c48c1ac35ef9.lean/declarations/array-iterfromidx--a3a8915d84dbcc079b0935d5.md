# Array.iterFromIdx

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fe4459a95cce7fa58cabaa014171f95b78b64d4ab7dbe8cca09de6e2554319bf",
  "kind": "def",
  "lexical_name": "Array.iterFromIdx",
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
  "slug": "array-iterfromidx--a3a8915d84dbcc079b0935d5",
  "source": {
    "blob": "8c3c29236693e6bfb3be15640e061d543b57bdd9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 33,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variantc861bf038c6ca4ca7a56730644e09df17e245da3d5c303440733c48c1ac35ef9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a3a8915d84dbcc079b0935d543a18f51d543d98da76cec4e9b6b2d16ad19e517",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variantc861bf038c6ca4ca7a56730644e09df17e245da3d5c303440733c48c1ac35ef9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fe4459a95cce7fa58cabaa014171f95b78b64d4ab7dbe8cca09de6e2554319bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Array.iterFromIdx {α : Type w} (l : Array α) (pos : Nat) :
    Iter (α := ArrayIterator α) α :=
  ((l.iterFromIdxM Id pos).toIter : Iter α)

/--
Returns a finite iterator for the given array.
The iterator yields the elements of the array in order and then terminates.

The monadic version of this iterator is `Array.iterM`.

**Termination properties:**

* `Finite` instance: always
* `Productive` instance: always
-/
@[cbv_opaque, always_inline, inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variantc861bf038c6ca4ca7a56730644e09df17e245da3d5c303440733c48c1ac35ef9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variantc861bf038c6ca4ca7a56730644e09df17e245da3d5c303440733c48c1ac35ef9.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c3c29236693e6bfb3be15640e061d543b57bdd9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# Matroid.ExistsMaximalSubsetProperty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:99d1cd8de7563d98541d53c1f79b8c8134beb0beeb9b86424d50a35fed09bcf1",
  "kind": "def",
  "lexical_name": "Matroid.ExistsMaximalSubsetProperty",
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
  "slug": "matroid-existsmaximalsubsetproperty--997ce00e234abb7d19b07700",
  "source": {
    "blob": "a0cf43b78f80eb1c6a60c70283009a88078d44b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 179,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantd67ac4aa1362336ace8dd451562629cb27c9ced5c37cf25d85dfba526d14a62f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:997ce00e234abb7d19b07700c57b4fa2fefd22c847d3501a2473f61e69442170",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variantd67ac4aa1362336ace8dd451562629cb27c9ced5c37cf25d85dfba526d14a62f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:99d1cd8de7563d98541d53c1f79b8c8134beb0beeb9b86424d50a35fed09bcf1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Matroid.ExistsMaximalSubsetProperty {α : Type*} (P : Set α → Prop) (X : Set α) : Prop :=
  ∀ I, P I → I ⊆ X → ∃ J, I ⊆ J ∧ Maximal (fun K ↦ P K ∧ K ⊆ X) J

/-- A `Matroid α` is a ground set `E` of type `Set α`, and a nonempty collection of its subsets
satisfying the exchange property and the maximal subset property. Each such set is called a
`Base` of `M`. An `Indep`endent set is just a set contained in a base, but we include this
predicate as a structure field for better definitional properties.

In most cases, using this definition directly is not the best way to construct a matroid,
since it requires specifying both the bases and independent sets. If the bases are known,
use `Matroid.ofBase` or a variant. If just the independent sets are known,
define an `IndepMatroid`, and then use `IndepMatroid.matroid`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variantd67ac4aa1362336ace8dd451562629cb27c9ced5c37cf25d85dfba526d14a62f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantd67ac4aa1362336ace8dd451562629cb27c9ced5c37cf25d85dfba526d14a62f.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0cf43b78f80eb1c6a60c70283009a88078d44b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

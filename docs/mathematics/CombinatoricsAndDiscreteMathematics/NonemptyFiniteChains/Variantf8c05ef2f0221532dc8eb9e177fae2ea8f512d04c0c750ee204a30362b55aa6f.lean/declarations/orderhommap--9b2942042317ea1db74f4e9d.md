# orderHomMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9a08ffaefb108863b4e10867b7777919d951b36f1cf97432cd897b8bdaa3398b",
  "kind": "def",
  "lexical_name": "orderHomMap",
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
  "slug": "orderhommap--9b2942042317ea1db74f4e9d",
  "source": {
    "blob": "07213f39fda6f251f79492e31dc9421814299323",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 76,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NonemptyFiniteChains/Variantf8c05ef2f0221532dc8eb9e177fae2ea8f512d04c0c750ee204a30362b55aa6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9b2942042317ea1db74f4e9d9a36e8ef1e6be23a02f66f845313ca797517a622",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/NonemptyFiniteChains/Variantf8c05ef2f0221532dc8eb9e177fae2ea8f512d04c0c750ee204a30362b55aa6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9a08ffaefb108863b4e10867b7777919d951b36f1cf97432cd897b8bdaa3398b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def orderHomMap (f : X →o Y) :
    NonemptyFiniteChains X →o NonemptyFiniteChains Y where
  toFun s := map s f
  monotone' a b h x hx := by
    simp only [mem_map_iff] at hx ⊢
    obtain ⟨x, hx, rfl⟩ := hx
    exact ⟨x, h hx, rfl⟩

end NonemptyFiniteChains

end PartialOrder

open PartialOrder in
/-- The functor `PartOrd ⥤ PartOrd` which sends a partially ordered type `X`
to `NonemptyFiniteChains X`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/NonemptyFiniteChains/Variantf8c05ef2f0221532dc8eb9e177fae2ea8f512d04c0c750ee204a30362b55aa6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/NonemptyFiniteChains/Variantf8c05ef2f0221532dc8eb9e177fae2ea8f512d04c0c750ee204a30362b55aa6f.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07213f39fda6f251f79492e31dc9421814299323` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

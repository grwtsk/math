# toCycle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3deed6649da24cf1f1e20ccbf47facde24d200bd239b333b0660d4216091aae0",
  "kind": "def",
  "lexical_name": "toCycle",
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
  "slug": "tocycle--3e2dc58d86f815c9d139a56a",
  "source": {
    "blob": "c8ff7449f44f3ff88d2883b521aa1915b4edf12a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 371,
    "line": 362,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3e2dc58d86f815c9d139a56a3060305910254b63416f3065576bb47cfcd1a3d2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3deed6649da24cf1f1e20ccbf47facde24d200bd239b333b0660d4216091aae0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 362–371.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toCycle (f : Perm α) (hf : IsCycle f) : Cycle α :=
  Multiset.recOn (Finset.univ : Finset α).val (Quot.mk _ [])
    (fun x _ l => if f x = x then l else toList f x)
    (by
      intro x y _ s
      refine heq_of_eq ?_
      split_ifs with hx hy hy <;> try rfl
      have hc : SameCycle f x y := IsCycle.sameCycle hf hx hy
      exact Quotient.sound' hc.toList_isRotated)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean#L362).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8ff7449f44f3ff88d2883b521aa1915b4edf12a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

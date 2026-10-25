# prodQuotientEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:75d62a20509e69bd6fa778f8d2505da98404f80d354952066b3cac0ac1f98eb1",
  "kind": "def",
  "lexical_name": "prodQuotientEquiv",
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
  "slug": "prodquotientequiv--9c9a9fe9818316131c5fb658",
  "source": {
    "blob": "5ecd524f73cf763b8e5803f8226397db5ee8cdd6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 112,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc0c0d6083e5fd6520a4489ae1b25809c4bbb41f0b2fe7685b969cd27e7089bfd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9c9a9fe9818316131c5fb658dab7e930f15c7b356ac91de75ddbf08ef6c9f352",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc0c0d6083e5fd6520a4489ae1b25809c4bbb41f0b2fe7685b969cd27e7089bfd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:75d62a20509e69bd6fa778f8d2505da98404f80d354952066b3cac0ac1f98eb1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def prodQuotientEquiv (r : Setoid α) (s : Setoid β) :
    Quotient r × Quotient s ≃ Quotient (r.prod s) where
  toFun | (x, y) => Quotient.map₂ Prod.mk (fun _ _ hx _ _ hy ↦ ⟨hx, hy⟩) x y
  invFun q := Quotient.liftOn' q (fun xy ↦ (Quotient.mk'' xy.1, Quotient.mk'' xy.2))
    fun x y hxy ↦ Prod.ext (by simpa using hxy.1) (by simpa using hxy.2)
  left_inv q := by
    rcases q with ⟨qa, qb⟩
    exact Quotient.inductionOn₂' qa qb fun _ _ ↦ rfl
  right_inv q := by
    simp only
    refine Quotient.inductionOn' q fun _ ↦ rfl

/-- A bijection between an indexed product of quotients and the quotient by the product of the
equivalence relations. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc0c0d6083e5fd6520a4489ae1b25809c4bbb41f0b2fe7685b969cd27e7089bfd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc0c0d6083e5fd6520a4489ae1b25809c4bbb41f0b2fe7685b969cd27e7089bfd.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ecd524f73cf763b8e5803f8226397db5ee8cdd6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

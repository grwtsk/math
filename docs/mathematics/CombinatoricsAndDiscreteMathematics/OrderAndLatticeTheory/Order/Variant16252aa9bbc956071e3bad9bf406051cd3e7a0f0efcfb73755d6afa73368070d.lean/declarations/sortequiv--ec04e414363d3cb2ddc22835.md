# sortEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3821e64a8848efc7f24e5ad1aed9344e3be84a93e028f97f6c4666b4d2cb968f",
  "kind": "def",
  "lexical_name": "sortEquiv",
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
  "slug": "sortequiv--ec04e414363d3cb2ddc22835",
  "source": {
    "blob": "c2445cd890633ca453f62f23684bd19ce3f36ce5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 35,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant16252aa9bbc956071e3bad9bf406051cd3e7a0f0efcfb73755d6afa73368070d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec04e414363d3cb2ddc22835eb97d6e44f34b12c67cd195cf76532ee1fffd8cc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant16252aa9bbc956071e3bad9bf406051cd3e7a0f0efcfb73755d6afa73368070d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3821e64a8848efc7f24e5ad1aed9344e3be84a93e028f97f6c4666b4d2cb968f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sortEquiv [LinearOrder α] : Sym2 α ≃ { p : α × α // p.1 ≤ p.2 } where
  toFun s := ⟨(s.inf, s.sup), Sym2.inf_le_sup _⟩
  invFun p := Sym2.mk p
  left_inv := Sym2.ind fun a b => mk_eq_mk_iff.mpr <| by
    cases le_total a b with
    | inl h => simp [h]
    | inr h => simp [h]
  right_inv := Subtype.rec <| Prod.rec fun x y hxy =>
    Subtype.ext <| Prod.ext (by simp [hxy]) (by simp [hxy])

/-- In a linear order, two symmetric squares are equal if and only if
they have the same infimum and supremum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant16252aa9bbc956071e3bad9bf406051cd3e7a0f0efcfb73755d6afa73368070d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant16252aa9bbc956071e3bad9bf406051cd3e7a0f0efcfb73755d6afa73368070d.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2445cd890633ca453f62f23684bd19ce3f36ce5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

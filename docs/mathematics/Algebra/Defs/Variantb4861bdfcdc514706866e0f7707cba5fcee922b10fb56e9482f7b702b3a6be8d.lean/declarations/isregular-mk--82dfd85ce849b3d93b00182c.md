# isRegular_mk'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d6ad52e7-0d90-20da-8a7a-a5ef0bae2e0e",
  "kind": "lemma",
  "lexical_name": "isRegular_mk'",
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
  "slug": "isregular-mk--82dfd85ce849b3d93b00182c",
  "source": {
    "blob": "cd24e373b44241083605b53458dd44c516c6767c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 358,
    "line": 347,
    "path": "GRWTSK/Algebra/Defs/Variantb4861bdfcdc514706866e0f7707cba5fcee922b10fb56e9482f7b702b3a6be8d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82dfd85ce849b3d93b00182ca9c8d9e968f181b37e4a70773182e3d36d184f3e",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variantb4861bdfcdc514706866e0f7707cba5fcee922b10fb56e9482f7b702b3a6be8d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6ad52e7-0d90-20da-8a7a-a5ef0bae2e0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 347–358.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma isRegular_mk' (hM : ∀ m ∈ M, IsRegular m) {r : R} {m : M} :
    IsRegular (IsLocalization.mk' S r m) ↔ IsRegular r := by
  have (n : M) (x y : R) : n * x = n * y ↔ x = y := (hM _ n.2).1.eq_iff
  simp +contextual only [← isLeftRegular_iff_isRegular, IsLeftRegular, Function.Injective,
    (mk'_surjective M).forall, ← mk'_mul, Prod.forall, Subtype.forall, IsLocalization.eq,
    Submonoid.coe_mul, this, exists_const, mul_assoc]
  simp_rw [← mul_left_comm r]
  exact ⟨fun h a b ↦ by simpa using h a 1 M.one_mem b 1 M.one_mem, fun h ha s hs b t ht ↦ @h _ _⟩

include M in
variable (M) in
/-- Any localization of a commutative semiring without zero-divisors also has no zero-divisors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variantb4861bdfcdc514706866e0f7707cba5fcee922b10fb56e9482f7b702b3a6be8d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variantb4861bdfcdc514706866e0f7707cba5fcee922b10fb56e9482f7b702b3a6be8d.lean#L347).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd24e373b44241083605b53458dd44c516c6767c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# of_surjective_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f5cc2a3-9555-cd68-2d54-83697ab7eeda",
  "kind": "theorem",
  "lexical_name": "of_surjective_iff",
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
  "slug": "of-surjective-iff--61596b52bdce91c059184a37",
  "source": {
    "blob": "cca4090bf3f9bb8b425ffdcd6e245f10e221b333",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 663,
    "line": 647,
    "path": "GRWTSK/Algebra/Basic/Variantbbc49000d413be4e9a474c660e8a915ed8754e559b23ee4036002816aaeb5519.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61596b52bdce91c059184a37bd2422ea63bcd850fdfedf07d48cb02ef08cb05f",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantbbc49000d413be4e9a474c660e8a915ed8754e559b23ee4036002816aaeb5519.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f5cc2a3-9555-cd68-2d54-83697ab7eeda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 647–663.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_surjective_iff : Function.Surjective (of I M) ↔ IsPrecomplete I M := by
  constructor
  · refine fun h ↦ ⟨fun f hmn ↦ ?_⟩
    let u : AdicCompletion I M := ⟨fun n ↦ Submodule.Quotient.mk (f n), fun c ↦ (hmn c).symm⟩
    obtain ⟨x, hx⟩ := h u
    refine ⟨x, fun n ↦ ?_⟩
    simp only [SModEq]
    rw [← mkQ_apply _ x, ← eval_of, hx]
    simp [u]
  · intro h u
    choose x hx using (fun n ↦ Submodule.Quotient.mk_surjective (I ^ n • ⊤ : Submodule R M) (u.1 n))
    obtain ⟨a, ha⟩ := h.prec (f := x) (fun hmn ↦ by rw [SModEq, hx, ← u.2 hmn, ← hx]; simp)
    use a
    ext n
    simpa [SModEq, ← eval_of, ha, ← hx] using (ha n).symm

variable (I M) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantbbc49000d413be4e9a474c660e8a915ed8754e559b23ee4036002816aaeb5519.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantbbc49000d413be4e9a474c660e8a915ed8754e559b23ee4036002816aaeb5519.lean#L647).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cca4090bf3f9bb8b425ffdcd6e245f10e221b333` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

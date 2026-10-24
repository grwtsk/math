# coeff_mem_of_mem_map_C

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:04aac7e9-8bf5-019d-5f64-1680c3c8c4d8",
  "kind": "theorem",
  "lexical_name": "coeff_mem_of_mem_map_C",
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
  "slug": "coeff-mem-of-mem-map-c--b735d5575221bd22596833ab",
  "source": {
    "blob": "eb0d1eb3a256de86634359d67bdec1c9c214d898",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 44,
    "path": "GRWTSK/Algebra/Ideal/Variantfade392e0ef36c257b2a8074e29deb29b2ba48024fc68bd2f64f566163fd1fdb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b735d5575221bd22596833ab68d83825cca4044460f88c6741630b16b4e38bb8",
  "verification": {
    "reference": "docs/verification/Algebra/Ideal/Variantfade392e0ef36c257b2a8074e29deb29b2ba48024fc68bd2f64f566163fd1fdb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04aac7e9-8bf5-019d-5f64-1680c3c8c4d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_mem_of_mem_map_C (h : p ∈ I.map C) : ∀ m : σ →₀ ℕ, p.coeff m ∈ I := by
  classical
  refine Submodule.span_induction (fun f hf n => ?_) ?_ ?_ (fun f g _ hg n => ?_) h
  · obtain ⟨x, _, hx⟩ := (Set.mem_image _ _ _).mp hf
    rw [← hx, coeff_C]
    by_cases h : n = 0
    <;> simp_all
  · simp
  · exact fun f g _ _ hf hg n => by simp [I.add_mem (hf n) (hg n)]
  · exact I.sum_mem fun c _ => I.mul_mem_left (f.coeff c.fst) (hg c.snd)

/-- If every coefficient of `f` lies in `I`, and `I` is finitely generated,
then `f ∈ I.map C`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Ideal/Variantfade392e0ef36c257b2a8074e29deb29b2ba48024fc68bd2f64f566163fd1fdb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ideal/Variantfade392e0ef36c257b2a8074e29deb29b2ba48024fc68bd2f64f566163fd1fdb.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb0d1eb3a256de86634359d67bdec1c9c214d898` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

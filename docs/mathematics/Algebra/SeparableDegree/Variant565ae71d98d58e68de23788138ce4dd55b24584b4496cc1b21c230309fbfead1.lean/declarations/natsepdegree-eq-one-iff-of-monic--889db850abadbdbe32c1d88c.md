# natSepDegree_eq_one_iff_of_monic'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf544c29-fc22-82c7-d6b4-e64af5222d4f",
  "kind": "theorem",
  "lexical_name": "natSepDegree_eq_one_iff_of_monic'",
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
  "slug": "natsepdegree-eq-one-iff-of-monic--889db850abadbdbe32c1d88c",
  "source": {
    "blob": "a7daa8503eeedcf4200b20ca5388abfd77f3d18c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 548,
    "line": 535,
    "path": "GRWTSK/Algebra/SeparableDegree/Variant565ae71d98d58e68de23788138ce4dd55b24584b4496cc1b21c230309fbfead1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:889db850abadbdbe32c1d88cbf847095b64971e1d7da4fcc6f9787f7cb66f1bd",
  "verification": {
    "reference": "docs/verification/Algebra/SeparableDegree/Variant565ae71d98d58e68de23788138ce4dd55b24584b4496cc1b21c230309fbfead1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf544c29-fc22-82c7-d6b4-e64af5222d4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 535–548.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natSepDegree_eq_one_iff_of_monic' (q : ℕ) [ExpChar F q] (hm : f.Monic)
    (hi : Irreducible f) : f.natSepDegree = 1 ↔
    ∃ (n : ℕ) (y : F), f = expand F (q ^ n) (X - C y) := by
  refine ⟨fun h ↦ ?_, fun ⟨n, y, h⟩ ↦ ?_⟩
  · obtain ⟨g, h1, n, rfl⟩ := hi.hasSeparableContraction q
    have h2 : g.natDegree = 1 := by
      rwa [natSepDegree_expand _ q, h1.natSepDegree_eq_natDegree] at h
    rw [((monic_expand_iff <| expChar_pow_pos F q n).mp hm).eq_X_add_C h2]
    exact ⟨n, -(g.coeff 0), by rw [map_neg, sub_neg_eq_add]⟩
  rw [h, natSepDegree_expand _ q, natSepDegree_X_sub_C]

/-- A monic irreducible polynomial over a field `F` of exponential characteristic `q` has
separable degree one if and only if it is of the form `X ^ (q ^ n) - C y`
for some `n : ℕ` and `y : F`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SeparableDegree/Variant565ae71d98d58e68de23788138ce4dd55b24584b4496cc1b21c230309fbfead1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SeparableDegree/Variant565ae71d98d58e68de23788138ce4dd55b24584b4496cc1b21c230309fbfead1.lean#L535).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7daa8503eeedcf4200b20ca5388abfd77f3d18c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

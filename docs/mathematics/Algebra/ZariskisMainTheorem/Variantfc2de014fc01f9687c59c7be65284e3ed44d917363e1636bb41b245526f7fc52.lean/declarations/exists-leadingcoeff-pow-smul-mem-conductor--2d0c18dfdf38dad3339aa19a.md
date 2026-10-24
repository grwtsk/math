# exists_leadingCoeff_pow_smul_mem_conductor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:43196bca-bd38-5c54-f86b-8c466a09e322",
  "kind": "lemma",
  "lexical_name": "exists_leadingCoeff_pow_smul_mem_conductor",
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
  "slug": "exists-leadingcoeff-pow-smul-mem-conductor--2d0c18dfdf38dad3339aa19a",
  "source": {
    "blob": "a3f1e7dee44739a43e1e47c0de40ea175ad71eb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 240,
    "path": "GRWTSK/Algebra/ZariskisMainTheorem/Variantfc2de014fc01f9687c59c7be65284e3ed44d917363e1636bb41b245526f7fc52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d0c18dfdf38dad3339aa19a2febc2bb4bbc890eeee81522483f6f585c17aaa0",
  "verification": {
    "reference": "docs/verification/Algebra/ZariskisMainTheorem/Variantfc2de014fc01f9687c59c7be65284e3ed44d917363e1636bb41b245526f7fc52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43196bca-bd38-5c54-f86b-8c466a09e322`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_leadingCoeff_pow_smul_mem_conductor
    (hRS : integralClosure R S = ⊥) -- `IsIntegrallyClosedIn` but without injective assumption
    (hφ : φ.toRingHom.Finite) (hp : φ p * t ∈ conductor R (φ X)) :
    ∃ n, p.leadingCoeff ^ n • t ∈ conductor R (φ X) := by
  algebraize [φ.toRingHom]
  have : IsScalarTower R R[X] S := .of_algebraMap_eq' φ.comp_algebraMap.symm
  have (x : _) : ∃ n, p.leadingCoeff ^ n • (t * x) ∈ φ.range := by
    have : φ p * t * x ∈ φ.range := by simpa [← AlgHom.map_adjoin_singleton] using hp x
    obtain ⟨q, n, hn⟩ :=
      exists_isIntegral_leadingCoeff_pow_smul_sub_of_isIntegralElem_of_mul_mem_range φ _ p
        (hφ.to_isIntegral (t * x)) (by convert! this using 1; ring)
    obtain ⟨r, hr : algebraMap _ _ r = _⟩ := hRS.le hn
    exact ⟨n, (C r + q), by simp [← Polynomial.algebraMap_eq, -Polynomial.algebraMap_apply, hr]⟩
  choose n hn using this
  obtain ⟨s, hs⟩ := Module.Finite.fg_top (R := R[X]) (M := S)
  refine ⟨s.sup n, fun x ↦ ?_⟩
  rw [← AlgHom.map_adjoin_singleton, adjoin_X, Algebra.map_top, Algebra.smul_mul_assoc]
  induction hs.ge (Set.mem_univ x) using Submodule.span_induction with
  | mem x h =>
    rw [← Nat.sub_add_cancel (s.le_sup h), pow_add, mul_smul]
    exact Subalgebra.smul_mem _ (hn _) _
  | zero => simp
  | add x y _ _ hx hy => simpa only [mul_add, smul_add] using add_mem hx hy
  | smul a x hx IH =>
    rw [mul_smul_comm, smul_comm, Algebra.smul_def]
    exact mul_mem (AlgHom.mem_range_self _ _) IH

@[stacks 00PY]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ZariskisMainTheorem/Variantfc2de014fc01f9687c59c7be65284e3ed44d917363e1636bb41b245526f7fc52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ZariskisMainTheorem/Variantfc2de014fc01f9687c59c7be65284e3ed44d917363e1636bb41b245526f7fc52.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3f1e7dee44739a43e1e47c0de40ea175ad71eb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

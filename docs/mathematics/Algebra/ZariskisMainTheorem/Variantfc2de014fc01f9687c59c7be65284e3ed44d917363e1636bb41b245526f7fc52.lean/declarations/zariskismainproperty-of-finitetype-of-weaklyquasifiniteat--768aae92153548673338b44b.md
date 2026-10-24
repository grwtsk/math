# ZariskisMainProperty.of_finiteType_of_weaklyQuasiFiniteAt.

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e87bc7f-621e-33c2-809e-54dd9eacfcbd",
  "kind": "lemma",
  "lexical_name": "ZariskisMainProperty.of_finiteType_of_weaklyQuasiFiniteAt.",
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
  "slug": "zariskismainproperty-of-finitetype-of-weaklyquasifiniteat--768aae92153548673338b44b",
  "source": {
    "blob": "a3f1e7dee44739a43e1e47c0de40ea175ad71eb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 665,
    "line": 643,
    "path": "GRWTSK/Algebra/ZariskisMainTheorem/Variantfc2de014fc01f9687c59c7be65284e3ed44d917363e1636bb41b245526f7fc52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:768aae92153548673338b44b4161a4669e2e0e98bb96058444933f6abab41da9",
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

Occurrence: `result:8e87bc7f-621e-33c2-809e-54dd9eacfcbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 643–665.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ZariskisMainProperty.of_finiteType_of_weaklyQuasiFiniteAt.{u, v}
    {R : Type u} {S : Type v} [CommRing R]
    [CommRing S] [Algebra R S] [Algebra.FiniteType R S]
    (p : Ideal S) [p.IsPrime] [Algebra.WeaklyQuasiFiniteAt R p] : ZariskisMainProperty R p := by
  obtain ⟨n, f, hf⟩ := Algebra.FiniteType.iff_quotient_mvPolynomial''.mp ‹_›
  have : Small.{u} S := small_of_surjective hf
  have := ZariskisMainProperty.of_algHom_mvPolynomial (p.comap (Shrink.algEquiv R S).toRingHom)
    ((Shrink.algEquiv R S).symm.toAlgHom.comp f)
    (.of_surjective _ <| (Shrink.algEquiv R S).symm.surjective.comp hf)
  rw [zariskisMainProperty_iff'] at this ⊢
  obtain ⟨r, hr, H⟩ := this
  refine ⟨Shrink.algEquiv R S r, hr, fun x ↦ ?_⟩
  obtain ⟨m, hm⟩ := H ((Shrink.algEquiv R S).symm x)
  exact ⟨m, by simpa [-Shrink.algEquiv_apply, -Shrink.algEquiv_symm_apply]
    using hm.map (Shrink.algEquiv R S).toAlgHom⟩

/--
The algebraic version of **Zariski's Main Theorem**:
Given a finite type `R`-algebra `S` that is quasi-finite at a prime `p`,
there exists a `f ∉ p` such that `S[1/f]` is isomorphic to `R'[1/f]` where `R'` is the integral
closure of `R` in `S`.
-/
@[stacks 00Q9]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ZariskisMainTheorem/Variantfc2de014fc01f9687c59c7be65284e3ed44d917363e1636bb41b245526f7fc52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ZariskisMainTheorem/Variantfc2de014fc01f9687c59c7be65284e3ed44d917363e1636bb41b245526f7fc52.lean#L643).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3f1e7dee44739a43e1e47c0de40ea175ad71eb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

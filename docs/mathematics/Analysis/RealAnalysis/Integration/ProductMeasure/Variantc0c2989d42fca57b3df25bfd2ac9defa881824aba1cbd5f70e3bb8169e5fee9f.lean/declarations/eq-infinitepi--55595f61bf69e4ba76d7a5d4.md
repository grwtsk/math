# eq_infinitePi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c19b9d57-fe1c-a9db-4334-bd1a8ed2f658",
  "kind": "theorem",
  "lexical_name": "eq_infinitePi",
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
  "slug": "eq-infinitepi--55595f61bf69e4ba76d7a5d4",
  "source": {
    "blob": "79215f8240d02ec79682931184a2179091e4727f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 397,
    "line": 383,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ProductMeasure/Variantc0c2989d42fca57b3df25bfd2ac9defa881824aba1cbd5f70e3bb8169e5fee9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55595f61bf69e4ba76d7a5d4324c6f499995aa04e87e095fb1159648b3e987ad",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ProductMeasure/Variantc0c2989d42fca57b3df25bfd2ac9defa881824aba1cbd5f70e3bb8169e5fee9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c19b9d57-fe1c-a9db-4334-bd1a8ed2f658`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 383–397.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_infinitePi {ν : Measure (Π i, X i)}
    (hν : ∀ s : Finset ι, ∀ t : (i : ι) → Set (X i),
      (∀ i ∈ s, MeasurableSet (t i)) → ν (Set.pi s t) = ∏ i ∈ s, μ i (t i)) :
    ν = infinitePi μ := by
  refine (isProjectiveLimit_infinitePi μ).unique ?_ |>.symm
  refine fun s ↦ (pi_eq fun t ht ↦ ?_).symm
  classical
  rw [Measure.map_apply, restrict_preimage, hν, ← prod_attach, univ_eq_attach]
  · congr with i
    rw [dif_pos i.2]
  any_goals fun_prop
  · exact fun i hi ↦ dif_pos hi ▸ ht ⟨i, hi⟩
  · exact .univ_pi ht

-- TODO: add a version for an infinite product
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ProductMeasure/Variantc0c2989d42fca57b3df25bfd2ac9defa881824aba1cbd5f70e3bb8169e5fee9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ProductMeasure/Variantc0c2989d42fca57b3df25bfd2ac9defa881824aba1cbd5f70e3bb8169e5fee9f.lean#L383).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79215f8240d02ec79682931184a2179091e4727f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

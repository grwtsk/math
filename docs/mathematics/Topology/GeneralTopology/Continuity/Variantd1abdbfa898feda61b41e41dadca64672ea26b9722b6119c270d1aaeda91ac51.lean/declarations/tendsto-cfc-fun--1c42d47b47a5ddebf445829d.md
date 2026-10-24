# tendsto_cfc_fun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "44cd53bc76622f44aed7e388806ac3e32f701e37",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 83,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d1/d1abdbfa898feda61b41e41dadca64672ea26b9722b6119c270d1aaeda91ac51.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1b92414e-0073-0ad0-79a9-c8d89417e6df",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:68fe6f36-2178-5c74-b30c-cc5d64999101",
  "kind": "theorem",
  "lexical_name": "tendsto_cfc_fun",
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
  "slug": "tendsto-cfc-fun--1c42d47b47a5ddebf445829d",
  "source": {
    "blob": "44cd53bc76622f44aed7e388806ac3e32f701e37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 83,
    "path": "GRWTSK/Topology/GeneralTopology/Continuity/Variantd1abdbfa898feda61b41e41dadca64672ea26b9722b6119c270d1aaeda91ac51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c42d47b47a5ddebf445829daa6a911759fae6cc5dc731ad5ce681c340d3b1f3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuity/Variantd1abdbfa898feda61b41e41dadca64672ea26b9722b6119c270d1aaeda91ac51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68fe6f36-2178-5c74-b30c-cc5d64999101`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_cfc_fun {l : Filter X} {F : X → R → R} {f : R → R} {a : A}
    (h_tendsto : TendstoUniformlyOn F f l (spectrum R a))
    (hF : ∀ᶠ x in l, ContinuousOn (F x) (spectrum R a)) :
    Tendsto (fun x ↦ cfc (F x) a) l (𝓝 (cfc f a)) := by
  open scoped ContinuousFunctionalCalculus in
  obtain (rfl | hl) := l.eq_or_neBot
  · simp
  have hf := h_tendsto.continuousOn hF.frequently
  by_cases ha : p a
  · let s : Set X := {x | ContinuousOn (F x) (spectrum R a)}
    rw [← tendsto_comap'_iff (i := ((↑) : s → X)) (by simpa)]
    conv =>
      enter [1, x]
      rw [Function.comp_apply, cfc_apply (hf := x.2)]
    rw [cfc_apply ..]
    apply cfcHom_continuous _ |>.tendsto _ |>.comp
    rw [hf.tendsto_domRestrict_iff_tendstoUniformlyOn Subtype.property]
    intro t
    simp only [eventually_comap, Subtype.forall]
    gconvert h_tendsto t with ht x
    simp_all
  · simpa [cfc_apply_of_not_predicate a ha] using tendsto_const_nhds

/-- If `f : X → R → R` tends to `f x₀` uniformly (along `𝓝 x₀`) on the spectrum of `a`,
and each `f x` is continuous on the spectrum of `a`, then `fun x ↦ cfc (f x) a` is
continuous at `x₀`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuity/Variantd1abdbfa898feda61b41e41dadca64672ea26b9722b6119c270d1aaeda91ac51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuity/Variantd1abdbfa898feda61b41e41dadca64672ea26b9722b6119c270d1aaeda91ac51.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44cd53bc76622f44aed7e388806ac3e32f701e37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

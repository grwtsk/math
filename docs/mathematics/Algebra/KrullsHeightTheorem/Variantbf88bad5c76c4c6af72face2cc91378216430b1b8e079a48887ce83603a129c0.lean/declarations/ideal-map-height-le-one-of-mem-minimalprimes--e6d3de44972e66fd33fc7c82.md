# Ideal.map_height_le_one_of_mem_minimalPrimes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:01f22ecc-e52e-0bdb-bae0-f897cc1b94db",
  "kind": "theorem",
  "lexical_name": "Ideal.map_height_le_one_of_mem_minimalPrimes",
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
  "slug": "ideal-map-height-le-one-of-mem-minimalprimes--e6d3de44972e66fd33fc7c82",
  "source": {
    "blob": "94eba5d2ebfd024e76812a0c01883d73bfef1add",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 126,
    "path": "GRWTSK/Algebra/KrullsHeightTheorem/Variantbf88bad5c76c4c6af72face2cc91378216430b1b8e079a48887ce83603a129c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6d3de44972e66fd33fc7c825e00481509d21decc5159001f5b388b08cac6677",
  "verification": {
    "reference": "docs/verification/Algebra/KrullsHeightTheorem/Variantbf88bad5c76c4c6af72face2cc91378216430b1b8e079a48887ce83603a129c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01f22ecc-e52e-0bdb-bae0-f897cc1b94db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ideal.map_height_le_one_of_mem_minimalPrimes {I p : Ideal R} {x : R}
    (hp : p ∈ (I ⊔ span {x}).minimalPrimes) : (p.map (Ideal.Quotient.mk I)).height ≤ 1 :=
  let f := Ideal.Quotient.mk I
  have : p.IsPrime := hp.isPrime
  have hfp : RingHom.ker f ≤ p := I.mk_ker.trans_le (le_sup_left.trans hp.le)
  height_le_one_of_isPrincipal_of_mem_minimalPrimes ((span {x}).map f) (p.map f)
    ⟨⟨map_isPrime_of_surjective Quotient.mk_surjective hfp,
      map_mono (le_sup_right.trans hp.le)⟩,
        fun _ ⟨hr, hxr⟩ hrp ↦ map_le_iff_le_comap.mpr <| hp.2 ⟨hr.comap f, sup_le_iff.mpr
          ⟨I.mk_ker.symm.trans_le <| ker_le_comap (Ideal.Quotient.mk I), le_comap_of_map_le hxr⟩⟩ <|
            (comap_mono hrp).trans <| Eq.le <|
              (p.comap_map_of_surjective _ Quotient.mk_surjective).trans <| sup_eq_left.mpr hfp⟩

/-- In a Noetherian ring, the height of a principal ideal spanned by a non-unit is at most one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/KrullsHeightTheorem/Variantbf88bad5c76c4c6af72face2cc91378216430b1b8e079a48887ce83603a129c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/KrullsHeightTheorem/Variantbf88bad5c76c4c6af72face2cc91378216430b1b8e079a48887ce83603a129c0.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94eba5d2ebfd024e76812a0c01883d73bfef1add` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

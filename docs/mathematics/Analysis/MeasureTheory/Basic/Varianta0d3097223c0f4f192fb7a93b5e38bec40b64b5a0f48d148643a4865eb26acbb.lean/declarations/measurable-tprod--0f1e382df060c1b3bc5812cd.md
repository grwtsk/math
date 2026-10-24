# Measurable.tprod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:13bb2432-28cc-3b42-c7fd-3586caee65db",
  "kind": "theorem",
  "lexical_name": "Measurable.tprod",
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
  "slug": "measurable-tprod--0f1e382df060c1b3bc5812cd",
  "source": {
    "blob": "a992dd64a895591bbde7cc6456a1648546ef2862",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1056,
    "line": 1044,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Varianta0d3097223c0f4f192fb7a93b5e38bec40b64b5a0f48d148643a4865eb26acbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f1e382df060c1b3bc5812cdad193a7067ebc8dc78384ca487c7c1fe2fea3ec3",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Varianta0d3097223c0f4f192fb7a93b5e38bec40b64b5a0f48d148643a4865eb26acbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13bb2432-28cc-3b42-c7fd-3586caee65db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1044–1056.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Measurable.tprod {f : ι → X → E} (h : ∀ i : ι, Measurable (f i)) :
    Measurable (fun x => ∏'[L] i : ι, f i x) := by
  let E := { x | Multipliable (f · x) L }
  have hE : MeasurableSet E := measurableSet_exists_tendsto (by fun_prop)
  have h0 : (Eᶜ.domRestrict fun x => ∏'[L] i, f i x) = fun _ => 1 :=
    funext fun ⟨x, hx⟩ => tprod_eq_one_of_not_multipliable hx
  refine measurable_of_restrict_of_restrict_compl hE ?_ (h0 ▸ measurable_const)
  refine measurable_of_tendsto_metrizable' L.filter ?_ (tendsto_pi_nhds.mpr fun e => e.2.hasProd)
  fun_prop

/-- The product of almost everywhere measurable functions is measurable. -/
@[to_additive (attr := fun_prop)
/-- The sum of almost everywhere measurable functions is measurable. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Varianta0d3097223c0f4f192fb7a93b5e38bec40b64b5a0f48d148643a4865eb26acbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Varianta0d3097223c0f4f192fb7a93b5e38bec40b64b5a0f48d148643a4865eb26acbb.lean#L1044).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a992dd64a895591bbde7cc6456a1648546ef2862` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

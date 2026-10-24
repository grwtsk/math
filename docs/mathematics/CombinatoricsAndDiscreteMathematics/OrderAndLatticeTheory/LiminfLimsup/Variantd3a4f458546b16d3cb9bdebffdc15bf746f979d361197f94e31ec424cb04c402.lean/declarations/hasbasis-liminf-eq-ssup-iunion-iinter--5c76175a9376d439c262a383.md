# HasBasis.liminf_eq_sSup_iUnion_iInter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:68214c63-6d9e-f77d-651e-a51521ef39fd",
  "kind": "theorem",
  "lexical_name": "HasBasis.liminf_eq_sSup_iUnion_iInter",
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
  "slug": "hasbasis-liminf-eq-ssup-iunion-iinter--5c76175a9376d439c262a383",
  "source": {
    "blob": "c0c5a8bc2d9b27dfadc6b87b00f4c1d767d29a57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 226,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LiminfLimsup/Variantd3a4f458546b16d3cb9bdebffdc15bf746f979d361197f94e31ec424cb04c402.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c76175a9376d439c262a3838f2338e1e1c12f6b931b772aecd5840e3a371836",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LiminfLimsup/Variantd3a4f458546b16d3cb9bdebffdc15bf746f979d361197f94e31ec424cb04c402.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68214c63-6d9e-f77d-651e-a51521ef39fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasBasis.liminf_eq_sSup_iUnion_iInter {ι ι' : Type*} {f : ι → α} {v : Filter ι}
    {p : ι' → Prop} {s : ι' → Set ι} (hv : v.HasBasis p s) :
    liminf f v = sSup (⋃ (j : Subtype p), ⋂ (i : s j), Iic (f i)) := by
  simp_rw [liminf_eq, hv.eventually_iff]
  congr 1
  ext x
  simp only [mem_ofPred_eq, iInter_coe_set, mem_iUnion, mem_iInter, mem_Iic, Subtype.exists,
    exists_prop]

@[to_dual]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LiminfLimsup/Variantd3a4f458546b16d3cb9bdebffdc15bf746f979d361197f94e31ec424cb04c402.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LiminfLimsup/Variantd3a4f458546b16d3cb9bdebffdc15bf746f979d361197f94e31ec424cb04c402.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0c5a8bc2d9b27dfadc6b87b00f4c1d767d29a57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

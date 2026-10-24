# det_basisOfFractionalIdeal_eq_absNorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1444de4b7e9037cd42c7072866dfceb0eade66a0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 106,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/dbe52701bcad4d136a693e8e0e5ffb97ab0708b9263f57a5aef84773d0b9d6af.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:12f1a069-734e-4542-9998-f036b4043cdb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6c7111d5-e998-31b5-ddbd-62c35fac9a79",
  "kind": "theorem",
  "lexical_name": "det_basisOfFractionalIdeal_eq_absNorm",
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
  "slug": "det-basisoffractionalideal-eq-absnorm--8da0ca618325456918343487",
  "source": {
    "blob": "1444de4b7e9037cd42c7072866dfceb0eade66a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 106,
    "path": "GRWTSK/NumberTheory/FractionalIdeal/Variantdbe52701bcad4d136a693e8e0e5ffb97ab0708b9263f57a5aef84773d0b9d6af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8da0ca6183254569183434876c352d586e886145c64435ffb061f3ee6d66411c",
  "verification": {
    "reference": "docs/verification/NumberTheory/FractionalIdeal/Variantdbe52701bcad4d136a693e8e0e5ffb97ab0708b9263f57a5aef84773d0b9d6af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c7111d5-e998-31b5-ddbd-62c35fac9a79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem det_basisOfFractionalIdeal_eq_absNorm (I : (FractionalIdeal (𝓞 K)⁰ K)ˣ)
    (e : (Free.ChooseBasisIndex ℤ (𝓞 K)) ≃ (Free.ChooseBasisIndex ℤ I)) :
    |(integralBasis K).det ((basisOfFractionalIdeal K I).reindex e.symm)| =
      FractionalIdeal.absNorm I.1 := by
  rw [← FractionalIdeal.abs_det_basis_change (RingOfIntegers.basis K) I.1
    ((fractionalIdealBasis K I.1).reindex e.symm)]
  congr
  ext
  simpa using basisOfFractionalIdeal_apply K I _

end Norm

end NumberField
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/FractionalIdeal/Variantdbe52701bcad4d136a693e8e0e5ffb97ab0708b9263f57a5aef84773d0b9d6af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/FractionalIdeal/Variantdbe52701bcad4d136a693e8e0e5ffb97ab0708b9263f57a5aef84773d0b9d6af.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1444de4b7e9037cd42c7072866dfceb0eade66a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

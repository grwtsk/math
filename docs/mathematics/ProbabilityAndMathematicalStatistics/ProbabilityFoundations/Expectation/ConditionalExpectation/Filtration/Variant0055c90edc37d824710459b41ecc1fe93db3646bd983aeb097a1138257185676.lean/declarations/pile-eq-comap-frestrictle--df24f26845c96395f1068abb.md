# piLE_eq_comap_frestrictLe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ad86d6c454e2d1dd7d3bc5e4a41877be9b6fe9ab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 504,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/00/0055c90edc37d824710459b41ecc1fe93db3646bd983aeb097a1138257185676.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:720acca3-9e4d-493e-1750-d8e27c97ef52",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:291af781-7c36-4c3f-9854-2907bc0380bd",
  "kind": "lemma",
  "lexical_name": "piLE_eq_comap_frestrictLe",
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
  "slug": "pile-eq-comap-frestrictle--df24f26845c96395f1068abb",
  "source": {
    "blob": "ad86d6c454e2d1dd7d3bc5e4a41877be9b6fe9ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 521,
    "line": 504,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Filtration/Variant0055c90edc37d824710459b41ecc1fe93db3646bd983aeb097a1138257185676.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df24f26845c96395f1068abbf053429b2c7563f7f3b13b5607b334c0d3cff748",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Filtration/Variant0055c90edc37d824710459b41ecc1fe93db3646bd983aeb097a1138257185676.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:291af781-7c36-4c3f-9854-2907bc0380bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 504–521.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma piLE_eq_comap_frestrictLe (i : ι) : piLE (X := X) i = pi.comap (frestrictLe i) := by
  refine le_antisymm (Measurable.comap_le ?_) (Measurable.comap_le ?_)
  · exact (MeasurableEquiv.piCongrLeft (fun j : Set.Iic i ↦ X j)
      (Equiv.IicFinsetSet i)).measurable.comp (comap_measurable _)
  · exact (MeasurableEquiv.piCongrLeft (fun j : Finset.Iic i ↦ X j)
      (Equiv.IicFinsetSet i).symm).measurable.comp (comap_measurable _)

end piLE

section piFinset

open MeasurableSpace Finset

variable {ι : Type*} {X : ι → Type*} [∀ i, MeasurableSpace (X i)]

/-- The filtration of events which only depends on finitely many coordinates
on the product space `Π i, X i`, `piFinset s` consists of measurable sets depending only on
coordinates in `s`, where `s : Finset ι`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Filtration/Variant0055c90edc37d824710459b41ecc1fe93db3646bd983aeb097a1138257185676.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Filtration/Variant0055c90edc37d824710459b41ecc1fe93db3646bd983aeb097a1138257185676.lean#L504).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad86d6c454e2d1dd7d3bc5e4a41877be9b6fe9ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

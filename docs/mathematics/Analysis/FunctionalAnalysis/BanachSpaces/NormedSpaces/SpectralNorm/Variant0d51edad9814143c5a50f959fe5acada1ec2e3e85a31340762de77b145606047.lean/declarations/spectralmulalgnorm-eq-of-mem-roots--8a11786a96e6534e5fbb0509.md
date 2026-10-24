# spectralMulAlgNorm_eq_of_mem_roots

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0e9a60102536e0e1f02d8eff93d443cc04bc5c46",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 920,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0d51edad9814143c5a50f959fe5acada1ec2e3e85a31340762de77b145606047.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e701fbc2-a330-6896-61a2-1f3f2365497e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ba71629c-a7f6-16ae-a026-4c021e3959c9",
  "kind": "lemma",
  "lexical_name": "spectralMulAlgNorm_eq_of_mem_roots",
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
  "slug": "spectralmulalgnorm-eq-of-mem-roots--8a11786a96e6534e5fbb0509",
  "source": {
    "blob": "0e9a60102536e0e1f02d8eff93d443cc04bc5c46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 935,
    "line": 920,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SpectralNorm/Variant0d51edad9814143c5a50f959fe5acada1ec2e3e85a31340762de77b145606047.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a11786a96e6534e5fbb0509db19e91adc33a1d48a47cf60b174ae188d332aa0",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SpectralNorm/Variant0d51edad9814143c5a50f959fe5acada1ec2e3e85a31340762de77b145606047.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba71629c-a7f6-16ae-a026-4c021e3959c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 920–935.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma spectralMulAlgNorm_eq_of_mem_roots (x : L) {E : Type*} [Field E] [Algebra K E] [Algebra L E]
    [IsScalarTower K L E] [Algebra.IsAlgebraic K E] {a : E}
    (ha : a ∈ ((mapAlg K E) (minpoly K x)).roots) :
    (spectralMulAlgNorm K E) a = (spectralMulAlgNorm K E) ((algebraMap L E) x) := by
  simp only [spectralMulAlgNorm_def, spectralNorm]
  have : (aeval a) (minpoly K ((algebraMap L E) x)) = 0 := by
    simp only [mem_roots', IsRoot.def] at ha
    rw [← ha.2, mapAlg_eq_map, minpoly.algebraMap_eq (algebraMap L E).injective, aeval_def,
      eval_map]
  rw [← minpoly.eq_of_root (Algebra.IsAlgebraic.isAlgebraic ((algebraMap L E) x)) this]

omit [Algebra.IsAlgebraic K L] in
/-- Given an algebraic tower of fields `E/L/K` and an element `x : L` whose minimal polynomial `f`
  over `K` splits into linear factors over `E`, the `degree(f)`th power of the spectral norm of `x`,
  considered as an element of `E`, is equal to the spectral norm of the product of the `E`-valued
  roots of `f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SpectralNorm/Variant0d51edad9814143c5a50f959fe5acada1ec2e3e85a31340762de77b145606047.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SpectralNorm/Variant0d51edad9814143c5a50f959fe5acada1ec2e3e85a31340762de77b145606047.lean#L920).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e9a60102536e0e1f02d8eff93d443cc04bc5c46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

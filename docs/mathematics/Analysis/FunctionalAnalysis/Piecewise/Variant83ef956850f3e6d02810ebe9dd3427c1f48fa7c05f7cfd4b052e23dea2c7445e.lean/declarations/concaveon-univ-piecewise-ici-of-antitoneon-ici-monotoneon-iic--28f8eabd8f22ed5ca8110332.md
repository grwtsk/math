# concaveOn_univ_piecewise_Ici_of_antitoneOn_Ici_monotoneOn_Iic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:27a01c14-4a75-2d62-83b5-8c42047ce335",
  "kind": "theorem",
  "lexical_name": "concaveOn_univ_piecewise_Ici_of_antitoneOn_Ici_monotoneOn_Iic",
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
  "slug": "concaveon-univ-piecewise-ici-of-antitoneon-ici-monotoneon-iic--28f8eabd8f22ed5ca8110332",
  "source": {
    "blob": "ed3a2a46421199a638c854006335c36c1e1cb4d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 125,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Piecewise/Variant83ef956850f3e6d02810ebe9dd3427c1f48fa7c05f7cfd4b052e23dea2c7445e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28f8eabd8f22ed5ca81103327731b5298bf79d0d19b793da8180fce063b30af2",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Piecewise/Variant83ef956850f3e6d02810ebe9dd3427c1f48fa7c05f7cfd4b052e23dea2c7445e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27a01c14-4a75-2d62-83b5-8c42047ce335`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem concaveOn_univ_piecewise_Ici_of_antitoneOn_Ici_monotoneOn_Iic
    (hf : ConcaveOn 𝕜 (Set.Ici e) f) (hg : ConcaveOn 𝕜 (Set.Iic e) g)
    (h_anti : AntitoneOn f (Set.Ici e)) (h_mono : MonotoneOn g (Set.Iic e)) (h_eq : f e = g e) :
    ConcaveOn 𝕜 Set.univ ((Set.Ici e).piecewise f g) := by
  rw [← neg_convexOn_iff, ← Set.piecewise_neg]
  exact convexOn_univ_piecewise_Ici_of_monotoneOn_Ici_antitoneOn_Iic
    hf.neg hg.neg h_anti.neg h_mono.neg (neg_inj.mpr h_eq)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Piecewise/Variant83ef956850f3e6d02810ebe9dd3427c1f48fa7c05f7cfd4b052e23dea2c7445e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Piecewise/Variant83ef956850f3e6d02810ebe9dd3427c1f48fa7c05f7cfd4b052e23dea2c7445e.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed3a2a46421199a638c854006335c36c1e1cb4d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

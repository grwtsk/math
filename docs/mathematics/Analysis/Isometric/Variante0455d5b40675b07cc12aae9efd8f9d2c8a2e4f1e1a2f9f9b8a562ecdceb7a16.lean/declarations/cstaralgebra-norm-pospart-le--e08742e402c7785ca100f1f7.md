# CStarAlgebra.norm_posPart_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f2092cb7-b695-dd95-df76-169e6fe90d12",
  "kind": "lemma",
  "lexical_name": "CStarAlgebra.norm_posPart_le",
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
  "slug": "cstaralgebra-norm-pospart-le--e08742e402c7785ca100f1f7",
  "source": {
    "blob": "705398b780979d378b6db688503250ed4e714516",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 35,
    "path": "GRWTSK/Analysis/Isometric/Variante0455d5b40675b07cc12aae9efd8f9d2c8a2e4f1e1a2f9f9b8a562ecdceb7a16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e08742e402c7785ca100f1f7a18ac8914803c91b284276c0dd14ddde6a9d2740",
  "verification": {
    "reference": "docs/verification/Analysis/Isometric/Variante0455d5b40675b07cc12aae9efd8f9d2c8a2e4f1e1a2f9f9b8a562ecdceb7a16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2092cb7-b695-dd95-df76-169e6fe90d12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma CStarAlgebra.norm_posPart_le (a : A) : ‖a⁺‖ ≤ ‖a‖ := by
  by_cases ha : IsSelfAdjoint a
  case neg => simp [CFC.posPart_def, cfcₙ_apply_of_not_predicate a ha]
  refine norm_cfcₙ_le fun x hx ↦ ?_
  obtain (h | h) := le_or_lt x 0
  · simp [posPart_def, max_eq_right h]
  · simp only [posPart_def, max_eq_left h.le]
    exact NonUnitalIsometricContinuousFunctionalCalculus.norm_quasispectrum_le a hx ha

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Isometric/Variante0455d5b40675b07cc12aae9efd8f9d2c8a2e4f1e1a2f9f9b8a562ecdceb7a16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Isometric/Variante0455d5b40675b07cc12aae9efd8f9d2c8a2e4f1e1a2f9f9b8a562ecdceb7a16.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `705398b780979d378b6db688503250ed4e714516` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

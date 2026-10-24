# tendsto_cRatio_quartic_D1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e2fc192a-7b33-09bc-af9b-942a27c215d1",
  "kind": "theorem",
  "lexical_name": "tendsto_cRatio_quartic_D1",
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
  "slug": "tendsto-cratio-quartic-d1--520e40c0f4bed10f784b9984",
  "source": {
    "blob": "5f0c5c1e04fcfd7e66c655e666dda15472b662c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 99,
    "path": "GRWTSK/Topology/GeneralTopology/Quartic/Variantdee45ab45c2fe08cdecf3a2cdce26c3c13f823d1eb51d71f62343b4c1a359958.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:520e40c0f4bed10f784b9984746efbc47376ec6e15e1bbd3cfaf4719b40c6ced",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Quartic/Variantdee45ab45c2fe08cdecf3a2cdce26c3c13f823d1eb51d71f62343b4c1a359958.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2fc192a-7b33-09bc-af9b-942a27c215d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_cRatio_quartic_D1 (hP : P.Valid) :
    Tendsto (fun T => ThmD.cRatio (P.lam1 T) ((P.atV vQuartic T).a T) ((P.atV vQuartic T).b T)
      (2 / P.L T ^ 3 * l T * ∫ y in (0:ℝ)..P.L T, (D1 (y / l T) * (P.atV vQuartic T).g T y))) atTop
      (𝓝 (cWin D1 P.lam vQuartic)) :=
  tendsto_cRatio_quartic hP (continuousOn_D1 _) (fun _ hx => D1_nonneg hx.1)

end K3

end XiPrime
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Quartic/Variantdee45ab45c2fe08cdecf3a2cdce26c3c13f823d1eb51d71f62343b4c1a359958.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Quartic/Variantdee45ab45c2fe08cdecf3a2cdce26c3c13f823d1eb51d71f62343b4c1a359958.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f0c5c1e04fcfd7e66c655e666dda15472b662c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# trans_partialHomeomorph_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50d2ffd2-75a8-375b-70fb-daee287207b8",
  "kind": "theorem",
  "lexical_name": "trans_partialHomeomorph_apply",
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
  "slug": "trans-partialhomeomorph-apply--7298ee84f81383dd49e80361",
  "source": {
    "blob": "fbeb18ea55bf8a5652ab5ca9fc2ce7d57b5b744e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 65,
    "path": "GRWTSK/Topology/GeneralTopology/FiberwiseLinear/Variant2644676fe1a41a76f064cc644eb0e7cfbf160c862633f683c21398fc25406bca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7298ee84f81383dd49e80361b95fb2e829dfaeb4961b5ae2c65801b9822eca4a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FiberwiseLinear/Variant2644676fe1a41a76f064cc644eb0e7cfbf160c862633f683c21398fc25406bca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50d2ffd2-75a8-375b-70fb-daee287207b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem trans_partialHomeomorph_apply (hU : IsOpen U)
    (hφ : ContinuousOn (fun x => φ x : B → F →L[𝕜] F) U)
    (h2φ : ContinuousOn (fun x => (φ x).symm : B → F →L[𝕜] F) U) (hU' : IsOpen U')
    (hφ' : ContinuousOn (fun x => φ' x : B → F →L[𝕜] F) U')
    (h2φ' : ContinuousOn (fun x => (φ' x).symm : B → F →L[𝕜] F) U') (b : B) (v : F) :
    (FiberwiseLinear.partialHomeomorph φ hU hφ h2φ ≫ₕ
      FiberwiseLinear.partialHomeomorph φ' hU' hφ' h2φ')
        ⟨b, v⟩ =
      ⟨b, φ' b (φ b v)⟩ :=
  rfl

/-- Compute the source of the composition of two partial homeomorphisms induced by fiberwise linear
equivalences. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FiberwiseLinear/Variant2644676fe1a41a76f064cc644eb0e7cfbf160c862633f683c21398fc25406bca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FiberwiseLinear/Variant2644676fe1a41a76f064cc644eb0e7cfbf160c862633f683c21398fc25406bca.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbeb18ea55bf8a5652ab5ca9fc2ce7d57b5b744e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

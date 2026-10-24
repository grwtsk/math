# fromDFinsuppEquiv_single

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:43e9c48f-e276-8581-9e42-3aa853f1b34e",
  "kind": "theorem",
  "lexical_name": "fromDFinsuppEquiv_single",
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
  "slug": "fromdfinsuppequiv-single--32b434d59465d1d7f5ca2d04",
  "source": {
    "blob": "e69a7587e58d04e95afebdf525dec148f84cd603",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 225,
    "path": "GRWTSK/Algebra/LinearAlgebra/DFinsupp/Variant28d010962d83bab3c4a76adf48d8ab3811d87a95886547869596ed449421f57d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32b434d59465d1d7f5ca2d0452f6dc894e3ccb3f3071bc3cd1ffd5b6ec5e9c6d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/DFinsupp/Variant28d010962d83bab3c4a76adf48d8ab3811d87a95886547869596ed449421f57d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43e9c48f-e276-8581-9e42-3aa853f1b34e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fromDFinsuppEquiv_single
    (f : Π (p : Π i, κ i), MultilinearMap R (fun i ↦ M i (p i)) N)
    (p : Π i, κ i) (x : Π i, M i (p i)) :
    fromDFinsuppEquiv κ R f (fun i => DFinsupp.single (p i) (x i)) = f p x := by
  simp [fromDFinsuppEquiv]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/DFinsupp/Variant28d010962d83bab3c4a76adf48d8ab3811d87a95886547869596ed449421f57d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/DFinsupp/Variant28d010962d83bab3c4a76adf48d8ab3811d87a95886547869596ed449421f57d.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e69a7587e58d04e95afebdf525dec148f84cd603` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

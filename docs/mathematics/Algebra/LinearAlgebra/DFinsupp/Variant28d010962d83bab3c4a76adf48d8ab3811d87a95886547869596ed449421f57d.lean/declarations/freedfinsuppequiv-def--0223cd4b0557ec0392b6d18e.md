# freeDFinsuppEquiv_def

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e925ede6-eede-30c1-bd8d-d2d2544dca01",
  "kind": "theorem",
  "lexical_name": "freeDFinsuppEquiv_def",
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
  "slug": "freedfinsuppequiv-def--0223cd4b0557ec0392b6d18e",
  "source": {
    "blob": "e69a7587e58d04e95afebdf525dec148f84cd603",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 270,
    "path": "GRWTSK/Algebra/LinearAlgebra/DFinsupp/Variant28d010962d83bab3c4a76adf48d8ab3811d87a95886547869596ed449421f57d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0223cd4b0557ec0392b6d18ea9ab6326e5130fc5efbb496f9ee178ce9a4dc6c6",
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

Occurrence: `result:e925ede6-eede-30c1-bd8d-d2d2544dca01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–284.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem freeDFinsuppEquiv_def (f : Π₀ (_ : (Π i, κ i) × ι'), R) :
    freeDFinsuppEquiv f =
      fromDFinsuppEquiv κ R
      (LinearEquiv.piCongrRight (fun _ => MultilinearMap.piRingEquiv) <|
      DFinsupp.linearEquivFunOnFintype (R := R) <|
      DFinsupp.sigmaCurryLEquiv (R := R) <|
      (DFinsupp.domLCongr (R := R) (Equiv.sigmaEquivProd _ _).symm) f) :=
  rfl

/--
When `freeDFinsuppEquiv` is applied to a map with a single value of one the resulting multilinear
map sends inputs to a single value in the codomain, taking a product over images from each
component of the domain.
-/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/DFinsupp/Variant28d010962d83bab3c4a76adf48d8ab3811d87a95886547869596ed449421f57d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/DFinsupp/Variant28d010962d83bab3c4a76adf48d8ab3811d87a95886547869596ed449421f57d.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e69a7587e58d04e95afebdf525dec148f84cd603` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

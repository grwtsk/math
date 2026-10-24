# ContMDiff.coordChangeL

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b94623f0-3525-7733-e63d-b48ee2a0f71f",
  "kind": "theorem",
  "lexical_name": "ContMDiff.coordChangeL",
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
  "slug": "contmdiff-coordchangel--7e29203ec4cabf44aaaa7f0f",
  "source": {
    "blob": "eb54446ef768f7fd34d217b063a4b43ec4cc3e0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 368,
    "line": 364,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant370c732e6bd4d09a9fc339300187ccfbbdf539ba751218d9bd0a2455ce7fd324.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e29203ec4cabf44aaaa7f0f3ebb906bf8f415fc434f97a30265a4f43eb4aba7",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Basic/Variant370c732e6bd4d09a9fc339300187ccfbbdf539ba751218d9bd0a2455ce7fd324.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b94623f0-3525-7733-e63d-b48ee2a0f71f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 364–368.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem ContMDiff.coordChangeL {f : M → B}
    (hf : ContMDiff IM IB n f) (he : ∀ x, f x ∈ e.baseSet) (he' : ∀ x, f x ∈ e'.baseSet) :
    ContMDiff IM 𝓘(𝕜, F →L[𝕜] F) n (fun y ↦ (e.coordChangeL 𝕜 e' (f y) : F →L[𝕜] F)) := fun x ↦
  (hf x).coordChangeL (he x) (he' x)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Basic/Variant370c732e6bd4d09a9fc339300187ccfbbdf539ba751218d9bd0a2455ce7fd324.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Basic/Variant370c732e6bd4d09a9fc339300187ccfbbdf539ba751218d9bd0a2455ce7fd324.lean#L364).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb54446ef768f7fd34d217b063a4b43ec4cc3e0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

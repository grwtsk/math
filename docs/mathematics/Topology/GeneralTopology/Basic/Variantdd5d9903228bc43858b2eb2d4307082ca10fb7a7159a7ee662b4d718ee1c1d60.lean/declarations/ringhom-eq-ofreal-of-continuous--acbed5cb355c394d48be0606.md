# ringHom_eq_ofReal_of_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e13ee296-b13b-55d0-bf7b-2938e5def3ac",
  "kind": "theorem",
  "lexical_name": "ringHom_eq_ofReal_of_continuous",
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
  "slug": "ringhom-eq-ofreal-of-continuous--acbed5cb355c394d48be0606",
  "source": {
    "blob": "d46550ff80104730e700edb448e7831c09b53187",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 291,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantdd5d9903228bc43858b2eb2d4307082ca10fb7a7159a7ee662b4d718ee1c1d60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:acbed5cb355c394d48be06067764953330a1118b55e7108a08a47883b5dbabf0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantdd5d9903228bc43858b2eb2d4307082ca10fb7a7159a7ee662b4d718ee1c1d60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e13ee296-b13b-55d0-bf7b-2938e5def3ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ringHom_eq_ofReal_of_continuous {f : ℝ →+* ℂ} (h : Continuous f) : f = ofRealHom := by
  convert congr_arg AlgHom.toRingHom <| Subsingleton.elim (AlgHom.mk' f <| map_real_smul f h)
    (Algebra.ofId ℝ ℂ)

/-- Continuous linear map version of the canonical embedding of `ℝ` in `ℂ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantdd5d9903228bc43858b2eb2d4307082ca10fb7a7159a7ee662b4d718ee1c1d60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantdd5d9903228bc43858b2eb2d4307082ca10fb7a7159a7ee662b4d718ee1c1d60.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d46550ff80104730e700edb448e7831c09b53187` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

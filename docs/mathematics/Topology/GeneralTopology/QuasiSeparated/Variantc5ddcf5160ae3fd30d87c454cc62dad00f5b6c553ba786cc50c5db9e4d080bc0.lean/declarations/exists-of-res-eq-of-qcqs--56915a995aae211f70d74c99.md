# exists_of_res_eq_of_qcqs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:092afc93-7f15-6c4e-46d4-95a8f85dca81",
  "kind": "lemma",
  "lexical_name": "exists_of_res_eq_of_qcqs",
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
  "slug": "exists-of-res-eq-of-qcqs--56915a995aae211f70d74c99",
  "source": {
    "blob": "a2fdd2e6d0cdd0aba16037b320847a2049972835",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 367,
    "line": 361,
    "path": "GRWTSK/Topology/GeneralTopology/QuasiSeparated/Variantc5ddcf5160ae3fd30d87c454cc62dad00f5b6c553ba786cc50c5db9e4d080bc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56915a995aae211f70d74c9909b95f5a0442bbd5eb4e789dbab7f6e88f1c9364",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/QuasiSeparated/Variantc5ddcf5160ae3fd30d87c454cc62dad00f5b6c553ba786cc50c5db9e4d080bc0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:092afc93-7f15-6c4e-46d4-95a8f85dca81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 361–367.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_of_res_eq_of_qcqs {X : Scheme.{u}} {U : TopologicalSpace.Opens X}
    (hU : IsCompact U.carrier) (hU' : IsQuasiSeparated U.carrier)
    {f g s : Γ(X, U)} (hfg : f |_ X.basicOpen s = g |_ X.basicOpen s) :
    ∃ n, s ^ n * f = s ^ n * g := by
  obtain ⟨n, hc⟩ := (isLocalization_basicOpen_of_qcqs hU hU' s).exists_of_eq s hfg
  use n

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/QuasiSeparated/Variantc5ddcf5160ae3fd30d87c454cc62dad00f5b6c553ba786cc50c5db9e4d080bc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/QuasiSeparated/Variantc5ddcf5160ae3fd30d87c454cc62dad00f5b6c553ba786cc50c5db9e4d080bc0.lean#L361).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2fdd2e6d0cdd0aba16037b320847a2049972835` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

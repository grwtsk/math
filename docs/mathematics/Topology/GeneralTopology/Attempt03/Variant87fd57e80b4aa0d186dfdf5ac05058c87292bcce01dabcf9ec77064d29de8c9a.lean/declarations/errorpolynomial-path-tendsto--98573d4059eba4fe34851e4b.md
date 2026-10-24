# errorPolynomial_path_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:78b895b0-71fc-fc97-5a18-6a74ad4a9897",
  "kind": "theorem",
  "lexical_name": "errorPolynomial_path_tendsto",
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
  "slug": "errorpolynomial-path-tendsto--98573d4059eba4fe34851e4b",
  "source": {
    "blob": "44354320aa47abbf8c72106218cabb2e61149137",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 161,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt03/Variant87fd57e80b4aa0d186dfdf5ac05058c87292bcce01dabcf9ec77064d29de8c9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98573d4059eba4fe34851e4bbcdb13ed28a5f3c0b1e5f33472b80052bf541fc2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt03/Variant87fd57e80b4aa0d186dfdf5ac05058c87292bcce01dabcf9ec77064d29de8c9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78b895b0-71fc-fc97-5a18-6a74ad4a9897`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem errorPolynomial_path_tendsto (delta : ℝ → ℝ)
    (hprod : Tendsto (fun A : ℝ => A*delta A) atTop atTop) :
    Tendsto (fun A : ℝ => errorPolynomial (A*delta A)) atTop (𝓝 0) := by
  have hi : Tendsto (fun A : ℝ => (A*delta A)⁻¹) atTop (𝓝 0) :=
    tendsto_inv_atTop_zero.comp hprod
  have ht := (((hi.const_mul 10).add ((hi.pow 2).const_mul 45)).add
    ((hi.pow 3).const_mul 105)).add ((hi.pow 4).const_mul 105)
  convert ht using 1
  · ext A
    unfold errorPolynomial
    ring
  · norm_num

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt03/Variant87fd57e80b4aa0d186dfdf5ac05058c87292bcce01dabcf9ec77064d29de8c9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt03/Variant87fd57e80b4aa0d186dfdf5ac05058c87292bcce01dabcf9ec77064d29de8c9a.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44354320aa47abbf8c72106218cabb2e61149137` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# nhds_bot_basis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:48c08873-515f-19db-0ebd-0557b4661932",
  "kind": "theorem",
  "lexical_name": "nhds_bot_basis",
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
  "slug": "nhds-bot-basis--b680c42fcd769e4a4ed711f7",
  "source": {
    "blob": "c00484f3925be25ea323aa0909f4bbacfa75b383",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 134,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant3ae2146295a5172eee6f274116a02dc846ca7d63e656fa5e517c7391a4a41ab7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b680c42fcd769e4a4ed711f72643fb2c8f1eaed47d72ca80a5c6e6178dc7aad7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant3ae2146295a5172eee6f274116a02dc846ca7d63e656fa5e517c7391a4a41ab7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48c08873-515f-19db-0ebd-0557b4661932`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nhds_bot_basis : (𝓝 (⊥ : EReal)).HasBasis (fun _ : ℝ ↦ True) (Iio ·) := by
  refine (_root_.nhds_bot_basis (α := EReal)).to_hasBasis (fun x hx => ?_)
    fun _ _ ↦ ⟨_, bot_lt_coe _, Subset.rfl⟩
  rcases exists_rat_btwn_of_lt hx with ⟨y, -, hxy⟩
  exact ⟨_, trivial, Iio_subset_Iio hxy.le⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant3ae2146295a5172eee6f274116a02dc846ca7d63e656fa5e517c7391a4a41ab7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant3ae2146295a5172eee6f274116a02dc846ca7d63e656fa5e517c7391a4a41ab7.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c00484f3925be25ea323aa0909f4bbacfa75b383` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

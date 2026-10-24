# coordChange_apply_snd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6303b95a20583802892521a0a969d53df0e243bf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 610,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/19/198a7368c82703ef60e1cdbf4ab211981fbcae5fb716811d67ff5ed0eef2ffc8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c42a54f0-e481-91f2-0419-91df5b64bed4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ca92984e-af42-f466-bb74-84c10d423bab",
  "kind": "theorem",
  "lexical_name": "coordChange_apply_snd",
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
  "slug": "coordchange-apply-snd--fff8d5689764e8e87c44cff4",
  "source": {
    "blob": "6303b95a20583802892521a0a969d53df0e243bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 613,
    "line": 610,
    "path": "GRWTSK/Topology/GeneralTopology/Trivialization/Variant198a7368c82703ef60e1cdbf4ab211981fbcae5fb716811d67ff5ed0eef2ffc8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fff8d5689764e8e87c44cff4984404f77d30cba61bc219203b1f051088113f68",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Trivialization/Variant198a7368c82703ef60e1cdbf4ab211981fbcae5fb716811d67ff5ed0eef2ffc8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca92984e-af42-f466-bb74-84c10d423bab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 610–613.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coordChange_apply_snd (e₁ e₂ : Trivialization F proj) {p : Z} (h : proj p ∈ e₁.baseSet) :
    e₁.coordChange e₂ (proj p) (e₁ p).snd = (e₂ p).snd := by
  rw [coordChange, e₁.symm_apply_mk_proj (e₁.mem_source.2 h)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Trivialization/Variant198a7368c82703ef60e1cdbf4ab211981fbcae5fb716811d67ff5ed0eef2ffc8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Trivialization/Variant198a7368c82703ef60e1cdbf4ab211981fbcae5fb716811d67ff5ed0eef2ffc8.lean#L610).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6303b95a20583802892521a0a969d53df0e243bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# iSup_eq_iSup_subseq_of_antitone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5edbce3f79ce364583912471e4dc6f315b8ddff0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 294,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a2/a25c65251355a6572ac43603ba47804b109a1f57a2c2c99ed7b3a9fe9cb86f60.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d84747eb-b1dc-6410-0e37-9963b480b1d7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ef71c5a1-51fc-373f-3783-7adf62bb6d98",
  "kind": "theorem",
  "lexical_name": "iSup_eq_iSup_subseq_of_antitone",
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
  "slug": "isup-eq-isup-subseq-of-antitone--4b64523b055eeb27443b6d46",
  "source": {
    "blob": "5edbce3f79ce364583912471e4dc6f315b8ddff0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 294,
    "path": "GRWTSK/Topology/GeneralTopology/MonotoneConvergence/Varianta25c65251355a6572ac43603ba47804b109a1f57a2c2c99ed7b3a9fe9cb86f60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b64523b055eeb27443b6d4649355ba046f39fb7cb4ef5e0188ce134fb8a6e9d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MonotoneConvergence/Varianta25c65251355a6572ac43603ba47804b109a1f57a2c2c99ed7b3a9fe9cb86f60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef71c5a1-51fc-373f-3783-7adf62bb6d98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iSup_eq_iSup_subseq_of_antitone {ι₁ ι₂ α : Type*} [Preorder ι₂] [CompleteLattice α]
    {l : Filter ι₁} [l.NeBot] {f : ι₂ → α} {φ : ι₁ → ι₂} (hf : Antitone f)
    (hφ : Tendsto φ l atBot) : ⨆ i, f i = ⨆ i, f (φ i) :=
  le_antisymm
    (iSup_mono' fun i =>
      Exists.imp (fun j (hj : φ j ≤ i) => hf hj) (hφ.eventually <| eventually_le_atBot i).exists)
    (iSup_mono' fun i => ⟨φ i, le_rfl⟩)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MonotoneConvergence/Varianta25c65251355a6572ac43603ba47804b109a1f57a2c2c99ed7b3a9fe9cb86f60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MonotoneConvergence/Varianta25c65251355a6572ac43603ba47804b109a1f57a2c2c99ed7b3a9fe9cb86f60.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5edbce3f79ce364583912471e4dc6f315b8ddff0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

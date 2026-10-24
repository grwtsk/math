# history_descends_of_faithful_paired_receiver

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d3e5f2cd27ac072e78a91cc01624faae9c5a9e98",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 221,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/82/82c237ddc0add3d05fdff6a5996cc8675a8e95bc4ecedeb29754f2037311eeb2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1090f251-114c-0fea-fb72-d02adb45a385",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0ab55e4e-abcc-8fb2-8fa5-1f15bb7a8d54",
  "kind": "theorem",
  "lexical_name": "history_descends_of_faithful_paired_receiver",
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
  "slug": "history-descends-of-faithful-paired-receiver--d4fb834821f1587b921dba2e",
  "source": {
    "blob": "d3e5f2cd27ac072e78a91cc01624faae9c5a9e98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 221,
    "path": "GRWTSK/Algebra/LinearAlgebra/AcousticSourceSeparation/Variant82c237ddc0add3d05fdff6a5996cc8675a8e95bc4ecedeb29754f2037311eeb2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4fb834821f1587b921dba2eebca74be4d8084c2c0365debf1b1355364ebe89f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/AcousticSourceSeparation/Variant82c237ddc0add3d05fdff6a5996cc8675a8e95bc4ecedeb29754f2037311eeb2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ab55e4e-abcc-8fb2-8fa5-1f15bb7a8d54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem history_descends_of_faithful_paired_receiver {Object : Type*}
    (density distance initialTime : ℝ) (densityPositive : 0 < density)
    (distancePositive : 0 < distance) (history : Object → ℝ → ℝ)
    (regular : ∀ x, ContDiff ℝ 2 (history x)) (source : Object → SourceChannels)
    (volumeLaw : ∀ x, (source x).1 = volumePressure density distance (history x)) :
    DescendsThrough (fun x => (pairedReceiver (source x),
      history x initialTime, deriv (history x) initialTime)) history := by
  intro x y same
  have sourceEqual := paired_receiver_injective (congrArg Prod.fst same)
  have initialEqual := congrArg (fun data => data.2.1) same
  have slopeEqual := congrArg (fun data => data.2.2) same
  apply history_eq_of_waveform_initial_data density distance densityPositive distancePositive
    (history x) (history y) (regular x) (regular y) initialTime _ initialEqual slopeEqual
  exact (volumeLaw x).symm.trans ((congrArg Prod.fst sourceEqual).trans (volumeLaw y))

/-- A positive smooth history together with an unconstrained additive source contribution. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/AcousticSourceSeparation/Variant82c237ddc0add3d05fdff6a5996cc8675a8e95bc4ecedeb29754f2037311eeb2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/AcousticSourceSeparation/Variant82c237ddc0add3d05fdff6a5996cc8675a8e95bc4ecedeb29754f2037311eeb2.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3e5f2cd27ac072e78a91cc01624faae9c5a9e98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

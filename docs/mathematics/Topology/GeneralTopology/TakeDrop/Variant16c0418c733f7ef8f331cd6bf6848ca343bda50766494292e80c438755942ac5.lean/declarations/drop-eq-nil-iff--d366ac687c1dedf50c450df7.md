# drop_eq_nil_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f1c857db7b83e23eff56fe00f2feeec40d575595",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 130,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/16/16c0418c733f7ef8f331cd6bf6848ca343bda50766494292e80c438755942ac5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a2114151-29f3-9656-9883-9f932f60fce4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aca3bc73-6dd7-a435-8905-513c5167fbe7",
  "kind": "theorem",
  "lexical_name": "drop_eq_nil_iff",
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
  "slug": "drop-eq-nil-iff--d366ac687c1dedf50c450df7",
  "source": {
    "blob": "f1c857db7b83e23eff56fe00f2feeec40d575595",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 130,
    "path": "GRWTSK/Topology/GeneralTopology/TakeDrop/Variant16c0418c733f7ef8f331cd6bf6848ca343bda50766494292e80c438755942ac5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d366ac687c1dedf50c450df701471172fd57966af03c87870f2f4bda8d5b4d15",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TakeDrop/Variant16c0418c733f7ef8f331cd6bf6848ca343bda50766494292e80c438755942ac5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aca3bc73-6dd7-a435-8905-513c5167fbe7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem drop_eq_nil_iff {l : List α} {i : Nat} : l.drop i = [] ↔ l.length ≤ i := by
  refine ⟨fun h => ?_, drop_eq_nil_of_le⟩
  induction i generalizing l with
  | zero =>
    simp only [drop] at h
    simp [h]
  | succ i hi =>
    cases l
    · simp
    · simp only [drop] at h
      simpa [Nat.succ_le_succ_iff] using hi h

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TakeDrop/Variant16c0418c733f7ef8f331cd6bf6848ca343bda50766494292e80c438755942ac5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TakeDrop/Variant16c0418c733f7ef8f331cd6bf6848ca343bda50766494292e80c438755942ac5.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1c857db7b83e23eff56fe00f2feeec40d575595` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

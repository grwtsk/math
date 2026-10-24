# log_div_self_antitoneOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "68132866c2c245cbcfd9a02d4efcc7f08ddb3cf5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 42,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/72/7227ac4625eae15dbab8c2129a0c560b93f01e83a4e2871b890d1d240d34927a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2a262cb5-7217-fa31-1dec-b7e0bc2793b8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:737c66ba-b63d-716e-2aa5-d434a9453072",
  "kind": "theorem",
  "lexical_name": "log_div_self_antitoneOn",
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
  "slug": "log-div-self-antitoneon--4d52729deb4368cad8d0745f",
  "source": {
    "blob": "68132866c2c245cbcfd9a02d4efcc7f08ddb3cf5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 42,
    "path": "GRWTSK/Analysis/SpecialFunctions/Monotone/Variant7227ac4625eae15dbab8c2129a0c560b93f01e83a4e2871b890d1d240d34927a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d52729deb4368cad8d0745f06c0256f77acab6821f0a6bdaf61eb5e5ada46e8",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Monotone/Variant7227ac4625eae15dbab8c2129a0c560b93f01e83a4e2871b890d1d240d34927a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:737c66ba-b63d-716e-2aa5-d434a9453072`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_div_self_antitoneOn : AntitoneOn (fun x : ℝ => log x / x) { x | exp 1 ≤ x } := by
  simp only [AntitoneOn, mem_setOf_eq]
  intro x hex y hey hxy
  have x_pos : 0 < x := (exp_pos 1).trans_le hex
  have y_pos : 0 < y := (exp_pos 1).trans_le hey
  have hlogx : 1 ≤ log x := by rwa [le_log_iff_exp_le x_pos]
  have hyx : 0 ≤ y / x - 1 := by rwa [le_sub_iff_add_le, le_div_iff x_pos, zero_add, one_mul]
  rw [div_le_iff y_pos, ← sub_le_sub_iff_right (log x)]
  calc
    log y - log x = log (y / x) := by rw [log_div y_pos.ne' x_pos.ne']
    _ ≤ y / x - 1 := (log_le_sub_one_of_pos (div_pos y_pos x_pos))
    _ ≤ log x * (y / x - 1) := (le_mul_of_one_le_left hyx hlogx)
    _ = log x / x * y - log x := by ring
#align real.log_div_self_antitone_on Real.log_div_self_antitoneOn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Monotone/Variant7227ac4625eae15dbab8c2129a0c560b93f01e83a4e2871b890d1d240d34927a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Monotone/Variant7227ac4625eae15dbab8c2129a0c560b93f01e83a4e2871b890d1d240d34927a.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68132866c2c245cbcfd9a02d4efcc7f08ddb3cf5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

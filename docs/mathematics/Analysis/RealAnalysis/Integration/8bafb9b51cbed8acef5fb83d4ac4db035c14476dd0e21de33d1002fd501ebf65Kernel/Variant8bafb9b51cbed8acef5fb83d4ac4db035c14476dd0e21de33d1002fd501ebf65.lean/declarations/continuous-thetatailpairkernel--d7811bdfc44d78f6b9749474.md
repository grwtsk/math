# continuous_thetaTailPairKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "00493ca65825a453d5e6e4a3ca594060e2d04a9e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 18,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9aef395d-3d42-2702-3d0f-9a3deab095e9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f92444fe-cf1e-d33a-13fc-9e9f9b4f92cb",
  "kind": "theorem",
  "lexical_name": "continuous_thetaTailPairKernel",
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
  "slug": "continuous-thetatailpairkernel--d7811bdfc44d78f6b9749474",
  "source": {
    "blob": "00493ca65825a453d5e6e4a3ca594060e2d04a9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 23,
    "line": 18,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65Kernel/Variant8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7811bdfc44d78f6b9749474953e22033040e3b90d56ff5f2402383e8303318a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65Kernel/Variant8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f92444fe-cf1e-d33a-13fc-9e9f9b4f92cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–23.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_thetaTailPairKernel (m q : ℕ) :
    Continuous (fun p : ℝ × ℝ => thetaTailPairKernel m q p.1 p.2) := by
  unfold thetaTailPairKernel evenBasis
  exact ((continuous_thetaPhi.comp continuous_snd).mul
    (((continuous_snd.sub continuous_fst).pow _).div_const _)).mul (by fun_prop)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65Kernel/Variant8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65Kernel/Variant8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00493ca65825a453d5e6e4a3ca594060e2d04a9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

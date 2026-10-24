# cWin_D1_vQuartic_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "335299492dfbf25c3a74e8acfbe583f84ebb2a9a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 402,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d455f896d75979c3439d1bf356dc0e7ea39be9a6bcde4d82e2692bc633dd019e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f21fe60a-86f7-29f8-6561-4a5554451113",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:52d6bf29-f318-ddd4-f3ad-e13d862ee7bd",
  "kind": "theorem",
  "lexical_name": "cWin_D1_vQuartic_pos",
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
  "slug": "cwin-d1-vquartic-pos--be5d1b6765031a964d4adfd2",
  "source": {
    "blob": "335299492dfbf25c3a74e8acfbe583f84ebb2a9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 405,
    "line": 402,
    "path": "GRWTSK/Topology/GeneralTopology/Window/Variantd455f896d75979c3439d1bf356dc0e7ea39be9a6bcde4d82e2692bc633dd019e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be5d1b6765031a964d4adfd2a5a7a7da021f8828e283331ed5d4875101e9c941",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Window/Variantd455f896d75979c3439d1bf356dc0e7ea39be9a6bcde4d82e2692bc633dd019e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52d6bf29-f318-ddd4-f3ad-e13d862ee7bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 402–405.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cWin_D1_vQuartic_pos {lam : ℝ} (h0 : 0 < lam) (h1 : lam ≤ 1) : 0 < cWin D1 lam vQuartic :=
  cWin_pos (by rw [integral_vQuartic]; norm_num) (by rw [integral_vQuartic_sq]; norm_num)
    (jWin_nonneg (fun _ hx => D1_nonneg hx.1) (fun _ hs => vQuartic_nonneg_on hs) h0.le h1) h0

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Window/Variantd455f896d75979c3439d1bf356dc0e7ea39be9a6bcde4d82e2692bc633dd019e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Window/Variantd455f896d75979c3439d1bf356dc0e7ea39be9a6bcde4d82e2692bc633dd019e.lean#L402).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `335299492dfbf25c3a74e8acfbe583f84ebb2a9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

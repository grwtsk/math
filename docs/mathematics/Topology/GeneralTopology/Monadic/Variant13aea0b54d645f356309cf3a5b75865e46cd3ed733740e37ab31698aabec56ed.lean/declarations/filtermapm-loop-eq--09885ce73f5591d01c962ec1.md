# filterMapM_loop_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee269eb8-c33d-59c8-f0ae-064be8fa0fda",
  "kind": "theorem",
  "lexical_name": "filterMapM_loop_eq",
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
  "slug": "filtermapm-loop-eq--09885ce73f5591d01c962ec1",
  "source": {
    "blob": "e534dc0c099bb59e3ff9233459b0c0160027bbc0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 116,
    "path": "GRWTSK/Topology/GeneralTopology/Monadic/Variant13aea0b54d645f356309cf3a5b75865e46cd3ed733740e37ab31698aabec56ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09885ce73f5591d01c962ec1b165b9a391395b73000825474e9ccc29064a7b8e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Monadic/Variant13aea0b54d645f356309cf3a5b75865e46cd3ed733740e37ab31698aabec56ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee269eb8-c33d-59c8-f0ae-064be8fa0fda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem filterMapM_loop_eq [Monad m] [LawfulMonad m] {f : α → m (Option β)} {l : List α} {acc : List β} :
    filterMapM.loop f l acc = (acc.reverse ++ ·) <$> filterMapM.loop f l [] := by
  induction l generalizing acc with
  | nil => simp [filterMapM.loop]
  | cons a l ih =>
    simp only [filterMapM.loop, _root_.map_bind]
    congr
    funext b?
    split <;> rename_i b
    · apply ih
    · rw [ih, ih (acc := [b])]
      simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Monadic/Variant13aea0b54d645f356309cf3a5b75865e46cd3ed733740e37ab31698aabec56ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Monadic/Variant13aea0b54d645f356309cf3a5b75865e46cd3ed733740e37ab31698aabec56ed.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e534dc0c099bb59e3ff9233459b0c0160027bbc0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

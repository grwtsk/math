# isForbiddenParent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:41494edc28a2a843fa6573acf7a559ab52ab31be14a1e3559367021bf9b133a2",
  "kind": "def",
  "lexical_name": "isForbiddenParent",
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
  "slug": "isforbiddenparent--067c91e16e2ed1e627d96cfb",
  "source": {
    "blob": "4a0b0503bc0b46bf0ff88d16c72127da7155f7c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 44,
    "path": "GRWTSK/Algebra/Internalize/Variantaadd7ea25dbde76c3ad0396d8c74acde786e4c650ae8710062e3b0b37fa5ce1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:067c91e16e2ed1e627d96cfb0d7339366c8b18910eb22433a312caa66bc0c614",
  "verification": {
    "reference": "docs/verification/Algebra/Internalize/Variantaadd7ea25dbde76c3ad0396d8c74acde786e4c650ae8710062e3b0b37fa5ce1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:41494edc28a2a843fa6573acf7a559ab52ab31be14a1e3559367021bf9b133a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def isForbiddenParent (parent? : Option Expr) : Bool :=
  if let some parent := parent? then
    if getType? parent |>.isSome then
      true
    else
      -- We also ignore the following parents.
      -- Remark: `HDiv` should appear in `getType?` as soon as we add support for `Field`,
      -- `LE.le` linear combinations
      match_expr parent with
      | LT.lt _ _ _ _ => true
      | LE.le _ _ _ _ => true
      | HDiv.hDiv _ _ _ _ _ _ => true
      | HMod.hMod _ _ _ _ _ _ => true
      | _ => false
  else
    false

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Internalize/Variantaadd7ea25dbde76c3ad0396d8c74acde786e4c650ae8710062e3b0b37fa5ce1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Internalize/Variantaadd7ea25dbde76c3ad0396d8c74acde786e4c650ae8710062e3b0b37fa5ce1f.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a0b0503bc0b46bf0ff88d16c72127da7155f7c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

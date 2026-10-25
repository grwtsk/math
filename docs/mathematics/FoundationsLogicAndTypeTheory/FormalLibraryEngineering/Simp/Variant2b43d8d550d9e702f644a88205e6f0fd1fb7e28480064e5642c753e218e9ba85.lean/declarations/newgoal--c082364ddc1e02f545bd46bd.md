# newGoal?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5250db5ed54d7bc2877350324dd0fd0b6c3cc752290ab50c33990808dce02325",
  "kind": "def",
  "lexical_name": "newGoal?",
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
  "slug": "newgoal--c082364ddc1e02f545bd46bd",
  "source": {
    "blob": "01f651481da4e545b1e6cb9e3a715167a64f4aca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 24,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant2b43d8d550d9e702f644a88205e6f0fd1fb7e28480064e5642c753e218e9ba85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c082364ddc1e02f545bd46bd80e97d668ada1ae5d94e133738f31c6f815306e9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant2b43d8d550d9e702f644a88205e6f0fd1fb7e28480064e5642c753e218e9ba85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5250db5ed54d7bc2877350324dd0fd0b6c3cc752290ab50c33990808dce02325`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def newGoal? : SimpResult → Option MVarId
  | solved .. => none
  | unchanged => none
  | simplified g .. => some g

end SimpResult

/--
Add all `let` hypotheses in the local context as `simp` theorems.

Background: by default, in the goal `x : _ := v ⊢ P[x]`, `simp` does not
substitute `x` by `v` in the target. The `simp` option `zetaDelta` can be used
to make `simp` perform this substitution, but we don't want to set it because
then Aesop `simp` would diverge from default `simp`, so we would have to adjust
the `aesop?` output as well. Instead, we add `let` hypotheses explicitly. This
way, `simp?` picks them up as well.

See lean4#3520.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant2b43d8d550d9e702f644a88205e6f0fd1fb7e28480064e5642c753e218e9ba85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant2b43d8d550d9e702f644a88205e6f0fd1fb7e28480064e5642c753e218e9ba85.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01f651481da4e545b1e6cb9e3a715167a64f4aca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

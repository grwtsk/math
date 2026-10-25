# elimVar?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:84aa286875365f1a749852e3e541c12265ca01fdb83fa1bfa2400ceee33306db",
  "kind": "def",
  "lexical_name": "elimVar?",
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
  "slug": "elimvar--e858b47783e6bc35fea9f32d",
  "source": {
    "blob": "186cc9e3655eab9bdf4391440296506dd6ca9d29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 99,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Varianta7b1f1bdd71661177dcbb51e42b0aa5aaf787f16443c178c42a8b630e516eb3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e858b47783e6bc35fea9f32d30c10ac97bf62366b1cde89ce72f599bef8ef024",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Varianta7b1f1bdd71661177dcbb51e42b0aa5aaf787f16443c178c42a8b630e516eb3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:84aa286875365f1a749852e3e541c12265ca01fdb83fa1bfa2400ceee33306db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elimVar? (value : LetValue .pure) : SimpM (Option FVarId) := do
  let .fvar fvarId #[] := value | return none
  return fvarId

mutual
/--
If the value of the given let-declaration is an application that can be inlined,
inline it and simplify the result.

`k` is the "continuation" for the let declaration, if the application is inlined,
it will also be simplified.

Note: `inlineApp?` did not use to be in this mutually recursive declaration.
It used to be invoked by `simp`, and would return `Option Code` that would be
then simplified by `simp`. However, this simpler architecture produced an
exponential blowup in when processing functions such as `Lean.Elab.Deriving.Ord.mkMatch.mkAlts`.
The key problem is that when inlining a declaration we often can reduce the number
of exit points by simplified the inlined code, and then connecting the result to the
continuation `k`. However, this optimization is only possible if we simplify the
inlined code **before** we attach it to the continuation.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Varianta7b1f1bdd71661177dcbb51e42b0aa5aaf787f16443c178c42a8b630e516eb3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Varianta7b1f1bdd71661177dcbb51e42b0aa5aaf787f16443c178c42a8b630e516eb3d.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `186cc9e3655eab9bdf4391440296506dd6ca9d29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

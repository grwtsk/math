# transformAtNondepPropLocation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:61047361eb2c4494eeb0b5c94623d252fdf4c458c79ac9058d3e92d4bfda11fb",
  "kind": "def",
  "lexical_name": "transformAtNondepPropLocation",
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
  "slug": "transformatnondepproplocation--c95a400f4cbfdd9ab0ab0e7d",
  "source": {
    "blob": "4a1d04d54f6d90dc03d9724c74aa4ed7166fbd1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 148,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AtLocation/Variantcf9cf1caaf3c9c0ec1b21a2c10a7505709644648f13058fbf1956dc07b0cc03f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c95a400f4cbfdd9ab0ab0e7d317c1ad4357f993fc24fb0347af3d1dbc7e8852c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AtLocation/Variantcf9cf1caaf3c9c0ec1b21a2c10a7505709644648f13058fbf1956dc07b0cc03f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:61047361eb2c4494eeb0b5c94623d252fdf4c458c79ac9058d3e92d4bfda11fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def transformAtNondepPropLocation (m : Expr → ReaderT Simp.Context MetaM Simp.Result)
    (proc : String) (loc : Location) (ifUnchanged : BehaviorIfUnchanged := .error)
    (mayCloseGoalFromHyp : Bool := false)
    -- streamline the most common use case, in which the procedure `m`'s implementation is not
    -- simp-based and its `Simp.Context` is ignored
    (ctx : Simp.Context := default) :
    TacticM Unit :=
  withNondepPropLocation loc
    (liftMetaTactic1 ∘ (transformAtLocalDecl m proc ifUnchanged mayCloseGoalFromHyp · · ctx))
    (liftMetaTactic1 (transformAtTarget m proc ifUnchanged · ctx))
    fun _ ↦ throwError "`{proc}` made no progress anywhere"

end Mathlib.Tactic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AtLocation/Variantcf9cf1caaf3c9c0ec1b21a2c10a7505709644648f13058fbf1956dc07b0cc03f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AtLocation/Variantcf9cf1caaf3c9c0ec1b21a2c10a7505709644648f13058fbf1956dc07b0cc03f.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a1d04d54f6d90dc03d9724c74aa4ed7166fbd1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# detectLambdaTheoremArgs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6e3bcf1146d2f8948dddc83be4df97e8296a4fe46c874a8f48f0c2408b0cc094",
  "kind": "def",
  "lexical_name": "detectLambdaTheoremArgs",
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
  "slug": "detectlambdatheoremargs--7fc8ac84a7194f329e05b93c",
  "source": {
    "blob": "56cffd3792e30421701d4b663453b1635aa2e5d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 64,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantca69a6fe15ae48606ae6cf1a2cdad0024119bbc7535f0fcda21b6e83d34de318.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7fc8ac84a7194f329e05b93c4fbe31d245de751b7e0e511c027c88c503ec37ca",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantca69a6fe15ae48606ae6cf1a2cdad0024119bbc7535f0fcda21b6e83d34de318.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6e3bcf1146d2f8948dddc83be4df97e8296a4fe46c874a8f48f0c2408b0cc094`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def detectLambdaTheoremArgs (f : Expr) (ctxVars : Array Expr) :
    MetaM (Option LambdaTheoremArgs) := do

  -- eta expand but beta reduce body
  let f ← forallTelescope (← inferType f) fun xs _ =>
    mkLambdaFVars xs (mkAppN f xs).headBeta

  match f with
  | .lam _ _ xBody _ =>
    unless xBody.hasLooseBVars do return .some .const
    match xBody with
    | .bvar 0 => return .some .id
    | .app (.bvar 0) (.fvar _) =>  return .some .apply
    | .app (.fvar fId) (.app (.fvar gId) (.bvar 0)) =>
      -- fun x => f (g x)
      let .some argId_f := ctxVars.findIdx? (fun x => x == (.fvar fId)) | return none
      let .some argId_g := ctxVars.findIdx? (fun x => x == (.fvar gId)) | return none
      return .some <| .comp argId_f argId_g
    | .lam _ _ (.app (.app (.fvar _) (.bvar 1)) (.bvar 0)) _ =>
      return .some .pi
    | _ => return none
  | _ => return none


/-- Structure holding information about lambda theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantca69a6fe15ae48606ae6cf1a2cdad0024119bbc7535f0fcda21b6e83d34de318.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Theorems/Variantca69a6fe15ae48606ae6cf1a2cdad0024119bbc7535f0fcda21b6e83d34de318.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56cffd3792e30421701d4b663453b1635aa2e5d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

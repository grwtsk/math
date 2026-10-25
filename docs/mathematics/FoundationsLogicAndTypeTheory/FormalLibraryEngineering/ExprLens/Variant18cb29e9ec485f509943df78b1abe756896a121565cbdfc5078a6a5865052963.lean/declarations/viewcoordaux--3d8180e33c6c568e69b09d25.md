# viewCoordAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:99f9e1331c1e00d72e982c7f66663a753a3b76607917a199171b1e28b790688c",
  "kind": "def",
  "lexical_name": "viewCoordAux",
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
  "slug": "viewcoordaux--3d8180e33c6c568e69b09d25",
  "source": {
    "blob": "e4b7f5f1840f2bad13dd577c9bcb45f23129a89e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 71,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprLens/Variant18cb29e9ec485f509943df78b1abe756896a121565cbdfc5078a6a5865052963.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3d8180e33c6c568e69b09d2539bc88e32464119e59fb667ac8c646dfd8114285",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprLens/Variant18cb29e9ec485f509943df78b1abe756896a121565cbdfc5078a6a5865052963.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:99f9e1331c1e00d72e982c7f66663a753a3b76607917a199171b1e28b790688c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def viewCoordAux (k : Array Expr → Expr → M α) (fvars: Array Expr) (n : Nat) (e : Expr) : M α := do
  match n, e with
  | 3, _                => throwError "Internal: Types should be handled by viewAux"
  | 0, .app f _         => k fvars f
  | 1, .app _ a         => k fvars a
  | 0, .lam _ y _ _     => k fvars y
  | 1, .lam n y b c     => withLocalDecl n c (y.instantiateRev fvars) fun x => k (fvars.push x) b
  | 0, .forallE _ y _ _ => k fvars y
  | 1, .forallE n y b c => withLocalDecl n c (y.instantiateRev fvars) fun x => k (fvars.push x) b
  | 0, .letE _ y _ _ _  => k fvars y
  | 1, .letE _ _ a _ _  => k fvars a
  | 2, .letE n y a b _  => withLetDecl n (y.instantiateRev fvars) (a.instantiateRev fvars) fun x => k (fvars.push x) b
  | 0, .proj _ _ b      => k fvars b
  | n, .mdata _ a       => viewCoordAux k fvars n a
  | c, e                => throwError "Invalid coordinate {c} for {e}"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprLens/Variant18cb29e9ec485f509943df78b1abe756896a121565cbdfc5078a6a5865052963.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprLens/Variant18cb29e9ec485f509943df78b1abe756896a121565cbdfc5078a6a5865052963.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4b7f5f1840f2bad13dd577c9bcb45f23129a89e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

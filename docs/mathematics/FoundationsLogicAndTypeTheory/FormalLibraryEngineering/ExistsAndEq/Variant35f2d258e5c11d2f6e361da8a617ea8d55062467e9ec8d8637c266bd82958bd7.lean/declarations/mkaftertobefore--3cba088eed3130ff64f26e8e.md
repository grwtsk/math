# mkAfterToBefore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a01ee98e82ed760ccc2e63f77cf16d27955975e0ae27d1a70e647c6c07b27765",
  "kind": "def",
  "lexical_name": "mkAfterToBefore",
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
  "slug": "mkaftertobefore--3cba088eed3130ff64f26e8e",
  "source": {
    "blob": "35b2a2071b9d3b88e9247b3ac0e2bfdb0ed43f60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 328,
    "line": 310,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExistsAndEq/Variant35f2d258e5c11d2f6e361da8a617ea8d55062467e9ec8d8637c266bd82958bd7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3cba088eed3130ff64f26e8e73a46e222e5e992c3f0eff50780db344c438b619",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExistsAndEq/Variant35f2d258e5c11d2f6e361da8a617ea8d55062467e9ec8d8637c266bd82958bd7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a01ee98e82ed760ccc2e63f77cf16d27955975e0ae27d1a70e647c6c07b27765`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–328.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkAfterToBefore {u : Level} {α : Q(Sort u)} {p : Q($α → Prop)}
    {P' : Q(Prop)} (a' : Q($α)) (fvars : List VarQ) (path : Path) :
    MetaM <| Q($P' → (∃ a, $p a)) := do
  withLocalDeclQ .anonymous .default P' fun (h : Q($P')) => do
    let pf : Q(∃ a, $p a) ← destruct h fvars path.forResult [] fun leaves _ => do
      let pf1 : Q($p $a') ← construct fvars path leaves
      return q(Exists.intro $a' $pf1)
    mkLambdaFVars #[h] pf

/-- Runs `k` on `e` with the metavariables occurring in `e` replaced by local variables, and
substitutes the metavariables back into the resulting `Simp.Step`. In some cases (e.g. under
`aesop`) the goal contains metavariables, and this is needed to handle them properly: the proof
built by `substCore` can only be instantiated when the goal contains none.

The abstraction is done by `abstractMVars`, so that metavariables occurring in the types of other
metavariables (as in `?f : α → ?β`) are handled consistently.

TODO: this is a general simproc infrastructure, should we moved somewhere else?
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExistsAndEq/Variant35f2d258e5c11d2f6e361da8a617ea8d55062467e9ec8d8637c266bd82958bd7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExistsAndEq/Variant35f2d258e5c11d2f6e361da8a617ea8d55062467e9ec8d8637c266bd82958bd7.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35b2a2071b9d3b88e9247b3ac0e2bfdb0ed43f60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

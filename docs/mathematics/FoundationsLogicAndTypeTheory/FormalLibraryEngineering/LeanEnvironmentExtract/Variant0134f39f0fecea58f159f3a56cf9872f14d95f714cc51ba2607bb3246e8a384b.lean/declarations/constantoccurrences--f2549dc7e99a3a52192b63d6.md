# constantOccurrences

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cd59d1441a7b91766581b69ab72333b2b9b79b73425b2412468710794c4ca238",
  "kind": "def",
  "lexical_name": "constantOccurrences",
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
  "slug": "constantoccurrences--f2549dc7e99a3a52192b63d6",
  "source": {
    "blob": "fc2129d455834ef3273797a93bfc74e9fea1c6dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 260,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanEnvironmentExtract/Variant0134f39f0fecea58f159f3a56cf9872f14d95f714cc51ba2607bb3246e8a384b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f2549dc7e99a3a52192b63d6654fb2fb24a0370fe83660a910ea9692b87a3a15",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanEnvironmentExtract/Variant0134f39f0fecea58f159f3a56cf9872f14d95f714cc51ba2607bb3246e8a384b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cd59d1441a7b91766581b69ab72333b2b9b79b73425b2412468710794c4ca238`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 260–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def constantOccurrences (expression : Expr) (path : Array Nat := #[]) : Array RawOccurrence :=
  match expression with
  | .const name _ => #[{ constant := name.toString, path := path }]
  | .app fn arg =>
      constantOccurrences fn (path.push 0) ++ constantOccurrences arg (path.push 1)
  | .lam _ type body _ =>
      constantOccurrences type (path.push 0) ++ constantOccurrences body (path.push 1)
  | .forallE _ type body _ =>
      constantOccurrences type (path.push 0) ++ constantOccurrences body (path.push 1)
  | .letE _ type value body _ =>
      constantOccurrences type (path.push 0) ++
      constantOccurrences value (path.push 1) ++
      constantOccurrences body (path.push 2)
  | .mdata _ body => constantOccurrences body (path.push 0)
  | .proj _ _ object => constantOccurrences object (path.push 0)
  | _ => #[]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanEnvironmentExtract/Variant0134f39f0fecea58f159f3a56cf9872f14d95f714cc51ba2607bb3246e8a384b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanEnvironmentExtract/Variant0134f39f0fecea58f159f3a56cf9872f14d95f714cc51ba2607bb3246e8a384b.lean#L260).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc2129d455834ef3273797a93bfc74e9fea1c6dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

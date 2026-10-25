# isClass?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1d7db073d7081aa2c30f64ae6b3706ff97711e5b7de2c64c0fe6b4acf649e41c",
  "kind": "def",
  "lexical_name": "isClass?",
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
  "slug": "isclass--7724f919f14cd79f56dc6df5",
  "source": {
    "blob": "ab290469b8a9bbf1a4dec5f28d48b10eb353fdb9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 15,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IsClass/Variant6e61b8b56f496445522b82c45469af9250213a505f8832a155e21d25178964d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7724f919f14cd79f56dc6df5eb8e26065438631888d637c33cb1a2bcafd38625",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IsClass/Variant6e61b8b56f496445522b82c45469af9250213a505f8832a155e21d25178964d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1d7db073d7081aa2c30f64ae6b3706ff97711e5b7de2c64c0fe6b4acf649e41c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def isClass? (env : Environment) (type : Expr) : Option Name :=
  go type
where
  go : Expr → Option Name
  | .bvar ..         => none
  | .lit ..          => none
  | .fvar ..         => none
  | .sort ..         => none
  | .lam ..          => none
  | .proj ..         => none
  | .mvar ..         => none
  | .letE _ _ _ b _  => go b
  | .forallE _ _ b _ => go b
  | .mdata _ b       => go b
  | .const n _       => if isClass env n then some n else none
  | .app f _         => go f

end Lean.Meta.Sym
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IsClass/Variant6e61b8b56f496445522b82c45469af9250213a505f8832a155e21d25178964d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IsClass/Variant6e61b8b56f496445522b82c45469af9250213a505f8832a155e21d25178964d9.lean#L15).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab290469b8a9bbf1a4dec5f28d48b10eb353fdb9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

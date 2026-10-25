# pairLit'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b5e7ce26596c74188065e9c8d4a102229a40d2c040ed5a0dc8d48b472dc61ab9",
  "kind": "def",
  "lexical_name": "pairLit'",
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
  "slug": "pairlit--c4d4d140406bff3f42ca65a0",
  "source": {
    "blob": "8a611d02608fa3e3295678e742822b42d23837c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 90,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Matching/Varianta7bee38f1e7fb5f7d6ee13aacb56ee3411f5bd052b3a1045947e9d9d3fe4039f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c4d4d140406bff3f42ca65a02999d9c54abff3b310fdc326bd5fc954cc4ab39c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Matching/Varianta7bee38f1e7fb5f7d6ee13aacb56ee3411f5bd052b3a1045947e9d9d3fe4039f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b5e7ce26596c74188065e9c8d4a102229a40d2c040ed5a0dc8d48b472dc61ab9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pairLit' (u : Lean.Level) (α : Q(Type u)) (a : Q($α)) : MetaM Q($α × $α) := do
  match (generalizing := true) u, α, a with
  | 0, ~q(Nat), n => return q(($n, $n))
  | 0, ~q(Int), z => return q(($z, $z))
  | _, _, _ => failure

#eval show MetaM Unit from do guard <| (←pairLit' _ _ q(2)) == q((2, 2))

section RegressionLetMVar

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Matching/Varianta7bee38f1e7fb5f7d6ee13aacb56ee3411f5bd052b3a1045947e9d9d3fe4039f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Matching/Varianta7bee38f1e7fb5f7d6ee13aacb56ee3411f5bd052b3a1045947e9d9d3fe4039f.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a611d02608fa3e3295678e742822b42d23837c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

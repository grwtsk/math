# mkInjThms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9742431c32ffad05d18e59b51d8b42ad9e539f6f6acbc5262340e39593d61d85",
  "kind": "def",
  "lexical_name": "mkInjThms",
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
  "slug": "mkinjthms--b9be50126ca8bacd2f9ec75c",
  "source": {
    "blob": "fcc9a7d47514df1eecb2e6f85eb24d6acedc65f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 275,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variante1628cb9a47fa22d6710a61d4eca7f479669c06020d1671aaa624e0ad63e725b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b9be50126ca8bacd2f9ec75c51cfe70de25ff4ed483f39835621ef8571c5c1e8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variante1628cb9a47fa22d6710a61d4eca7f479669c06020d1671aaa624e0ad63e725b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9742431c32ffad05d18e59b51d8b42ad9e539f6f6acbc5262340e39593d61d85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def mkInjThms (ctx : Deriving.Context) (toSFunNames fromSFunNames : Array Name) :
    TermElabM (TSyntax `command) := do
  let mut res : Array (TSyntax `command) := #[]
  for i in [:toSFunNames.size] do
    let toSFunName := toSFunNames[i]!
    let fromSFunName := fromSFunNames[i]!
    let injThmName := ctx.auxFunNames[i]!
    let indVal := ctx.typeInfos[i]!
    let header ← mkHeader ``Encodable 1 indVal
    let enc := mkIdent toSFunName
    let dec := mkIdent fromSFunName
    let t := mkIdent header.targetNames[0]!
    let lemmas : TSyntaxArray ``Parser.Tactic.simpLemma ← ctx.auxFunNames.mapM fun i =>
      `(Parser.Tactic.simpLemma| $(mkIdent i):term)
    let tactic : Term ← `(by
        cases $t:ident
        <;> (unfold $(mkIdent toSFunName):ident $(mkIdent fromSFunName):ident;
              simp only [Encodable.encodek, $lemmas,*]; try rfl)
      )
    res := res.push <| ← `(
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variante1628cb9a47fa22d6710a61d4eca7f479669c06020d1671aaa624e0ad63e725b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variante1628cb9a47fa22d6710a61d4eca7f479669c06020d1671aaa624e0ad63e725b.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcc9a7d47514df1eecb2e6f85eb24d6acedc65f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

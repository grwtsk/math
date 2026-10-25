# OptionsPerPos.merge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:133869359a378f509664f890c7be6d219577ce478bb60b16e97c46b9db0337bf",
  "kind": "def",
  "lexical_name": "OptionsPerPos.merge",
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
  "slug": "optionsperpos-merge--57c3f3a98afdb07b28631417",
  "source": {
    "blob": "777c86b6581b030a5ac07a7deaf920be62d46fca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 28,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SubExpr/Variantd85fa8388d8d71b1b23ca24371d599457bfc0ba4bcc0f6f39ebe74c4ea2de47f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:57c3f3a98afdb07b28631417f000411b7251b013249560aae3263a7290072af1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SubExpr/Variantd85fa8388d8d71b1b23ca24371d599457bfc0ba4bcc0f6f39ebe74c4ea2de47f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:133869359a378f509664f890c7be6d219577ce478bb60b16e97c46b9db0337bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def OptionsPerPos.merge : OptionsPerPos → OptionsPerPos → OptionsPerPos :=
  Std.TreeMap.mergeWith (fun _ => Options.mergeBy (fun _ _ dv => dv))

namespace SubExpr

open Lean.SubExpr

variable {α : Type} [Inhabited α]
variable {m : Type → Type} [Monad m]

section Descend

variable [MonadReaderOf SubExpr m] [MonadWithReaderOf SubExpr m]
variable [MonadLiftT MetaM m] [MonadControlT MetaM m]
variable [MonadLiftT IO m]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SubExpr/Variantd85fa8388d8d71b1b23ca24371d599457bfc0ba4bcc0f6f39ebe74c4ea2de47f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SubExpr/Variantd85fa8388d8d71b1b23ca24371d599457bfc0ba4bcc0f6f39ebe74c4ea2de47f.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `777c86b6581b030a5ac07a7deaf920be62d46fca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

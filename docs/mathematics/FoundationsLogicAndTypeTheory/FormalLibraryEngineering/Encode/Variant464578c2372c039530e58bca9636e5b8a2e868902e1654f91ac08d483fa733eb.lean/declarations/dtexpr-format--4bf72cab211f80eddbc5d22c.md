# DTExpr.format

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c008ebd25e64522996e0af6423c5b7b2bc796522a103b9609ffb4ace9ce247f1",
  "kind": "def",
  "lexical_name": "DTExpr.format",
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
  "slug": "dtexpr-format--4bf72cab211f80eddbc5d22c",
  "source": {
    "blob": "a5c49e2a3d408534c220f491f4002a64ff903eeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 44,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant464578c2372c039530e58bca9636e5b8a2e868902e1654f91ac08d483fa733eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4bf72cab211f80eddbc5d22cb362d993e8dffd07760076de1f67ed8cfcc1a7ff",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant464578c2372c039530e58bca9636e5b8a2e868902e1654f91ac08d483fa733eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c008ebd25e64522996e0af6423c5b7b2bc796522a103b9609ffb4ace9ce247f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def DTExpr.format : DTExpr → Format
  | .star _                 => "*"
  | .opaque                 => "◾"
  | .const n as             => Std.format n ++ formatArgs as
  | .fvar n as              => Std.format n.name ++ formatArgs as
  | .bvar i as              => "#" ++ Std.format i  ++ formatArgs as
  | .lit (Literal.natVal v) => Std.format v
  | .lit (Literal.strVal v) => repr v
  | .sort                   => "Sort"
  | .lam b                  => "λ " ++ DTExpr.format b
  | .forall d b             => DTExpr.format d ++ " → " ++ DTExpr.format b
  | .proj _ i a as          => DTExpr.format a ++ "." ++ Std.format i ++ formatArgs as
where
  formatArgs (as : Array DTExpr) :=
    if as.isEmpty
      then .nil
      else " " ++ Format.paren (@Format.joinSep _ ⟨DTExpr.format⟩ as.toList ", ")

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant464578c2372c039530e58bca9636e5b8a2e868902e1654f91ac08d483fa733eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant464578c2372c039530e58bca9636e5b8a2e868902e1654f91ac08d483fa733eb.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5c49e2a3d408534c220f491f4002a64ff903eeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

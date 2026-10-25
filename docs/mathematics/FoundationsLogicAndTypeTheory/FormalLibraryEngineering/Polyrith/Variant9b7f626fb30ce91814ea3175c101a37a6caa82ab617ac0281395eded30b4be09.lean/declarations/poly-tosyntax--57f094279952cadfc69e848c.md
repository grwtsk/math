# Poly.toSyntax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:026762b751296ae5c0be746c8e57f5eda7726e6c6278006d3bb8a3c8432fa89d",
  "kind": "def",
  "lexical_name": "Poly.toSyntax",
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
  "slug": "poly-tosyntax--57f094279952cadfc69e848c",
  "source": {
    "blob": "ced04f991a97441d85f7a185eab1527b0a1aafc6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 114,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variant9b7f626fb30ce91814ea3175c101a37a6caa82ab617ac0281395eded30b4be09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:57f094279952cadfc69e848c0d722b620792ac49cb02f0879cf0cc8e9f7ea594",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variant9b7f626fb30ce91814ea3175c101a37a6caa82ab617ac0281395eded30b4be09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:026762b751296ae5c0be746c8e57f5eda7726e6c6278006d3bb8a3c8432fa89d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Poly.toSyntax : Poly → Unhygienic Syntax.Term
  | .const z => pure (quote z)
  | .var n => pure vars[n]!
  | .hyp stx => pure stx
  | .add p q => do `($(← p.toSyntax) + $(← q.toSyntax))
  | .sub p q => do `($(← p.toSyntax) - $(← q.toSyntax))
  | .mul p q => do `($(← p.toSyntax) * $(← q.toSyntax))
  | .div p q => do `($(← p.toSyntax) / $(← q.toSyntax))
  | .pow p q => do `($(← p.toSyntax) ^ $(← q.toSyntax))
  | .neg p => do `(-$(← p.toSyntax))

attribute [local instance] monadLiftOptionMetaM in
/-- Reifies a ring expression of type `α` as a `Poly`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variant9b7f626fb30ce91814ea3175c101a37a6caa82ab617ac0281395eded30b4be09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variant9b7f626fb30ce91814ea3175c101a37a6caa82ab617ac0281395eded30b4be09.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ced04f991a97441d85f7a185eab1527b0a1aafc6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

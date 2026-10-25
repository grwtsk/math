# orElse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:642c639cf3492d0a45967f383b8e550d7ea8cc33f6529b471d62ab4d87ea1e26",
  "kind": "def",
  "lexical_name": "orElse",
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
  "slug": "orelse--03c770b2f41e60b7467caddc",
  "source": {
    "blob": "a9338299dc2d8c3c948c956e036f9a9ca5a0c2f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 927,
    "line": 916,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Computation/Variant927915112cc05674de1d26f760546d213db3cbce299b183974684977be69ee60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:03c770b2f41e60b7467caddc73b9352a0ce86c6e5e67b66edc739344903cd331",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Computation/Variant927915112cc05674de1d26f760546d213db3cbce299b183974684977be69ee60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:642c639cf3492d0a45967f383b8e550d7ea8cc33f6529b471d62ab4d87ea1e26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 916–927.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def orElse (c₁ : Computation α) (c₂ : Unit → Computation α) : Computation α :=
  @Computation.corec α (Computation α × Computation α)
    (fun ⟨c₁, c₂⟩ =>
      match destruct c₁ with
      | Sum.inl a => Sum.inl a
      | Sum.inr c₁' =>
        match destruct c₂ with
        | Sum.inl a => Sum.inl a
        | Sum.inr c₂' => Sum.inr (c₁', c₂'))
    (c₁, c₂ ())
#align computation.orelse Computation.orElse

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Computation/Variant927915112cc05674de1d26f760546d213db3cbce299b183974684977be69ee60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Computation/Variant927915112cc05674de1d26f760546d213db3cbce299b183974684977be69ee60.lean#L916).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9338299dc2d8c3c948c956e036f9a9ca5a0c2f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

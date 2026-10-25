# inductionOn'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:344709a36b8e1abe1e9309280a853c6353ae560bb47de1a9c1b617a6d6766a25",
  "kind": "def",
  "lexical_name": "inductionOn'",
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
  "slug": "inductionon--ebffd774c92b2feec867e7b6",
  "source": {
    "blob": "fb55fc31647617a5556331fdc54dcbae5facd9a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 95,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Init/Variante546003e52f14aa979b6291b39f7e9c0e7a5b3e39ea83f8d8064a68a28e9df9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ebffd774c92b2feec867e7b6c4b6c9915e2b49af00bcaa61b5806c9dd3668ab8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Init/Variante546003e52f14aa979b6291b39f7e9c0e7a5b3e39ea83f8d8064a68a28e9df9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:344709a36b8e1abe1e9309280a853c6353ae560bb47de1a9c1b617a6d6766a25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[elab_as_elim] protected def inductionOn' : motive z :=
  cast (congrArg motive <| show b + (z - b) = z by lia) <|
  match z - b with
  | .ofNat n => pos n
  | .negSucc n => neg n
where
  /-- The positive case of `Int.inductionOn'`. -/
  pos : ∀ n : ℕ, motive (b + n)
  | 0 => cast (by simp) zero
  | n + 1 => cast (by lia) <| succ _ (Int.le_add_of_nonneg_right (natCast_nonneg _)) (pos n)
  /-- The negative case of `Int.inductionOn'`. -/
  neg : ∀ n : ℕ, motive (b + -[n+1])
  | 0 => pred _ Int.le_rfl zero
  | n + 1 => cast (by lia) <| pred _ (by lia) (neg n)

variable {z b zero succ pred}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Init/Variante546003e52f14aa979b6291b39f7e9c0e7a5b3e39ea83f8d8064a68a28e9df9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Init/Variante546003e52f14aa979b6291b39f7e9c0e7a5b3e39ea83f8d8064a68a28e9df9e.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb55fc31647617a5556331fdc54dcbae5facd9a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# lookupPathsByValueFrom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fd4581b6d9701e394817f5289dd059934b429a1eaee91e06251518ab684477e7",
  "kind": "def",
  "lexical_name": "lookupPathsByValueFrom",
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
  "slug": "lookuppathsbyvaluefrom--23b77ddf0473cc08f6fab0b7",
  "source": {
    "blob": "ac3ca4cde98fbc34a1eb58319796242e0427201f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 62,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant0f477c6696015b5772032a3e516be9a43ff7d5da6d2b959ca45c6f99f34455de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:23b77ddf0473cc08f6fab0b7341e0ce2e02440a8b1b252a77536dba4a5451765",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant0f477c6696015b5772032a3e516be9a43ff7d5da6d2b959ca45c6f99f34455de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fd4581b6d9701e394817f5289dd059934b429a1eaee91e06251518ab684477e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def lookupPathsByValueFrom {α : Type} [DecidableEq α]
    (s : CompressedString α) (target : α)
    (offset fuel : Nat) :
    List (Σ i : Fin (decode s).length, LookupPathAt s i) :=
  match fuel with
  | 0 => []
  | fuel + 1 =>
      if h : offset < (decode s).length then
        let rest := lookupPathsByValueFrom s target (offset + 1) fuel
        match listGet? (decode s) offset with
        | some value =>
            if value = target then
              ⟨⟨offset, h⟩, canonicalLookupPathAt s ⟨offset, h⟩⟩ :: rest
            else
              rest
        | none => rest
      else
        []

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant0f477c6696015b5772032a3e516be9a43ff7d5da6d2b959ca45c6f99f34455de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant0f477c6696015b5772032a3e516be9a43ff7d5da6d2b959ca45c6f99f34455de.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac3ca4cde98fbc34a1eb58319796242e0427201f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# mkRewrite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4ea1a5bbd2b11d3fadec63685bd5dff71190c58eab915cda4e09d1d11ef34b24",
  "kind": "def",
  "lexical_name": "mkRewrite",
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
  "slug": "mkrewrite--a39f7a91656c66ef539f9a11",
  "source": {
    "blob": "c015061b395b1dd201677275c19d484e275c118e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 125,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveUnfold/Variantf9ce306b9d65c78e975a3beef45e4cd6e60699bac82aef60210dadbc4f111cf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a39f7a91656c66ef539f9a110921e8a255e1f6c7190d9753def0226208a42321",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveUnfold/Variantf9ce306b9d65c78e975a3beef45e4cd6e60699bac82aef60210dadbc4f111cf3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4ea1a5bbd2b11d3fadec63685bd5dff71190c58eab915cda4e09d1d11ef34b24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkRewrite (occ : Option Nat) (symm : Bool) (rewrite : String) (loc : Option Name) : String :=
  let cfg := match occ with
    | some n => s! " (config := \{ occs := .pos [{n}]})"
    | none => ""
  let loc := match loc with
    | some n => s! " at {n}"
    | none => ""
  let symm := if symm then "← " else ""
  s! "rw{cfg} [{symm}{rewrite}]{loc}"

/--
Return a string of the expression suitable for pasting into the editor.

We ignore any options set by the user.

We set `pp.universes` to false because new universe level metavariables are not understood
by the elaborator.

We set `pp.unicode.fun` to true as per Mathlib convention.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveUnfold/Variantf9ce306b9d65c78e975a3beef45e4cd6e60699bac82aef60210dadbc4f111cf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveUnfold/Variantf9ce306b9d65c78e975a3beef45e4cd6e60699bac82aef60210dadbc4f111cf3.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c015061b395b1dd201677275c19d484e275c118e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

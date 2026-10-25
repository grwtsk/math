# Anonymous elab_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:42e3461a9b878d060c131d2cd702aa0566330433432f82927ab0f2cd1b52b3b8",
  "kind": "elab_rules",
  "lexical_name": null,
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
  "slug": "elab-rules--eb08c4bcd1959b4d9d1e44ee",
  "source": {
    "blob": "d6b6e911dae4bd2d26c487f79c54ddfac25f0528",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 409,
    "line": 391,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant14798f45bf750eb98249555c05426684059242965f2a34d24446952166a4e230.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eb08c4bcd1959b4d9d1e44eef86e8345556d5e493b4aed3f8da633bd4be0720e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant14798f45bf750eb98249555c05426684059242965f2a34d24446952166a4e230.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:42e3461a9b878d060c131d2cd702aa0566330433432f82927ab0f2cd1b52b3b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 391–409.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab_rules : tactic
  | `(tactic| linarith $[!%$bang]? $[$cfg]? $[only%$o]? $[[$args,*]]?) => withMainContext do
    liftMetaFinishingTactic <|
      Linarith.linarith o.isSome
        (← ((args.map (TSepArray.getElems)).getD {}).mapM (elabTerm ·.raw none)).toList
        ((← elabLinarithConfig (mkOptionalNode cfg)).updateReducibility bang.isSome)

-- TODO restore this when `hint` is ported.
-- add_hint_tactic "linarith"

-- TODO restore this when `add_tactic_doc` is ported
-- add_tactic_doc
-- { name       := "linarith",
--   category   := doc_category.tactic,
--   decl_names := [`tactic.interactive.linarith],
--   tags       := ["arithmetic", "decision procedure", "finishing"] }

open Linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant14798f45bf750eb98249555c05426684059242965f2a34d24446952166a4e230.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variant14798f45bf750eb98249555c05426684059242965f2a34d24446952166a4e230.lean#L391).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6b6e911dae4bd2d26c487f79c54ddfac25f0528` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

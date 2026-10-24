# lawfulFix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:44df3854297a44ce92b4c0754dae5a730d0517fe50f48f25b32dcbec782e1b5e",
  "kind": "instance",
  "lexical_name": "lawfulFix",
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
  "slug": "lawfulfix--c4797cc51cf03cfec1b58014",
  "source": {
    "blob": "c2bf4b33951d4b88242acef5f2a0f10e6967443c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 215,
    "path": "GRWTSK/Topology/GeneralTopology/LawfulFix/Variante09a1eaa80474905a7ddfd5a70d6270bad7da1bd6a57c51557e22620f36b6a2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c4797cc51cf03cfec1b5801452b73323b5e51c158aac04714ed3b3b8522fbd4b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LawfulFix/Variante09a1eaa80474905a7ddfd5a70d6270bad7da1bd6a57c51557e22620f36b6a2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:44df3854297a44ce92b4c0754dae5a730d0517fe50f48f25b32dcbec782e1b5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance lawfulFix : LawfulFix (Part α) :=
  ⟨fun {f : Part α →o Part α} hc ↦ show Part.fix (toUnitMono f) () = _ by
    rw [Part.fix_eq (to_unit_cont f hc)]; rfl⟩
#align part.lawful_fix Part.lawfulFix

end Part

open Sigma

namespace Pi

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LawfulFix/Variante09a1eaa80474905a7ddfd5a70d6270bad7da1bd6a57c51557e22620f36b6a2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LawfulFix/Variante09a1eaa80474905a7ddfd5a70d6270bad7da1bd6a57c51557e22620f36b6a2f.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2bf4b33951d4b88242acef5f2a0f10e6967443c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

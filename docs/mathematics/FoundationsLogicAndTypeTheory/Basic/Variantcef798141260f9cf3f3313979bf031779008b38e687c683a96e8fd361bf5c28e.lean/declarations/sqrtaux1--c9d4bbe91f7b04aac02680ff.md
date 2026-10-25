# sqrtAux1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d20e23bf2eb7c456a6e7332c05100b1254ee698689ca3dc630ce531f566daecf",
  "kind": "def",
  "lexical_name": "sqrtAux1",
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
  "slug": "sqrtaux1--c9d4bbe91f7b04aac02680ff",
  "source": {
    "blob": "96467189b8d11778f42a5505529cabc38b861e0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 530,
    "line": 525,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variantcef798141260f9cf3f3313979bf031779008b38e687c683a96e8fd361bf5c28e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c9d4bbe91f7b04aac02680ffc62b998eb6f7dfb9c71ffb1869c5c75fdba5d029",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Basic/Variantcef798141260f9cf3f3313979bf031779008b38e687c683a96e8fd361bf5c28e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d20e23bf2eb7c456a6e7332c05100b1254ee698689ca3dc630ce531f566daecf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 525–530.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def sqrtAux1 (b : PosNum) (r n : Num) : Num × Num :=
  match Num.ofZNum' (n.sub' (r + Num.pos b)) with
  | some n' => (r.div2 + Num.pos b, n')
  | none => (r.div2, n)

/-- Auxiliary definition for a `sqrt` function which is not currently implemented. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Basic/Variantcef798141260f9cf3f3313979bf031779008b38e687c683a96e8fd361bf5c28e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variantcef798141260f9cf3f3313979bf031779008b38e687c683a96e8fd361bf5c28e.lean#L525).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96467189b8d11778f42a5505529cabc38b861e0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

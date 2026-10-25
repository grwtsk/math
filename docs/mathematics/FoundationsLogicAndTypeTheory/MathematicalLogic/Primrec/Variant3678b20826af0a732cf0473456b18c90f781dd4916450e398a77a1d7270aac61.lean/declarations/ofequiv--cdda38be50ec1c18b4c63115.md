# ofEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a8f0903261919b26a528c3fee2211de16a2ccdb65708f9ef16ff318905ff900c",
  "kind": "def",
  "lexical_name": "ofEquiv",
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
  "slug": "ofequiv--cdda38be50ec1c18b4c63115",
  "source": {
    "blob": "f234f502df30caee96a3c34099002b851c17d492",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 171,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Primrec/Variant3678b20826af0a732cf0473456b18c90f781dd4916450e398a77a1d7270aac61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cdda38be50ec1c18b4c6311537b008c3b7e1c1a7235c209c7e9b12803be0c076",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Primrec/Variant3678b20826af0a732cf0473456b18c90f781dd4916450e398a77a1d7270aac61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a8f0903261919b26a528c3fee2211de16a2ccdb65708f9ef16ff318905ff900c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofEquiv (α) {β} [Primcodable α] (e : β ≃ α) : Primcodable β :=
  { Encodable.ofEquiv α e with
    prim := (@Primcodable.prim α _).of_eq fun n => by
      rw [decode_ofEquiv]
      cases (@decode α _ n) <;>
        simp [encode_ofEquiv] }
#align primcodable.of_equiv Primcodable.ofEquiv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Primrec/Variant3678b20826af0a732cf0473456b18c90f781dd4916450e398a77a1d7270aac61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Primrec/Variant3678b20826af0a732cf0473456b18c90f781dd4916450e398a77a1d7270aac61.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f234f502df30caee96a3c34099002b851c17d492` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

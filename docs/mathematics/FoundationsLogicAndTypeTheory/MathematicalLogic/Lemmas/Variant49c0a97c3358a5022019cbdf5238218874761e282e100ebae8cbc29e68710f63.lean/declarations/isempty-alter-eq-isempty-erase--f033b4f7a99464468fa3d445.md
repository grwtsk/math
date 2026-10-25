# isEmpty_alter_eq_isEmpty_erase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc5adda8-9f1a-f3d0-dc5c-f0e138ea160c",
  "kind": "theorem",
  "lexical_name": "isEmpty_alter_eq_isEmpty_erase",
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
  "slug": "isempty-alter-eq-isempty-erase--f033b4f7a99464468fa3d445",
  "source": {
    "blob": "82024320020a50c7c2ec39a66d103bdafe4f1006",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3706,
    "line": 3702,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant49c0a97c3358a5022019cbdf5238218874761e282e100ebae8cbc29e68710f63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f033b4f7a99464468fa3d4456afdb93edbc6c2352e0249f5eeacd6e785ba5dd4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant49c0a97c3358a5022019cbdf5238218874761e282e100ebae8cbc29e68710f63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc5adda8-9f1a-f3d0-dc5c-f0e138ea160c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3702–3706.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isEmpty_alter_eq_isEmpty_erase [LawfulBEq α] {k : α} {f : Option (β k) → Option (β k)} :
    (m.alter k f).isEmpty = ((m.erase k).isEmpty && (f (m.get? k)).isNone) :=
  Raw₀.isEmpty_alter_eq_isEmpty_erase _ m.2

@[simp, grind =]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant49c0a97c3358a5022019cbdf5238218874761e282e100ebae8cbc29e68710f63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant49c0a97c3358a5022019cbdf5238218874761e282e100ebae8cbc29e68710f63.lean#L3702).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82024320020a50c7c2ec39a66d103bdafe4f1006` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

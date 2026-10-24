# terminalTrace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:944922db7cb18c120415f60805c1aa6570a18c3d74d0cb5c84a1d5e8459c2b03",
  "kind": "def",
  "lexical_name": "terminalTrace",
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
  "slug": "terminaltrace--326a435a1c30c8e745e161f5",
  "source": {
    "blob": "070e0fe9efc69aa4b66826b61e22a54b0647bcff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 28,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonTerminalEndpoint.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:326a435a1c30c8e745e161f551df840a6a8c2df8dd4784ded2b489f6e811e5d8",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/ConcreteNewtonTerminalEndpoint.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:944922db7cb18c120415f60805c1aa6570a18c3d74d0cb5c84a1d5e8459c2b03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def terminalTrace (j : Fin 9) : GridState :=
  match j.1 with
  | 0 => terminalStart
  | 1 => ⟨10838898718460479810, -14191221431379019034, 229⟩
  | 2 => ⟨-4548718188429511689, -16676895518400396279, 624⟩
  | 3 => ⟨-13955200220985460228, 8224594830173920579, 1439⟩
  | 4 => ⟨6890302840403050187, -12444024499167683699, 3463⟩
  | 5 => ⟨-5820944448210479561, -9296285242539033075, 7262⟩
  | 6 => ⟨-2848064939350110512, 5866960560119778311, 11905⟩
  | 7 => ⟨-1426254530887242336, -1811645958230809858, 11251⟩
  | _ => ⟨-67646576876192498, 280143557688622374, 3952⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ConcreteNewtonTerminalEndpoint.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonTerminalEndpoint.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `070e0fe9efc69aa4b66826b61e22a54b0647bcff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

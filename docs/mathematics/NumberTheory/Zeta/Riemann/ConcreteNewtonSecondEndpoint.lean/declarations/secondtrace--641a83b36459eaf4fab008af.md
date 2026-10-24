# secondTrace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6184059f71120eaab7e6175d570e58a1228883bcfdcd91a1378a632569c7a979",
  "kind": "def",
  "lexical_name": "secondTrace",
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
  "slug": "secondtrace--641a83b36459eaf4fab008af",
  "source": {
    "blob": "b23215f2e315a358d7eb18d0f9c73fb65b973209",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 26,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonSecondEndpoint.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:641a83b36459eaf4fab008afce219c1cb33d23ff0340e8ada2677287f342e3c5",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/ConcreteNewtonSecondEndpoint.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6184059f71120eaab7e6175d570e58a1228883bcfdcd91a1378a632569c7a979`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def secondTrace (j : Fin 9) : GridState :=
  match j.1 with
  | 0 => secondStart
  | 1 => ⟨18343000008558004311, -1406768156894581479, 19⟩
  | 2 => ⟨18132557774432369485, -2797713050156423137, 43⟩
  | 3 => ⟨17399409448605647639, -5500124392200476857, 100⟩
  | 4 => ⟨14771608460644338424, -10375697297665688225, 251⟩
  | 5 => ⟨5992673919043655001, -16617104609340641788, 687⟩
  | 6 => ⟨-13022136803000469870, -10796581662813792057, 1687⟩
  | 7 => ⟨2873670882104466727, 15243293109736801349, 4359⟩
  | _ => ⟨-12148485369300672815, 4749261699712569162, 8565⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ConcreteNewtonSecondEndpoint.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonSecondEndpoint.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b23215f2e315a358d7eb18d0f9c73fb65b973209` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# Constructor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eb4da3f0067c5da9655c78a19b305d46e79cc0ba40577c2387650896966a86d9",
  "kind": "structure",
  "lexical_name": "Constructor",
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
  "slug": "constructor--6324896dfa3d00b8c39b6ce6",
  "source": {
    "blob": "5181f5298833e1ef46fbb120dc5964fbaab72cea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 138,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snapshot/Variant57a2887996e3786d18fd047c63aa8883383eec7180098a4d9a1fc39f8132dec7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6324896dfa3d00b8c39b6ce615d5e6d5177fe7c17749386b877a81ba9ecc517e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snapshot/Variant57a2887996e3786d18fd047c63aa8883383eec7180098a4d9a1fc39f8132dec7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eb4da3f0067c5da9655c78a19b305d46e79cc0ba40577c2387650896966a86d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Constructor where
  /-- Canonical constructor-table identity. -/
  id : ConstructorId
  /-- Required child sorts in argument order. -/
  inputSorts : List SortId
  /-- Sort produced by applying this constructor to its checked children. -/
  outputSort : SortId
  /-- Exact symbol identities of terminals owned locally by the application. -/
  terminalSymbols : List SymbolId
  /-- Ordered interleaving using each declared child and local terminal exactly once. -/
  surface : List SurfaceSlot
  /-- Bounded natural contribution to each primitive-resource valuation coordinate. -/
  primitiveContribution : List ℕ
  deriving DecidableEq, Repr, Inhabited

/-- No field is looked up from a mutable registry during verification. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snapshot/Variant57a2887996e3786d18fd047c63aa8883383eec7180098a4d9a1fc39f8132dec7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snapshot/Variant57a2887996e3786d18fd047c63aa8883383eec7180098a4d9a1fc39f8132dec7.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5181f5298833e1ef46fbb120dc5964fbaab72cea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

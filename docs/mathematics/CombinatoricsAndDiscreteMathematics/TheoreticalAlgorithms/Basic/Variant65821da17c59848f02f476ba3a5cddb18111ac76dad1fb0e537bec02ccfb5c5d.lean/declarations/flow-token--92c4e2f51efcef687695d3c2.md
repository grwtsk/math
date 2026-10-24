# Flow.Token

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5a8569325c61367b87d0e36a03b482654f2f854fbe491bda2ee830033114f673",
  "kind": "inductive",
  "lexical_name": "Flow.Token",
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
  "slug": "flow-token--92c4e2f51efcef687695d3c2",
  "source": {
    "blob": "ff765cd438db478170602639cbeda7af5d1d07b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 140,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant65821da17c59848f02f476ba3a5cddb18111ac76dad1fb0e537bec02ccfb5c5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:92c4e2f51efcef687695d3c243832627b38a94f1d9c836d4343829f62ff9d601",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant65821da17c59848f02f476ba3a5cddb18111ac76dad1fb0e537bec02ccfb5c5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5a8569325c61367b87d0e36a03b482654f2f854fbe491bda2ee830033114f673`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive Flow.Token (α : Type u) : Type u where
  | atom : α → Flow.Token α
  | nat : Nat → Flow.Token α
  | int : Int → Flow.Token α
  | symbol : String → Flow.Token α
  | beginVariadic : Flow.VariadicOp → Flow.Token α
  | beginExp : Flow.HeatResidue → Flow.Token α
  | beginAction :
      Flow.BinaryAction →
      Flow.HeatResidue →
      Flow.Token α
  | beginAttention : Flow.Tag → Flow.Token α
  | endNode : Flow.Token α
deriving Repr

mutual

/-- Serialize a symbolic flow tree into Cambridge-style variadic Polish tokens. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant65821da17c59848f02f476ba3a5cddb18111ac76dad1fb0e537bec02ccfb5c5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant65821da17c59848f02f476ba3a5cddb18111ac76dad1fb0e537bec02ccfb5c5d.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff765cd438db478170602639cbeda7af5d1d07b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

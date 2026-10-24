# Flow.Expression

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a8fc1bf7e1af80bb138c6d6f89184951f7450e6ec5f664888efd2cf2be14e14c",
  "kind": "inductive",
  "lexical_name": "Flow.Expression",
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
  "slug": "flow-expression--de22adaad72b3261900af567",
  "source": {
    "blob": "ff765cd438db478170602639cbeda7af5d1d07b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 113,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant65821da17c59848f02f476ba3a5cddb18111ac76dad1fb0e537bec02ccfb5c5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:de22adaad72b3261900af567ffe12486e01c165052d9cd897ebc54089593ebaa",
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

Occurrence: `declaration:a8fc1bf7e1af80bb138c6d6f89184951f7450e6ec5f664888efd2cf2be14e14c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive Flow.Expression (α : Type u) : Type u where
  | atom : α → Flow.Expression α
  | nat : Nat → Flow.Expression α
  | int : Int → Flow.Expression α
  | symbol : String → Flow.Expression α
  | variadic :
      Flow.VariadicOp →
      List (Flow.Expression α) →
      Flow.Expression α
  | expBase :
      (base : Flow.Expression α) →
      (exponent : Flow.Expression α) →
      Flow.HeatResidue →
      Flow.Expression α
  | binaryAction :
      Flow.BinaryAction →
      Flow.Expression α →
      Flow.Expression α →
      Flow.HeatResidue →
      Flow.Expression α
  | attend :
      Flow.Tag →
      Flow.Expression α →
      Flow.Expression α
deriving Repr

/-- A compact token stream for Cambridge-style flow notation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant65821da17c59848f02f476ba3a5cddb18111ac76dad1fb0e537bec02ccfb5c5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant65821da17c59848f02f476ba3a5cddb18111ac76dad1fb0e537bec02ccfb5c5d.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff765cd438db478170602639cbeda7af5d1d07b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

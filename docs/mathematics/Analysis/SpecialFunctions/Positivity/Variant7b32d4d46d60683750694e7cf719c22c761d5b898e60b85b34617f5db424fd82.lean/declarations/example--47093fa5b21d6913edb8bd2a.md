# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1a809721dc517b3999f6e1913a902fa2b6b8ffd241a7fe2cbe7eee1408e708ba",
  "kind": "example",
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
  "slug": "example--47093fa5b21d6913edb8bd2a",
  "source": {
    "blob": "f166433cfc712040c5499de754050a163914e1e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 352,
    "line": 344,
    "path": "GRWTSK/Analysis/SpecialFunctions/Positivity/Variant7b32d4d46d60683750694e7cf719c22c761d5b898e60b85b34617f5db424fd82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:47093fa5b21d6913edb8bd2aa57bf1fde247d07205bd8b5cda607bc05ae91bb3",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Positivity/Variant7b32d4d46d60683750694e7cf719c22c761d5b898e60b85b34617f5db424fd82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1a809721dc517b3999f6e1913a902fa2b6b8ffd241a7fe2cbe7eee1408e708ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 344–352.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example {a : ℤ} (ha : a > 0) : a ≥ 0 := by positivity

/-
## Test for meta-variable instantiation

Reported on
https://leanprover.zulipchat.com/#narrow/stream/239415-metaprogramming-.2F-tactics/topic/New.20tactic.3A.20.60positivity.60/near/300639970
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Positivity/Variant7b32d4d46d60683750694e7cf719c22c761d5b898e60b85b34617f5db424fd82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Positivity/Variant7b32d4d46d60683750694e7cf719c22c761d5b898e60b85b34617f5db424fd82.lean#L344).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f166433cfc712040c5499de754050a163914e1e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

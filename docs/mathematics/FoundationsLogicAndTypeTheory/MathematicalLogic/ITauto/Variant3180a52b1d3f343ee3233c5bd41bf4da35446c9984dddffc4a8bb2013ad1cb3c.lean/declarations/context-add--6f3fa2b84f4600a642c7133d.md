# Context.add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b71f760094569b56e1fc76e81dc4ece3f3f7c08b919cd473b57b03a9c0d3b673",
  "kind": "def",
  "lexical_name": "Context.add",
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
  "slug": "context-add--6f3fa2b84f4600a642c7133d",
  "source": {
    "blob": "280c69c2cef616140db42a88d01bf0dfe0d92900",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 377,
    "line": 357,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6f3fa2b84f4600a642c7133d27b2b09415f5110939bcab41e97b46e8032411e3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b71f760094569b56e1fc76e81dc4ece3f3f7c08b919cd473b57b03a9c0d3b673`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 357–377.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def Context.add : IProp → Proof → Context → Except (IProp → Proof) Context
  | .true, _, Γ => pure Γ
  | .false, p, _ => throw fun A => .exfalso A p
  | .and' ak A B, p, Γ => do
    let (A, B) := ak.sides A B
    let Γ ← Γ.add A (p.andLeft ak)
    Γ.add B (p.andRight ak)
  | .imp .false _, _, Γ => pure Γ
  | .imp .true A, p, Γ => Γ.add A (p.app .triv)
  | .imp (.and' ak A B) C, p, Γ =>
    let (A, B) := ak.sides A B
    Γ.add (A.imp (B.imp C)) (p.curry ak)
  | .imp (.or A B) C, p, Γ => do
    let Γ ← Γ.add (A.imp C) p.orImpL
    Γ.add (B.imp C) p.orImpR
  | .imp _ .true, _, Γ => pure Γ
  | A, p, Γ => pure (Γ.insert A p)

/-- Add `A` to the context `Γ` with proof `p`. This version of `Context.add` takes a continuation
and a target proposition `B`, so that in the case that `⊥` is found we can skip the continuation
and just prove `B` outright. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant3180a52b1d3f343ee3233c5bd41bf4da35446c9984dddffc4a8bb2013ad1cb3c.lean#L357).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `280c69c2cef616140db42a88d01bf0dfe0d92900` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

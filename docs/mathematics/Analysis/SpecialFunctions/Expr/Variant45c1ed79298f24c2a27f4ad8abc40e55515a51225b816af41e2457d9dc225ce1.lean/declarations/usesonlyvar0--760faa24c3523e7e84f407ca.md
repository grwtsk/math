# usesOnlyVar0

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cc65dd640170e0279d6b7ae0f254bbacf0928e23fca4c37559df8464e2467809",
  "kind": "def",
  "lexical_name": "usesOnlyVar0",
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
  "slug": "usesonlyvar0--760faa24c3523e7e84f407ca",
  "source": {
    "blob": "bbbeabf31f259c64b9edcd689d9547d1922b82a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 639,
    "line": 617,
    "path": "GRWTSK/Analysis/SpecialFunctions/Expr/Variant45c1ed79298f24c2a27f4ad8abc40e55515a51225b816af41e2457d9dc225ce1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:760faa24c3523e7e84f407caf4b38a14b2dde27ae87186c10b7a6154bb5ec01b",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Expr/Variant45c1ed79298f24c2a27f4ad8abc40e55515a51225b816af41e2457d9dc225ce1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cc65dd640170e0279d6b7ae0f254bbacf0928e23fca4c37559df8464e2467809`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 617–639.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def usesOnlyVar0 : Expr → Bool
  | const _ => true
  | var n => n == 0
  | add e₁ e₂ => e₁.usesOnlyVar0 && e₂.usesOnlyVar0
  | mul e₁ e₂ => e₁.usesOnlyVar0 && e₂.usesOnlyVar0
  | neg e => e.usesOnlyVar0
  | inv e => e.usesOnlyVar0
  | exp e => e.usesOnlyVar0
  | sin e => e.usesOnlyVar0
  | cos e => e.usesOnlyVar0
  | log e => e.usesOnlyVar0
  | atan e => e.usesOnlyVar0
  | arsinh e => e.usesOnlyVar0
  | atanh e => e.usesOnlyVar0
  | sinc e => e.usesOnlyVar0
  | erf e => e.usesOnlyVar0
  | sinh e => e.usesOnlyVar0
  | cosh e => e.usesOnlyVar0
  | tanh e => e.usesOnlyVar0
  | sqrt e => e.usesOnlyVar0
  | namedConst _ => true

/-- If two environments agree on variable 0, then a usesOnlyVar0 expression evaluates the same -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Expr/Variant45c1ed79298f24c2a27f4ad8abc40e55515a51225b816af41e2457d9dc225ce1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Expr/Variant45c1ed79298f24c2a27f4ad8abc40e55515a51225b816af41e2457d9dc225ce1.lean#L617).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbbeabf31f259c64b9edcd689d9547d1922b82a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

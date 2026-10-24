# opOrderIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1a7d3c1b590eeefc4bfec7a10c3aaec868a5af123a1335829ed7b48e15173adf",
  "kind": "def",
  "lexical_name": "opOrderIso",
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
  "slug": "oporderiso--751de40b468ec1d9ed4f4f3b",
  "source": {
    "blob": "63018aadab33de8bcc38b68918cbc9fac9d28e30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 46,
    "path": "GRWTSK/Algebra/GroupTheory/Opposite/Variant767e70348b9d3cb257985532955ac2581be5c5be78e04f9871ca200db80789f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:751de40b468ec1d9ed4f4f3b34dc105f12bb6fae6f6b975dc9a97fe4eba5e2a2",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Opposite/Variant767e70348b9d3cb257985532955ac2581be5c5be78e04f9871ca200db80789f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1a7d3c1b590eeefc4bfec7a10c3aaec868a5af123a1335829ed7b48e15173adf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def opOrderIso : RingCon R ≃o RingCon Rᵐᵒᵖ where
  toFun := op
  invFun := unop
  left_inv _ := rfl
  right_inv _ := rfl
  map_rel_iff' {c d} := by rw [le_def, le_def]; constructor <;> intro h _ _ h' <;> exact h h'

end RingCon
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Opposite/Variant767e70348b9d3cb257985532955ac2581be5c5be78e04f9871ca200db80789f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Opposite/Variant767e70348b9d3cb257985532955ac2581be5c5be78e04f9871ca200db80789f1.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63018aadab33de8bcc38b68918cbc9fac9d28e30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

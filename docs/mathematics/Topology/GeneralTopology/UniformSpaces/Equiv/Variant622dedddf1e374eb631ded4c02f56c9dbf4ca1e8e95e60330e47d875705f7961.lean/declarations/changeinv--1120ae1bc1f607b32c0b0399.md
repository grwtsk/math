# changeInv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8a8fbb2e2539074c8741795f408ab33b6faa74c4920ba1ebe6f6e83ad96ef824",
  "kind": "def",
  "lexical_name": "changeInv",
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
  "slug": "changeinv--1120ae1bc1f607b32c0b0399",
  "source": {
    "blob": "6b6f4a62f2cf2df8a5f456887d738d8ac14ede73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 192,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1120ae1bc1f607b32c0b039979e3721f43b94f206a26bdbad10fa85c5da087c0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8a8fbb2e2539074c8741795f408ab33b6faa74c4920ba1ebe6f6e83ad96ef824`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def changeInv (f : α ≃ᵤ β) (g : β → α) (hg : Function.RightInverse g f) : α ≃ᵤ β :=
  have : g = f.symm :=
    funext fun x => calc
      g x = f.symm (f (g x)) := (f.left_inv (g x)).symm
      _ = f.symm x := by rw [hg x]
  { toFun := f
    invFun := g
    left_inv := by convert f.left_inv
    right_inv := by convert f.right_inv using 1
    uniformContinuous_toFun := f.uniformContinuous
    uniformContinuous_invFun := by convert f.symm.uniformContinuous }
#align uniform_equiv.change_inv UniformEquiv.changeInv

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622dedddf1e374eb631ded4c02f56c9dbf4ca1e8e95e60330e47d875705f7961.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b6f4a62f2cf2df8a5f456887d738d8ac14ede73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

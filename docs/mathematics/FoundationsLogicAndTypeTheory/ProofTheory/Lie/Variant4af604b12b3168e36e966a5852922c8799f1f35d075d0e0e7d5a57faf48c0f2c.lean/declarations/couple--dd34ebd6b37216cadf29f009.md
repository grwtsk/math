# couple

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:add1f7a4735527c1e34f7ccba47b79eae8a82d52edcb61d36fa82e4fd54d495b",
  "kind": "def",
  "lexical_name": "couple",
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
  "slug": "couple--dd34ebd6b37216cadf29f009",
  "source": {
    "blob": "a519450c3e9e72b68dbbb3b4f536ec306e57f029",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 90,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Lie/Variant4af604b12b3168e36e966a5852922c8799f1f35d075d0e0e7d5a57faf48c0f2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd34ebd6b37216cadf29f0099094954b349dc238e97ec129e1dadd16ffde2a62",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/Lie/Variant4af604b12b3168e36e966a5852922c8799f1f35d075d0e0e7d5a57faf48c0f2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:add1f7a4735527c1e34f7ccba47b79eae8a82d52edcb61d36fa82e4fd54d495b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def couple : LieSubalgebra R (Derivation R A' A' × Derivation R A A) where
  carrier := { x | x.fst.compAlgebraMapL R A A' A' = (Algebra.ofId A A').toLinearMap.compDer x.snd }
  add_mem' := by simp_all
  zero_mem' := by simp
  smul_mem' := by simp_all
  lie_mem' {x y} hx hy := by
    have hxx (a : A) := congrArg (fun f => f a) hx
    have hyy (a : A) := congrArg (fun f => f a) hy
    ext z
    simp at hxx hyy
    simp [Derivation.commutator_apply, hxx, hyy]

namespace Compatible
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/Lie/Variant4af604b12b3168e36e966a5852922c8799f1f35d075d0e0e7d5a57faf48c0f2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Lie/Variant4af604b12b3168e36e966a5852922c8799f1f35d075d0e0e7d5a57faf48c0f2c.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a519450c3e9e72b68dbbb3b4f536ec306e57f029` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

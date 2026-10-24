# SingleShefferAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4e6c38b35e97326c5dc18359c04e23bc8af7521724607f22a954aa34142de327",
  "kind": "class",
  "lexical_name": "SingleShefferAlgebra",
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
  "slug": "singleshefferalgebra--fc8eb87c3164c814a4c40b8f",
  "source": {
    "blob": "559f7a0d4929b8ade2eb002bb76cb082ca909715",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 203,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinimalSheffer/Variantb51e86cc118e2c89245018427174a6de7d05cb30aa9503b4ec5ec1fdc89c7b2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fc8eb87c3164c814a4c40b8f3dc026175016580c89a929a2d104ca36e7238a73",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinimalSheffer/Variantb51e86cc118e2c89245018427174a6de7d05cb30aa9503b4ec5ec1fdc89c7b2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4e6c38b35e97326c5dc18359c04e23bc8af7521724607f22a954aa34142de327`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class SingleShefferAlgebra (α : Type*) extends Inhabited α where
  /-- The Sheffer stroke function -/
  f : α → α → α
  /-- The single axiom of this algebra -/
  rule (a b c : α) : f (f a (f (f b a) a)) (f b (f c a)) = b

@[inherit_doc] scoped[SingleShefferAlgebra] infixl:70 " | " => SingleShefferAlgebra.f

variable {α : Type*}

/-- Derive a `SingleShefferAlgebra` from a Boolean algebra. -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinimalSheffer/Variantb51e86cc118e2c89245018427174a6de7d05cb30aa9503b4ec5ec1fdc89c7b2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MinimalSheffer/Variantb51e86cc118e2c89245018427174a6de7d05cb30aa9503b4ec5ec1fdc89c7b2e.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `559f7a0d4929b8ade2eb002bb76cb082ca909715` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

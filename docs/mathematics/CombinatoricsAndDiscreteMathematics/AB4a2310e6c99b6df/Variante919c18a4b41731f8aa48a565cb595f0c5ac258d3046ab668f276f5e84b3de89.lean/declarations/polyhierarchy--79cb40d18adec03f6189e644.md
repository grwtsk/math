# PolyHierarchy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:58e09aa2fb8497e21c447c9e727f6cc4e59d8f470b626df5c2580a17c5260ffd",
  "kind": "structure",
  "lexical_name": "PolyHierarchy",
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
  "slug": "polyhierarchy--79cb40d18adec03f6189e644",
  "source": {
    "blob": "80d846fc0f8f897a3c71569c422b605b0064bf3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 23,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AB4a2310e6c99b6df/Variante919c18a4b41731f8aa48a565cb595f0c5ac258d3046ab668f276f5e84b3de89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:79cb40d18adec03f6189e644ac084f76ea1fef72053d7826e45862753c07e6ce",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/AB4a2310e6c99b6df/Variante919c18a4b41731f8aa48a565cb595f0c5ac258d3046ab668f276f5e84b3de89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:58e09aa2fb8497e21c447c9e727f6cc4e59d8f470b626df5c2580a17c5260ffd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PolyHierarchy (signature : StructuralSignature) where
  Element : Type w
  elementFintype : Fintype Element
  elementDecidableEq : DecidableEq Element
  elementSort : Element → signature.SortType
  isNode : Element → Prop
  isNodeDecidable : DecidablePred isNode
  fact :
    FactAuthority →
      (relation : signature.Relation) →
      (Fin (signature.arity relation) → Element) →
      Prop
  factDecidable :
    ∀ authority relation arguments,
      Decidable (fact authority relation arguments)
  projectionLawVersion : Nat
  normalized : projectionLawVersion = signature.version

attribute [instance] PolyHierarchy.elementFintype
  PolyHierarchy.elementDecidableEq
  PolyHierarchy.isNodeDecidable
  PolyHierarchy.factDecidable

/-- A proposal is deliberately outside the admitted fact cascade. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/AB4a2310e6c99b6df/Variante919c18a4b41731f8aa48a565cb595f0c5ac258d3046ab668f276f5e84b3de89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/AB4a2310e6c99b6df/Variante919c18a4b41731f8aa48a565cb595f0c5ac258d3046ab668f276f5e84b3de89.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80d846fc0f8f897a3c71569c422b605b0064bf3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
